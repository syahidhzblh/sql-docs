-- Menampilkan Hasil price in K
SELECT id, name, price DIV 1000 AS 'Price in K' FROM products;
SELECT id,name,price AS 'Real Price',price DIV 1000 AS 'Price in K' FROM products;

-- Metode lain DIV dengan condition
SELECT id,name,price
FROM products
WHERE price DIV 1000 >= 15;