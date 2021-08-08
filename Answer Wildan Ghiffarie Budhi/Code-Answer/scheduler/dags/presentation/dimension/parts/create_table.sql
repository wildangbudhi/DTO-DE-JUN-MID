CREATE TABLE IF NOT EXISTS presentation.parts (
    PART_KEY INT NOT NULL,
    INGESTION_TIMESTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `PART_PK` PRIMARY KEY (PART_KEY)
) AS

{% include 'presentation/dimension/parts/query.sql' %}

LIMIT 0