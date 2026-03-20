import psycopg
#isolating the processing step. assumes the injeston step is already done



def run_processing():
    try:
        post_pass = open("secrets.txt").readline()
        with psycopg.connect(
            conninfo=f"dbname=Pipeline user=postgres password={post_pass} host=localhost port=5432"
        ) as conn:
            print("Connected")
            # average salary for each department


            with conn.cursor() as cur:
                # drop all tables
                cur.execute("""
                    DROP TABLE IF EXISTS gold.salary_to_department_analysis;
                    DROP TABLE IF EXISTS gold.salary_to_tenure_analysis;
                    DROP TABLE IF EXISTS gold.performance_by_salary_analysis;
                    DROP TABLE IF EXISTS gold.salary_to_country_analysis;
                    DROP TABLE IF EXISTS gold.early_talent_indicator;
                    DROP TABLE IF EXISTS gold.turnover_rate;
                """)
            conn.commit()

            with conn.cursor() as cur:
                # average salary by years of experience
                cur.execute("""
                CREATE TABLE gold.salary_to_department_analysis AS
                SELECT 
                    d.dept_name, 
                    ROUND(AVG(e.salary), 2) AS average_salary
                FROM staging.employees e
                JOIN staging.departments d ON e.dept_id = d.dept_id
                GROUP BY d.dept_name
                ORDER BY average_salary DESC;
                """)

                # average salary by years of experience
                cur.execute("""
                CREATE TABLE gold.salary_to_tenure_analysis AS
                SELECT 
                    CONCAT((years_of_experience / 3) * 3, ' - ', (years_of_experience / 3) * 3 + 2, ' years') AS tenure_range,
                    ROUND(AVG(salary), 2) AS average_salary
                FROM staging.employees
                GROUP BY (years_of_experience / 3)
                ORDER BY (years_of_experience / 3);
                """)

                # average salary for each performance rating
                cur.execute("""
                CREATE TABLE gold.performance_by_salary_analysis AS
                SELECT 
                    performance_rating, 
                    ROUND(AVG(salary), 2) AS average_salary
                FROM staging.employees
                GROUP BY performance_rating
                ORDER BY performance_rating DESC;
                """)
                # other 3

                # average salary by country
                cur.execute("""
                CREATE TABLE gold.salary_to_country_analysis AS
                SELECT 
                    country, 
                    ROUND(AVG(salary), 2) AS average_salary
                FROM staging.employees
                GROUP BY country
                ORDER BY average_salary DESC;
                """)

                # early talent, low years_of_experience but high performance_rating
                cur.execute("""
                CREATE TABLE gold.early_talent_indicator AS
                SELECT 
                    e.name, 
                    e.years_of_experience, 
                    e.performance_rating, 
                    d.dept_name
                FROM staging.employees e
                JOIN staging.departments d ON e.dept_id = d.dept_id
                WHERE e.years_of_experience <= 3 
                AND e.performance_rating >= 4
                ORDER BY e.performance_rating DESC, e.years_of_experience, e.name;
                """)

                # turnover indicator: average joining data per department
                cur.execute("""
                CREATE TABLE gold.turnover_rate AS
                SELECT 
                    d.dept_name, 
                    TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM e.joining_date)))::DATE AS avg_joining_date
                FROM staging.employees e
                JOIN staging.departments d ON e.dept_id = d.dept_id
                GROUP BY d.dept_name;
                """)
            print("processing compleated")

            conn.commit()
            conn.close()
    except Exception as e:
        print(f"An error occurred: {e}")