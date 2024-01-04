-- CONSTRAINT CHECK will check only price > 1000 was allowed
CREATE TABLE products(
    id VARCHAR(10) NOT NULL,
    name VARHCAR(100) NOT NULL,
    description TEXT,
    price INT UNSIGNED NOT NULL,
    quantity INT UNSIGNED NOT NULL DEFAULT 0,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT price_check CHECK (price > 1000)
)ENGINE=InnoDB

-- Syntax for set constraint , if we forgot to set constraint check
ALTER TABLE products
ADD CONSTRAINT price_check CHECK(price > 1000);

-- DROP CONSTRAINT
ALTER TABLE products
DROP CONSTRAINT price_check;