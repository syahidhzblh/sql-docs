-- CREATE TABLE with FULLTEXT INDEX for Query
CREATE TABLE products(
    id VARCHAR(10) NOT NULL,
    name VARHCAR(100) NOT NULL,
    description TEXT,
    price INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT price_check CHECK (price > 1000),
    FULLTEXT product_fulltext (name, description)
)ENGINE=InnoDB;


-- ADD FULL TEXT WITH ALTER
ALTER TABLE  products
ADD FULLTEXT product_fulltext (name,description);

-- DROP FULLTEXT
ALTER TABLE  products
DROP INDEX product_fulltext;

-- QUERY IN NATURAL LANGUAGE MODE
SELECT * FROM products
WHERE MATCH(name, description)
AGAINST ('mie' IN NATURAL LANGUAGE MODE);

-- QUERY IN BOOLEAN MODE
SELECT * FROM products
WHERE MATCH(name, description)
AGAINST ('+mie  -bakso' IN BOOLEAN MODE);

-- WITH QUERY EXPANSION MODE
SELECT * FROM products
WHERE MATCH(name, description)
AGAINST ('+bakso' WITH QUERY EXPANSION);