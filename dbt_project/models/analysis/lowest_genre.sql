SELECT
    "Genre",
    total as lowest_genre
FROM {{ ref('yt_model') }}
ORDER BY total
LIMIT 1