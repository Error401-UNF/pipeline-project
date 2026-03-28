

SELECT 
    d.dept_name, 
    ROUND(AVG(e.salary), 2) AS average_salary
FROM {{ ref('stg_employees') }} e
JOIN {{ ref('stg_departments') }} d ON e.dept_id = d.dept_id
GROUP BY d.dept_name
ORDER BY average_salary DESC