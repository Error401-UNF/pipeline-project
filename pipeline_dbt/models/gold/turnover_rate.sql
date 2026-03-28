
SELECT 
    d.dept_name,
    TO_TIMESTAMP(AVG(EXTRACT(EPOCH FROM e.joining_date)))::DATE AS avg_joining_date
FROM {{ ref('stg_employees') }} e
JOIN {{ ref('stg_departments') }} d ON e.dept_id = d.dept_id
GROUP BY d.dept_name