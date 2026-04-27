import csv
import types
from typing import Any, cast, get_args
import psycopg
from dataclasses import dataclass,asdict,astuple, fields
import secrets


@dataclass
class full_product_raw:
    asin: str | None
    title: str | None
    imgUrl: str | None
    productURL: str | None
    stars: str | None
    reviews: str | None
    price: str | None
    listPrice: str | None
    category_id: str | None
    isBestSeller: str | None
    boughtInLastMonth: str | None

    @classmethod
    def from_list(cls, row: list) -> "full_product_raw":
        # Follows your original logic: map row to fields, handle "NA" or empty as None
        sanitized = {}
        header_tuple = fields(cls)
        for field_no, field_def in enumerate(header_tuple):
            val = row[field_no] if field_no < len(row) else None
            if val is None or str(val).strip() == "" or str(val).upper() == "NA":
                sanitized[field_def.name] = None
            else:
                sanitized[field_def.name] = str(val)
        return cls(**sanitized)

@dataclass
class distilled_product:
    asin: str
    title: str
    stars: float
    reviews: int
    price: float
    listPrice: float
    category_id: int
    isBestSeller: bool


def load_data(conn: psycopg.connection.Connection):
    with conn.cursor() as cur:
        cur.execute("DROP TABLE IF EXISTS sources.raw_amazon_products;")
        cur.execute("DROP TABLE IF EXISTS sources.raw_amazon_categories;")
        cur.execute("DROP TABLE IF EXISTS sources.invalid_rows;")
        
        cur.execute("""
            CREATE TABLE sources.raw_amazon_categories (id TEXT, category_name TEXT);
            CREATE TABLE sources.raw_amazon_products (
                asin TEXT, title TEXT, imgUrl TEXT, productURL TEXT, stars TEXT, 
                reviews TEXT, price TEXT, listPrice TEXT, category_id TEXT, 
                isBestSeller TEXT, boughtInLastMonth TEXT
            );
            CREATE TABLE sources.invalid_rows (
                asin TEXT, title TEXT, imgUrl TEXT, productURL TEXT, stars TEXT, 
                reviews TEXT, price TEXT, listPrice TEXT, category_id TEXT, 
                isBestSeller TEXT, boughtInLastMonth TEXT
            );
        """)

        # Load Categories
        with open("data/amazon_categories.csv", 'r') as f:
            reader = csv.reader(f)
            next(reader)
            for row in reader:
                cur.execute("INSERT INTO sources.raw_amazon_categories VALUES (%s, %s)", row)

        # Load Products
        with open("data/amazon_products.csv", 'r') as f:
            reader = csv.reader(f)
            next(reader)
            for row in reader:
                cur.execute("INSERT INTO sources.raw_amazon_products VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)", row)

def process_incorect_data(incorect_data_row:tuple, conn:psycopg.connection.Connection):
     with conn.cursor() as cur:
        cur.execute("INSERT INTO sources.invalid_rows VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)", incorect_data_row)

def clean_data(conn: psycopg.connection.Connection) -> list[distilled_product]:
    cleaned_products = []
    with conn.cursor() as cur:
        cur.execute("SELECT * FROM sources.raw_amazon_products")
        for raw_row in cur.fetchall():
            raw_obj = full_product_raw.from_list(list(raw_row))
            
            try:
                # Manual casting/cleaning logic
                clean_item = distilled_product(
                    asin = str(raw_obj.asin),
                    title = str(raw_obj.title),
                    stars = float(raw_obj.stars), # type: ignore
                    reviews = int(raw_obj.reviews), # type: ignore
                    price = float(str(raw_obj.price).replace('$', '').replace(',', '')),
                    listPrice=float(str(raw_obj.listPrice).replace('$', '').replace(',', '')),
                    category_id = int(raw_obj.category_id), # type: ignore
                    isBestSeller = str(raw_obj.isBestSeller).lower() in ("true", "1", "yes")
                )
                cleaned_products.append(clean_item)
            except (ValueError, TypeError) as e:
                print("Distill Error:", e) # note, this printed nothing
                process_incorect_data(raw_row,conn)
                continue
    return cleaned_products

def normalize_data(products: list[distilled_product], conn: psycopg.connection.Connection):
    with conn.cursor() as cur:
        cur.execute("DROP TABLE IF EXISTS staging.products CASCADE;")
        cur.execute("DROP TABLE IF EXISTS staging.categories CASCADE;")

        cur.execute("""
            CREATE TABLE staging.categories (
                category_id INTEGER PRIMARY KEY,
                name TEXT NOT NULL
            );
            CREATE TABLE staging.products (
                asin TEXT PRIMARY KEY,
                title TEXT NOT NULL, 
                stars REAL NOT NULL,
                reviews INTEGER NOT NULL,
                price REAL NOT NULL,
                listPrice REAL NOT NULL,
                category_id INTEGER REFERENCES staging.categories(category_id),
                isBestSeller BOOLEAN NOT NULL
            );
        """)

        # Sync categories from raw to staging
        cur.execute("""
            INSERT INTO staging.categories (category_id, name)
            SELECT 
                id::integer, 
                category_name 
            FROM sources.raw_amazon_categories
            WHERE category_name IS NOT NULL 
              AND category_name <> ''
              AND id IS NOT NULL;
        """)

        # Insert cleaned products
        for p in products:
            cur.execute("""
                INSERT INTO staging.products (asin, title, stars, reviews, price, listPrice, category_id, isBestSeller)
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
            """, (p.asin, p.title, p.stars, p.reviews, p.price, p.listPrice, p.category_id, p.isBestSeller))

def run_ingestion():
    post_pass = open("secrets.txt").readline().strip()
    conn_str = f"dbname=Pipeline user=postgres password={post_pass} host=localhost port=5432"
    
    with psycopg.connect(conn_str) as conn:
        print("1/3: Loading Raw Data...")
        load_data(conn)
        
        print("2/3: Cleaning Data...")
        cleaned_list = clean_data(conn)
        
        print("3/3: Normalizing Data...")
        normalize_data(cleaned_list, conn)
        
        conn.commit()
        print("Pipeline Complete.")