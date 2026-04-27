SELECT 
    c.name,
    c.category_id,
    ROUND(AVG(NULLIF(p.stars, 0))::numeric, 2) AS average_stars,
    ROUND(AVG(NULLIF(p.price, 0))::numeric, 2) AS average_price,
    ROUND(AVG(NULLIF(p.listPrice, 0))::numeric, 2) AS average_listPrice
FROM {{ ref('stg_products') }} p
JOIN {{ ref('stg_categories') }} c ON p.category_id = c.category_id
GROUP BY c.category_id, c.name
ORDER BY average_stars DESC