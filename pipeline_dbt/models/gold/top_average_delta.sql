WITH RankedProducts AS (
    SELECT 
        asin,
        title,
        category_id,
        stars,
        reviews,
        COALESCE(adjusted_price, 0) as adjusted_price, 
        COALESCE(adjusted_listPrice, 0) as adjusted_listPrice,
        ROW_NUMBER() OVER (
            PARTITION BY category_id 
            ORDER BY adjusted_price DESC, adjusted_listPrice DESC
        ) as category_rank
    FROM {{ ref('full_average_delta') }}
)
SELECT 
    asin,
    title,
    category_id,
    stars,
    reviews,
    adjusted_price,
    adjusted_listPrice,
    category_rank
FROM RankedProducts
WHERE category_rank <= 5
ORDER BY category_id, category_rank