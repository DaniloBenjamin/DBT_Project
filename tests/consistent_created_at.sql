SELECT * FROM {{ ref('fct_reviews') }} as a
INNER JOIN {{ ref('dim_listings_cleansed') }} as b
USING (listing_id)
WHERE a.review_date <= b.created_at
LIMIT 10

