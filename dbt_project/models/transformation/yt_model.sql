SELECT
    "Genre",
    COUNT('ID') as total
FROM {{ source('yt_csv', 'yt') }}
GROUP BY 1
