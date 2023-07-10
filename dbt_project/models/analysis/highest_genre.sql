SELECT
    "Genre",
    total as highest_genre
FROM {{ ref('yt_model') }}
ORDER BY total DESC
LIMIT 1