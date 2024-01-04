-- Menampilkan total produk, Harga Termahal, dll berdasarkan category
SELECT COUNT(id) AS 'Total Produk', category FROM products GROUP BY category;

SELECT MAX(price) AS 'Harga Termahal', category FROM products GROUP BY category;

SELECT MIN(price) AS 'Harga Termurah', category FROM products GROUP BY category;

SELECT SUM(quantity) AS 'Total Stock', category FROM products GROUP BY category;

-- Grouping with Having Clause
SELECT COUNT(id) AS total_product, 
category
FROM products
GROUP BY category
HAVING total_product > 3;