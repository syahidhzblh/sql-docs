-- Implementasi Table category ke Table products

CREATE TABLE categories(
    id VARCHAR(10) NOT NULL,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
)ENGINE=InnoDB;

-- Drop existing column category on products table
ALTER TABLE products
DROP category;

-- ADD id_category column on products
ALTER TABLE products
ADD COLOUMN id_category VARCHAR(10);

-- Set id_category as Foreign Key
ALTER TABLE products
ADD CONSTRAINT fk_product_category
FOREIGN KEY (id_category) REFERENCES categories(id);

-- Update id_category on products table
UPDATE products
SET id_category = 'C0003'
WHERE id IN ('P0011');

-- Query with JOIN
SELECT products.id,products.name, category.name AS category
FROM products
JOIN category ON (products.id_category = category.id);