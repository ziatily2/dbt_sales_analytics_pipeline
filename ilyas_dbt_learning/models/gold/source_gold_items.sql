WITH dedup_query AS
(
    SELECT 
        *,
        ROW_NUMBER() OVER(PARTITION BY id ORDER BY updateDate desc) AS deduplication_id
    FROM 
        {{ source('source', 'items')}}
)
SELECT
    id,name,category,updateDate
FROM
    dedup_query
WHERE
    deduplication_id = 1