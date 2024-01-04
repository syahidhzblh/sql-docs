-- COUNT
SELECT COUNT(id) AS 'Total Product' FROM products;

-- Max Price
SELECT MAX(price) FROM products;

-- Min Price
SELECT MIN(price) FROM products;

-- Average Pricce
SELECT AVG(price) FROM products;

-- SUM
SELECT SUM(price) AS 'Jumlah Harga' FROM products;
SELECT SUM(quantity) AS 'Total Stock' FROM products;