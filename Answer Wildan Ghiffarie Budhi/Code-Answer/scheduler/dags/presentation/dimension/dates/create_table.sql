CREATE TABLE IF NOT EXISTS presentation.dates (
    DATE_KEY INT NOT NULL AUTO_INCREMENT,
    `DAY` INT NOT NULL,
    `MONTH` INT NOT NULL,
    `YEAR` INT NOT NULL,
    INGESTION_TIMESTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `DATE_PK` PRIMARY KEY (DATE_KEY),
    CONSTRAINT `DATE_UNIQUE` UNIQUE KEY (`DAY`, `MONTH`, `YEAR`)
) AS

{% include 'presentation/dimension/dates/query.sql' %}

LIMIT 0