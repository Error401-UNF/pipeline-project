
SELECT 
    country, 
    ROUND(AVG(salary), 2) AS average_salary
FROM {{ ref('stg_employees') }}
GROUP BY country
ORDER BY average_salary DESC