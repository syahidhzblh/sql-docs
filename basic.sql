-- Membuat Table
CREATE TABLE products(
    id VARCHAR(10) NOT NULL,
    name VARHCAR(100) NOT NULL,
    description TEXT,
    price INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
)ENGINE=InnoDB

-- Update or Modifiy Table
ALTER TABLE products
ADD COLOUMN category ENUM
MODIFY id INT -- For change type data on coloumn ID
AFTER name;

-- Insert Data to Table
INSERT INTO productcs (id, name, price, quantity)
VALUES ('P0001', 'Mie Ayam', 15000, 100),
        ('P0002', 'Mie Ayam Bakso', 20000, 100)

-- SHOW Description on Table
DESC prducts;

-- Select All Data on Table
SELECT * FROM products;

-- Select only specific coloumn
SELECT (id, name, price, quantity) FROM products;

-- DELETE All Data on TABLE
TRUNCATE TABLE products;

-- DELETE TABLE 
DROP TABLE products;

-- WHERE CLAUSE
SELECT * FROM products WHERE quantity=0;

-- Update Data on Table
UPDATE products
SET category = 'Makanan'
    description = 'Bakso Biasa'
WHERE id = 'P0003';

-- How to create modified date coloumn on Table
CREATE TRIGGER trg_products_UpdateModifiedDate
BEFORE UPDATE
ON products
FOR EACH ROW
SET NEW.modified_date = CURRENT_TIMESTAMP;

-- Mengubah data dengan value
UPDATE products
SET price = price + 5000
WHERE id = 'P0001';

-- Delete data on Table
DELETE FROM products
WHERE id = 'P0003';