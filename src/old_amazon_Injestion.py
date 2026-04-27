# THIS file was made for an old dataset before i found a better one
import csv
import types
from typing import Any, cast, get_args
import psycopg
from dataclasses import dataclass,asdict,astuple, fields
import secrets

@dataclass
class full_listing:
    Uniq_Id: str
    Crawl_Timestamp: str | None
    Pageurl: str | None
    Website: str | None # (always, amazon.com???)
    Title: str | None
    Num_Of_Reviews: int | None
    Average_Rating: float | None
    Number_Of_Ratings: int | None
    Model_Num: str | None
    Sku: str | None
    Upc: str | None
    Manufacturer: str | None
    Model_Name: str | None
    Price: float | None
    Monthly_Price: float | None
    Stock: bool | None
    Carrier: str | None
    Color_Category: str | None
    Internal_Memory: str | None
    Screen_Size: str | None
    Specifications: str | None
    Five_Star: int | None
    Four_Star: int | None
    Three_Star: int | None
    Two_Star: int | None
    One_Star: int | None
    Discontinued: bool | None
    Broken_Link: bool | None
    
    def as_dict(self) -> dict:
        return asdict(self)
    def as_tuple(self) -> tuple:
        return astuple(self)
    @classmethod
    def from_list(cls, row: list) -> "full_listing":
        sanitized = {}
        header_tuple = fields(cls)
        for field_no, field_def in enumerate(header_tuple):
            val = row[field_no]

            # handel most null values
            if val is None or val == "" or str(val).upper() == "NA":
                sanitized[field_def.name] = None
                continue
            # handel complex types
            field_type = field_def.type
            if isinstance(field_type, (types.UnionType, types.GenericAlias)):
                args = [arg for arg in get_args(field_type) if arg is not type(None)]
                target_type = args[0] if args else type[str]
            else:
                target_type = field_type
            
            try:
                if target_type in (float, int) and isinstance(val, str):
                    # Remove currency symbols and commas
                    val = val.replace('$', '').replace(',', '').strip()
                    # Handle percentage signs (common in Seller_Rating like '98.6%')
                    if '%' in val:
                        val = val.replace('%', '')
                # Handle boolean strings specifically if needed
                if target_type is bool:
                    sanitized[field_def.name] = str(val).lower() in ("true", "1", "yes")
                else:
                    sanitized[field_def.name] = target_type(val) # type: ignore
            except (ValueError, TypeError):
                # Fallback to None or original value if casting fails
                sanitized[field_def.name] = None
        return cls(**sanitized)

@dataclass
class distilled_listing:
    Uniq_Id: str
    Title: str
    Price: float
    Average_Rating: float 
    Number_Of_Ratings: int 
    Five_Star: int  
    Four_Star: int 
    Three_Star: int 
    Two_Star: int 
    One_Star: int 
    Model_Name: str 
    Upc: str | None = None
    Model_Num: str | None = None
    Num_Of_Reviews: int | None = None
    Sku: str | None = None
    Manufacturer: str | None = None
    def as_dict(self) -> dict:
        return asdict(self)
    @classmethod
    def from_dict(cls, dict: dict[str,Any]) -> "distilled_listing":
        sanitized = {}
        for field in fields(cls):
            val = dict.get(field.name)
            if val is not None:
                sanitized[field.name] = val
        return cls(**sanitized)
    @classmethod
    def sanitize_dict(cls, dict: dict[str,Any]) -> dict:
        sanitized = {}
        for field in fields(cls):
            val = dict.get(field.name)
            if val is not None:
                sanitized[field.name] = val
        return sanitized



def load_data(conn:psycopg.connection.Connection):
    csv_file = open("data/marketing_sample_for_amazon.csv")
    reader = csv.reader(csv_file)
    next(reader) # skip first line
    with conn.cursor() as cur:
        # drop all relevent tables
        cur.execute("""
            DROP TABLE IF EXISTS sources.amazon_data;
            DROP TABLE IF EXISTS sources.incorect_data;
        """)
        cur.execute("""
            CREATE TABLE IF NOT EXISTS sources.amazon_data (
                Uniq_Id TEXT PRIMARY KEY,
                Crawl_Timestamp TEXT,
                Pageurl TEXT,
                Website TEXT,
                Title TEXT,
                Num_Of_Reviews TEXT,
                Average_Rating TEXT,
                Number_Of_Ratings TEXT,
                Model_Num TEXT,
                Sku TEXT,
                Upc TEXT,
                Manufacturer TEXT,
                Model_Name TEXT,
                Price TEXT,
                Monthly_Price TEXT,
                Stock TEXT,
                Carrier TEXT,
                Color_Category TEXT,
                Internal_Memory TEXT,
                Screen_Size TEXT,
                Specifications TEXT,
                Five_Star TEXT,
                Four_Star TEXT,
                Three_Star TEXT,
                Two_Star TEXT,
                One_Star TEXT,
                Discontinued TEXT,
                Broken_Link TEXT
            );
            """)
        cur.execute("""
            CREATE TABLE IF NOT EXISTS sources.incorect_data (
                Uniq_Id TEXT PRIMARY KEY,
                Crawl_Timestamp TEXT,
                Pageurl TEXT,
                Website TEXT,
                Title TEXT,
                Num_Of_Reviews TEXT,
                Average_Rating TEXT,
                Number_Of_Ratings TEXT,
                Model_Num TEXT,
                Sku TEXT,
                Upc TEXT,
                Manufacturer TEXT,
                Model_Name TEXT,
                Price TEXT,
                Monthly_Price TEXT,
                Stock TEXT,
                Carrier TEXT,
                Color_Category TEXT,
                Internal_Memory TEXT,
                Screen_Size TEXT,
                Specifications TEXT,
                Five_Star TEXT,
                Four_Star TEXT,
                Three_Star TEXT,
                Two_Star TEXT,
                One_Star TEXT,
                Discontinued TEXT,
                Broken_Link TEXT
            );
            """)
        for line in reader:
            cur.execute(
                "INSERT INTO sources.amazon_data (Uniq_Id,Crawl_Timestamp,Pageurl,Website,Title,Num_Of_Reviews,Average_Rating,Number_Of_Ratings,Model_Num,Sku,Upc,Manufacturer,Model_Name,Price,Monthly_Price,Stock,Carrier,Color_Category,Internal_Memory,Screen_Size,Specifications,Five_Star,Four_Star,Three_Star,Two_Star,One_Star,Discontinued,Broken_Link) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)",
                line[:28]
            )

def inject_approved_default_values(listing:full_listing) -> full_listing:
    listing.Num_Of_Reviews = listing.Num_Of_Reviews or 0
    listing.Five_Star = listing.Five_Star or 0
    listing.Four_Star = listing.Four_Star or 0
    listing.Three_Star = listing.Three_Star or 0
    listing.Two_Star = listing.Two_Star or 0
    listing.One_Star = listing.One_Star or 0
    listing.Number_Of_Ratings = listing.Number_Of_Ratings or sum([listing.Five_Star,listing.Four_Star,listing.Three_Star,listing.Two_Star,listing.One_Star])
    listing.Average_Rating = listing.Average_Rating or (sum([listing.Five_Star*5,listing.Four_Star*4,listing.Three_Star*3,listing.Two_Star*2,listing.One_Star])/listing.Number_Of_Ratings if listing.Number_Of_Ratings != 0 else 0)
    return listing


def clean_data(conn:psycopg.connection.Connection)-> dict[str, distilled_listing]:
    known_ids:dict[str,distilled_listing] = {}
    with conn.cursor() as cur:
        cur.execute("SELECT * FROM sources.amazon_data")
        for raw_row in cur.fetchall():
            # step 1. translate into a full listing
            try:
                big_listing = full_listing.from_list(list(raw_row))
            except:
                print("Listing with null Unique id???")
                continue
            
            # step 2, fix the nones we have good replacements for
            big_listing = inject_approved_default_values(big_listing)

            # step 3, distill into small listing
            try:
                distilled = distilled_listing.from_dict(big_listing.as_dict())
            except Exception as e: 
                # This data is incomplete. put in incorrect table
                #print(e)
                process_incorect_data(raw_row, conn)
                continue

            # step 4, handle duplicates, set new unique id
            if distilled.Uniq_Id not in known_ids:
                known_ids[distilled.Uniq_Id] = distilled
            else:
                # duplicate Uniq_Id
                print("duplicate id")
                new_id = secrets.token_hex(16) # the odds of a second colision are so low it will never relisticaly happpen
                distilled.Uniq_Id = new_id
                known_ids[distilled.Uniq_Id] = distilled
    return known_ids

def process_incorect_data(incorect_data_row:tuple, conn:psycopg.connection.Connection):
     with conn.cursor() as cur:
        cur.execute(
            "INSERT INTO sources.incorect_data (Uniq_Id,Crawl_Timestamp,Pageurl,Website,Title,Num_Of_Reviews,Average_Rating,Number_Of_Ratings,Model_Num,Sku,Upc,Manufacturer,Model_Name,Price,Monthly_Price,Stock,Carrier,Color_Category,Internal_Memory,Screen_Size,Specifications,Five_Star,Four_Star,Three_Star,Two_Star,One_Star,Discontinued,Broken_Link) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)",
            incorect_data_row[:28]
        )

def normilize_data(clean_data: dict[str,distilled_listing],conn:psycopg.connection.Connection):
    with conn.cursor() as cur:
        # drop tables
        cur.execute("""
            DROP TABLE IF EXISTS staging.product;
            DROP TABLE IF EXISTS staging.listing;
        """)
        
        # set up normilized tables
        cur.execute("""
            CREATE TABLE IF NOT EXISTS staging.product (
            Product_ID SERIAL PRIMARY KEY,
            Model_Name TEXT NOT NULL,
            Model_Num TEXT,
            Sku TEXT,
            Upc TEXT ,
            Manufacturer TEXT
        );
        """)

        cur.execute("""
            CREATE TABLE IF NOT EXISTS staging.listing (
            Uniq_Id TEXT PRIMARY KEY,
            Title TEXT NOT NULL,
            Num_Of_Reviews INTEGER NOT NULL,
            Average_Rating REAL NOT NULL,
            Number_Of_Ratings INTEGER NOT NULL,
            Product_ID INTEGER NOT NULL, 
            Price REAL NOT NULL,
            Five_Star INTEGER NOT NULL,
            Four_Star INTEGER NOT NULL,
            Three_Star INTEGER NOT NULL,
            Two_Star INTEGER NOT NULL,
            One_Star INTEGER NOT NULL
        );
        """)

        # 2 tables
        # product, listing
        
        product_keys:dict[str, int] = {}
        for listing in clean_data.values():
            # get id
            if listing.Model_Name not in product_keys: # also builds prod
                print("product",len(product_keys),"id",listing.Model_Name)
                product_keys[listing.Model_Name] = len(product_keys)
                cur.execute(
                    "INSERT INTO staging.product (Product_ID, Model_Num, Sku, Upc, Manufacturer, Model_Name) VALUES (%s,%s,%s,%s,%s,%s)",
                    (product_keys[listing.Model_Name],listing.Model_Num, listing.Sku, listing.Upc, listing.Manufacturer, listing.Model_Name)
                )
            prod_id = product_keys[listing.Model_Name]

            #build listing
            listing_data = [
                listing.Uniq_Id, 
                listing.Title, 
                listing.Num_Of_Reviews, 
                listing.Average_Rating, 
                listing.Number_Of_Ratings, 
                prod_id, 
                listing.Price, 
                listing.Five_Star, 
                listing.Four_Star, 
                listing.Three_Star, 
                listing.Two_Star, 
                listing.One_Star, 
            ]

            cur.execute(
                """
                INSERT INTO staging.listing (
                    uniq_id, title, num_of_reviews, average_rating, number_of_ratings, 
                    product_id, price, 
                    five_star, four_star, three_star, two_star, one_star
                ) 
                VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
                """,
                listing_data
            )


def run_injestion():
    post_pass = open("secrets.txt").readline()
    with psycopg.connect(
        conninfo=f"dbname=Pipeline user=postgres password={post_pass} host=localhost port=5432"
    ) as conn:
        print("Connected")

        # load data
        load_data(conn)
        print("data Loaded")

        # now clean that data
        clean = clean_data(conn)
        print("data Cleaned")

        # now nomilize the data
        normilize_data(clean,conn)
        print("data Normilized")

        conn.commit()
        conn.close()