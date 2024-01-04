-- Select with Operator Condition
SELECT * FROM products WHERE quantity >= 100;
SELECT * FROM products WHERE category != 'Makanan'
SELECT * FROM products WHERE price > 10000 AND quantity > 20;
SELECT * FROM products WHERE price > 20000 OR quantity > 100;

SELECT id, name, category,price, quantity
FROM products
WHERE (category = 'Makanan' OR quantity > 20)
    AND price > 10000; -- And -> Priority 0

-- Select with Like for Query sepcified string
SELECT * FROM products WHERE name LIKE '%M' -- Untuk data yang ada awalan huruf M
SELECT * FROM products WHERE name LIKE '%Mie%' -- Untuk data yang memiliki huruf mie di awal atau di akhir
SELECT * FROM products WHERE name LIKE '%aso%' -- Untuk data yang memiliki huruf aso di awal atau di akhir
-- Jika datanya sudah banyak, akan berakibat slow query jika menggunakan LIKE


-- Find NULL data or NOT NULL data
SELECT * FROM products WHERE description IS NULL;
SELECT * FROM products WHERE description IS NOT NULL;

-- BETWEEN Operator
SELECT * FROM products WHERE price BETWEEN 10000 AND 20000;
SELECT * FROM products WHERE price NOT BETWEEN 10000 AND 20000;

-- IN Operator untuk menampilkan data yang berisikan spesifik yang kita tentukan, Alternatif dari OR Operator
SELECT * FROM products WHERE category IN('Makanan','Minuman');
SELECT * FROM products WHERE category NOT IN('Makanan','Minuman');