
SELECT 
    CONCAT((years_of_experience / 3) * 3, ' - ', (years_of_experience / 3) * 3 + 2, ' years') AS tenure_range,
    ROUND(AVG(salary), 2) AS average_salary
FROM {{ ref('stg_employees') }}
GROUP BY (years_of_experience / 3)
ORDER BY (years_of_experience / 3)