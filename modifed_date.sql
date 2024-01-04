-- How to create modified date coloumn on Table
CREATE TRIGGER trg_products_UpdateModifiedDate
BEFORE UPDATE
ON products
FOR EACH ROW
SET NEW.modified_date = CURRENT_TIMESTAMP;