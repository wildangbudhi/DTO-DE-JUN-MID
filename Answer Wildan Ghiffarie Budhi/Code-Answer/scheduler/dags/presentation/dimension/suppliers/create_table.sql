CREATE TABLE IF NOT EXISTS presentation.suppliers (
    SUPPLIER_KEY INT NOT NULL,
    INGESTION_TIMESTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `SUPPLIER_PK` PRIMARY KEY (SUPPLIER_KEY)
) AS

{% include 'presentation/dimension/suppliers/query.sql' %}

LIMIT 0