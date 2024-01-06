-- Many to Many = Gabungan 2 buah one to many
-- CREATE Table relasi sebagai jembatan dari product dan orders -> orders_detail

-- CREATE TABLE orders
CREATE TABLE orders(
    id INT NOT NULL AUTO_INCREMENT,
    total INT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(id)
)ENGINE=InnoDB;

-- CREATE TABLE orders_detail
CREATE TABLE orders_detail(
    id_product VARCHAR(10) NOT NULL,
    id_order INT NOT NULL,
    quantity INT NOT NULL,
    price INT NOT NULL,
    PRIMARY KEY(id_product,id_order)
)ENGINE=InnoDB;

-- SET FK for id_product
ALTER TABLE orders_detail
ADD CONSTRAINT fk_orders_detail_product
FOREIGN KEY (id_product) REFERENCES products(id);

-- SET FK for id_orders
ALTER TABLE orders_detail
ADD CONSTRAINT fk_orders_detail_orders
FOREIGN KEY (id_order) REFERENCES orders(id);

-- TRY INSERT DATA TO orders and orders_detail
INSERT INTO orders(total)
VALUES(50000);

INSERT INTO orders_detail(id_product,id_order,quantity,price)
VALUES('P0004',3,1,12000),
('P0008',3,1,5000);

-- Query with JOIN
SELECT o.id AS id_order, p.id AS id_product, p.name AS product_name, od.quantity, od.price
FROM orders as o
JOIN orders_detail AS od ON (od.id_order = o.id)
JOIN products AS p ON (p.id = od.id_product);