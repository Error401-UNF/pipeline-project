WITH BucketizedData AS (
    SELECT 
        asin,
        category_id,
        adjusted_price,
        adjusted_listPrice,
        FLOOR(stars * 4) / 4.0 AS bucket_start,
        (FLOOR(stars * 4) / 4.0) + 0.25 AS bucket_end
    FROM {{ ref('full_average_delta') }}
),

CategoryMeans AS (
    SELECT 
        category_id,
        name,
        average_price AS cat_mean_price,
        average_listPrice as cat_mean_listprice
    FROM {{ ref('average_product_per_category') }}
)

SELECT 
    cm.name,
    CONCAT(bd.bucket_start, ' - ', bd.bucket_end) AS star_bucket,
    ROUND(
        AVG(bd.adjusted_price / NULLIF(cm.cat_mean_price, 0))::numeric * 100, 
        2
    ) AS avg_price_delta_percent,
    ROUND(
        AVG(bd.adjusted_listPrice / NULLIF(cm.cat_mean_listprice, 0))::numeric * 100, 
        2
    ) AS avg_list_price_delta_percent
FROM BucketizedData bd
JOIN CategoryMeans cm ON bd.category_id = cm.category_id
GROUP BY cm.name, bd.bucket_start, bd.bucket_end
ORDER BY cm.name ASC, bd.bucket_start ASC