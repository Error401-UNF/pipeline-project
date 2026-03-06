import csv
import psycopg
from dataclasses import dataclass,asdict,astuple
import datetime
import random
@dataclass
class dirty_Employee:
    Employee_Id: int | None
    Name: str | None
    Age:int | None
    Department: str | None
    Date_of_Joining: datetime.date | None
    Years_of_Experience: int | None
    Country: str | None
    Salary: float | None
    Performance_Rating: int | None
    Total_Sales: float | None
    Support_Rating: int | None
    def as_dict(self) -> dict:
        return asdict(self)
    def as_tuple(self) -> tuple:
        return astuple(self)

@dataclass
class Employee:
    Employee_Id: int
    Name: str
    Age:int
    Department: str
    Date_of_Joining: datetime.date
    Years_of_Experience: int
    Country: str
    Salary: float
    Performance_Rating: int
    Total_Sales: float
    Support_Rating: int
    def as_dict(self) -> dict:
        return asdict(self)
    def as_tuple(self) -> tuple:
        return astuple(self)

def resolve_duplicate(emp1: Employee, emp2: Employee) -> Employee:
    out = emp1
    # Name
    if "Jane Doe" in (emp1.Name, emp2.Name):
        out.Name = emp1.Name if emp2.Name == "Jane Doe" else emp2.Name
        
    # Age
    if 0 in (emp1.Age, emp2.Age):
        out.Age = emp1.Age if emp2.Age == 0 else emp2.Age
        
    # Department
    if "Development" in (emp1.Department, emp2.Department):
        out.Department = emp1.Department if emp2.Department == "Development" else emp2.Department

    # Date_of_Joining
    if datetime.date.fromisoformat("2020-01-01") in (emp1.Date_of_Joining, emp2.Date_of_Joining):
        out.Date_of_Joining = emp1.Date_of_Joining if emp2.Date_of_Joining == datetime.date.fromisoformat("2020-01-01") else emp2.Date_of_Joining

    # Years_of_Experience
    default = datetime.datetime.now().year - out.Date_of_Joining.year
    if default in (emp1.Years_of_Experience, emp2.Years_of_Experience):
        out.Years_of_Experience = emp1.Years_of_Experience if emp2.Years_of_Experience == default else emp2.Years_of_Experience

    # Country
    if "Utopia" in (emp1.Country, emp2.Country):
        out.Country = emp1.Country if emp2.Country == "Utopia" else emp2.Country

    # Salary
    if 100000 in (emp1.Salary, emp2.Salary):
        out.Salary = emp1.Salary if emp2.Salary == 100000 else emp2.Salary

    # Performance_Rating
    if 0 in (emp1.Performance_Rating, emp2.Performance_Rating):
        out.Performance_Rating = emp1.Performance_Rating if emp2.Performance_Rating == 0 else emp2.Performance_Rating

    # Total_Sales
    if 0 in (emp1.Total_Sales, emp2.Total_Sales):
        out.Total_Sales = emp1.Total_Sales if emp2.Total_Sales == 0 else emp2.Total_Sales

    # Support_Rating
    if 0 in (emp1.Total_Sales, emp2.Total_Sales):
        out.Total_Sales = emp1.Total_Sales if emp2.Total_Sales == 0 else emp2.Total_Sales

    return out

def fix_format(emp: Employee) -> Employee:
    # targeting all string values
    
    # name
    emp.Name = emp.Name.title()

    # department
    match emp.Department.title():
        case "Markting":
            emp.Department = "Marketing"
        case "Mkt":
            emp.Department = "Marketing"
        case "Marketingg":
            emp.Department = "Marketing"
        case "Mktg":
            emp.Department = "Marketing"
        case "Sls":
            emp.Department = "Sales"
        case "Sale":
            emp.Department = "Sales"
        case "Slaes":
            emp.Department = "Sales"
        case "Saless":
            emp.Department = "Sales"
        case "Supprt":
            emp.Department = "Support"
        case "Supp":
            emp.Department = "Support"
        case "Supportt":
            emp.Department = "Support"
        case "Suport":
            emp.Department = "Support"
        case _:
            emp.Department = emp.Department.title()
    
    # Country
    emp.Country = emp.Country.title()

    return emp

def fix_date(date:str) -> str:
    fixed = date.replace("/","-")  # to be added to if need be 
    # make sure year is in right place
    if len(fixed.split("-")[2]) != 2:
        s = fixed.split("-")
        fixed = "-".join([s[2],s[1],s[0]])
    return fixed

def fix_datatype(row: tuple) -> dirty_Employee:
    Employee_Id = abs(int(row[0])) if row[0].isnumeric() and row[0] != "" else None
    Name = row[1] if row[1] != "" else None
    Age = abs(int(row[2])) if row[2].isnumeric() and row[2] != "" else None
    Department = row[3] if row[3] != "" else None
    Date_of_Joining =  datetime.date.fromisoformat(fix_date(row[4])) if row[4] != "" else None
    Years_of_Experience = abs(int(row[5])) if row[5].isnumeric() and row[5] != "" else None
    Country = row[6] if row[6] != "" else None
    Salary = abs(float(row[7])) if row[7].isnumeric() and row[7] != "" else None
    Performance_Rating = abs(int(row[8])) if row[8].isnumeric() and row[8] != "" else None
    Total_Sales = abs(float(row[9])) if row[9].isnumeric() and row[9] != "" else None
    Support_Rating =  abs(int(row[10])) if row[10].isnumeric() and row[10] != "" else None
    return dirty_Employee(Employee_Id,Name,Age,Department,Date_of_Joining,Years_of_Experience,Country,Salary,Performance_Rating,Total_Sales,Support_Rating)

def fix_performance(text: str) -> int:
    match text:
        case "High Performer":
            return 5
        case "Medium":
            return 3
        case "Medium Low":
            return 2
        case "Medium High":
            return 4
        case "Low Performer":
            return 1
        case "":
           return 0
        case x:
           print(f"Unknown performance rating {x}")
           return 0

def get_new_id(known_ids:dict[int,Employee]) -> int:
    while True:
        newid = random.randrange(1000,10000)
        if newid not in known_ids:
            return newid

def fix_missing_data(emp:dirty_Employee, raw_row: tuple) -> Employee:
    # randomize
    Employee_Id = random.randrange(1000,10000) if emp.Employee_Id == None else emp.Employee_Id
    # default to jane doe
    Name = "Jane Doe" if emp.Name == None else emp.Name
    # default to zero 
    Age = 0 if emp.Age == None else emp.Age
    # default to development
    Department = "Development" if emp.Department == None else emp.Department
    # default to start of 2020
    Date_of_Joining = datetime.date.fromisoformat("2020-01-01") if emp.Date_of_Joining == None else emp.Date_of_Joining
    # do the math from date of joining as a default
    Years_of_Experience =  datetime.datetime.now().year - Date_of_Joining.year if emp.Years_of_Experience == None else emp.Years_of_Experience
    # default to Utopia
    Country = "Utopia" if emp.Country == None else emp.Country
    # default to 100k 
    Salary = 100000 if emp.Salary == None else emp.Salary
    # calculate based on sentance description 
    Performance_Rating = fix_performance(raw_row[8]) if emp.Performance_Rating == None else emp.Performance_Rating
    # default to 0 
    Total_Sales = 0 if emp.Total_Sales == None else emp.Total_Sales
    # default to 0 
    Support_Rating = 0 if emp.Support_Rating == None else emp.Support_Rating

    return Employee(Employee_Id,Name,Age,Department,Date_of_Joining,Years_of_Experience,Country,Salary,Performance_Rating,Total_Sales,Support_Rating)

def load_data(conn:psycopg.connection.Connection):
    csv_file = open("data/employee_data.csv")
    reader = csv.reader(csv_file)
    next(reader) # skip first line

    # format Employee Id,Name,Age,Department,Date of Joining,Years of Experience,Country,Salary,Performance Rating,Total Sales,Support Rating
    # *************************************** KNOWN ISSUE ***************************************
    # if table already has data literally everything will be duplicated. 
    with conn.cursor() as cur:
        cur.execute("""
            CREATE TABLE IF NOT EXISTS sources.employees (
                Employee_Id text,
                Name text,
                Age text,
                Department text,
                Date_of_Joining text,
                Years_of_Experience text,
                Country text,
                Salary text,
                Performance_Rating text,
                Total_Sales text,
                Support_Rating text                      
                    )
            """)
        for line in reader:
            cur.execute(
                "INSERT INTO sources.employees (Employee_Id,Name,Age,Department,Date_of_Joining,Years_of_Experience,Country,Salary,Performance_Rating,Total_Sales,Support_Rating) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)",
                line
            )

def clean_data(conn:psycopg.connection.Connection):
    known_ids:dict[int,Employee] = {}
    with conn.cursor() as cur:
        cur.execute("SELECT * FROM sources.employees")
        for raw_row in cur.fetchall():
            # step 1, clean data type. Also standerdises formats
            raw_emp = fix_datatype(raw_row)

            # step 2, Handle missing values
            clean_emp = fix_missing_data(raw_emp, raw_row)

            # step 3, format data
            formatted_emp = fix_format(clean_emp)

            # step 4, detect and handel duplicates
            if formatted_emp.Employee_Id not in known_ids:
                known_ids[formatted_emp.Employee_Id] = formatted_emp
            else:
                # if names are the same. join the 2 duplicates wherver they arnt the same
                old_emp = known_ids[formatted_emp.Employee_Id]
                if old_emp.Name == formatted_emp.Name:
                    #print("duplicate resolved")
                    known_ids[formatted_emp.Employee_Id] = resolve_duplicate(old_emp,formatted_emp)
                else:
                    # not the same person
                    #print("duplicate id")
                    formatted_emp.Employee_Id = get_new_id(known_ids)
                    known_ids[formatted_emp.Employee_Id] = formatted_emp
                
            #print(f"Result: {clean_emp}")
    return known_ids

def normilize_data(clean_data: dict[int,Employee],conn:psycopg.connection.Connection):
    with conn.cursor() as cur:
        # set up normilized tables
        cur.execute("""
            CREATE TABLE IF NOT EXISTS staging.departments (
            dept_id SERIAL PRIMARY KEY,
            dept_name TEXT UNIQUE NOT NULL
        );
        """)

        cur.execute("""
            CREATE TABLE IF NOT EXISTS staging.employees (
            employee_id INTEGER PRIMARY KEY,
            name TEXT NOT NULL,
            age INTEGER,
            dept_id INTEGER REFERENCES staging.departments(dept_id),
            joining_date DATE,
            years_of_experience INTEGER,
            country TEXT,
            salary NUMERIC(12, 2),
            performance_rating INTEGER
        );
        """)
        
        cur.execute("""
            CREATE TABLE IF NOT EXISTS staging.support_data (
            employee_id INTEGER PRIMARY KEY REFERENCES staging.employees(employee_id),
            support_rating INTEGER
        );
        """)

        cur.execute("""
            CREATE TABLE IF NOT EXISTS staging.sales_data (
            employee_id INTEGER PRIMARY KEY REFERENCES staging.employees(employee_id),
            total_sales NUMERIC(15, 2)
        ); 
        """)

        

        # 4 tables: 
        # employees, sales_data, support_data, departments
        departments:dict[str, int] = {}
        for emp in clean_data.values():
            # get dep id
            if emp.Department not in departments: # also builds dep
                departments[emp.Department] = len(departments)
                cur.execute(
                    "INSERT INTO staging.departments (dept_id, dept_name) VALUES (%s,%s)",
                    (departments[emp.Department],emp.Department)
                )
            dep_id = departments[emp.Department]

            # build employees
            emp_data = [emp.Employee_Id, emp.Name, emp.Age, dep_id, emp.Date_of_Joining, emp.Years_of_Experience, emp.Country, emp.Salary, emp.Performance_Rating]
            cur.execute(
                "INSERT INTO staging.employees (employee_id,name,age,dept_id,joining_date,years_of_experience,country,salary,performance_rating) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)",
                emp_data
            )

            # build support_data
            if emp.Department == "Support":
                cur.execute(
                    "INSERT INTO staging.support_data (employee_id, support_rating) VALUES (%s,%s)",
                    (emp.Employee_Id,emp.Support_Rating)
                )

            # build sales_data
            if emp.Department == "Sales":
                cur.execute(
                    "INSERT INTO staging.sales_data (employee_id, total_sales) VALUES (%s,%s)",
                    (emp.Employee_Id,emp.Total_Sales)
                )

try:
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

except Exception as e:
    print(f"An error occurred: {e}")