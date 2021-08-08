WITH timeframed_data AS (
	SELECT
		DISTINCT 
		CAST(N_NATIONKEY AS SIGNED) AS NATION_KEY,
		N_NAME AS NATION_NAME,
		CAST(N_REGIONKEY AS SIGNED) AS REGION_KEY,
		N_COMMENT AS NATION_COMMENT,
		NOW() AS INGESTION_TIMESTAMP
	FROM
		datalake.NATION n
	WHERE 
		n.INGESTION_TIMESTAMP >= DATE_SUB(NOW(), INTERVAL 1 HOUR)
)

SELECT 
	* 
FROM 
	timeframed_data
