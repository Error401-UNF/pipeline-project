
SELECT 
    e.name, 
    e.years_of_experience, 
    e.performance_rating, 
    d.dept_name
FROM {{ ref('stg_employees') }} e
JOIN {{ ref('stg_departments') }} d ON e.dept_id = d.dept_id
WHERE e.years_of_experience <= 3 
  AND e.performance_rating >= 4
ORDER BY e.performance_rating DESC, e.years_of_experience, e.name