SELECT 
    p.asin, 
    p.title,
    p.reviews,
    p.stars,
    p.category_id, 
    NULLIF(ROUND(CAST(p.price - ppc.average_price AS numeric), 4), 0) AS adjusted_price,
    NULLIF(ROUND(CAST(p.listPrice - ppc.average_listPrice AS numeric), 4), 0) AS adjusted_listPrice
    FROM {{ ref('stg_products') }} p
JOIN {{ ref('average_product_per_category') }} ppc ON p.category_id = ppc.category_id
WHERE p.reviews >= 100  -- Floor
ORDER BY p.asin DESC 