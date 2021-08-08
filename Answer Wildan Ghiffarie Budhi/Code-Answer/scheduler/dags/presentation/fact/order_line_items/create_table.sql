CREATE TABLE IF NOT EXISTS presentation.order_line_items (
    PART_KEY INT NOT NULL,
	SUPPLIER_KEY INT NOT NULL,
	CUSTOMER_KEY INT NOT NULL,
	CUSTOMER_NATION_KEY INT NOT NULL,
	SUPPLIER_NATION_KEY INT NOT NULL,
	ORDER_DATE_KEY INT NOT NULL,
	LINE_ITEM_SHIP_DATE_KEY INT NOT NULL,
	LINE_ITEM_COMMIT_DATE_KEY INT NOT NULL,
	LINE_ITEM_RECEIPT_DATE_KEY INT NOT NULL,
	ORDER_KEY INT NOT NULL,
	ORDER_STATUS_TYPE TEXT NOT NULL,
	ORDER_TOTAL_PRICE INT NOT NULL,
	ORDER_PRIORITY_TYPE TEXT NOT NULL,
	ORDER_CLERK TEXT NOT NULL,
	ORDER_SHIPPRIORITY INT NOT NULL,
	PART_AVAILABILITY_QUANTITY INT NOT NULL,
	PART_SUPPLY_COST INT NOT NULL,
	LINE_TIME_NUMBER INT NOT NULL,
	LINE_ITEM_QUANTITY INT NOT NULL,
	LINE_ITEM_EXTENDED_PRICE INT NOT NULL,
	LINE_ITEM_DISCOUNT INT NOT NULL,
	LINE_ITEM_TAX INT NOT NULL,
	LINE_ITEM_RETURN_FLAG TEXT NOT NULL,
	LINE_ITEM_STATUS_TYPE TEXT NOT NULL,
	LINE_ITEM_SHIP_INSTRUCTION_TYPE TEXT NOT NULL,
	LINE_ITEM_SHIP_MODE_TYPE TEXT NOT NULL,
    INGESTION_TIMESTAMP TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `PART_KEY_FK` FOREIGN KEY (PART_KEY) REFERENCES presentation.parts(PART_KEY),
	CONSTRAINT `SUPPLIER_KEY_FK` FOREIGN KEY (SUPPLIER_KEY) REFERENCES presentation.suppliers(SUPPLIER_KEY),
	CONSTRAINT `CUSTOMER_KEY_FK` FOREIGN KEY (CUSTOMER_KEY) REFERENCES presentation.customers(CUSTOMER_KEY),
	CONSTRAINT `CUSTOMER_NATION_KEY_FK` FOREIGN KEY (CUSTOMER_NATION_KEY) REFERENCES presentation.nations(NATION_KEY),
	CONSTRAINT `SUPPLIER_NATION_KEY_FK` FOREIGN KEY (SUPPLIER_NATION_KEY) REFERENCES presentation.nations(NATION_KEY),
	CONSTRAINT `ORDER_DATE_KEY_FK` FOREIGN KEY (ORDER_DATE_KEY) REFERENCES presentation.dates(DATE_KEY),
	CONSTRAINT `LINE_ITEM_SHIP_DATE_KEY_FK` FOREIGN KEY (LINE_ITEM_SHIP_DATE_KEY) REFERENCES presentation.dates(DATE_KEY),
	CONSTRAINT `LINE_ITEM_COMMIT_DATE_KEY_FK` FOREIGN KEY (LINE_ITEM_COMMIT_DATE_KEY) REFERENCES presentation.dates(DATE_KEY),
	CONSTRAINT `LINE_ITEM_RECEIPT_DATE_KEY_FK` FOREIGN KEY (LINE_ITEM_RECEIPT_DATE_KEY) REFERENCES presentation.dates(DATE_KEY)
)