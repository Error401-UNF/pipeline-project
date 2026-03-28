
SELECT 
    performance_rating, 
    ROUND(AVG(salary), 2) AS average_salary
FROM {{ ref('stg_employees') }}
GROUP BY performance_rating
ORDER BY performance_rating DESC