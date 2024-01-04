-- ORDER BY digunakan untuk mengurutkan data yang ditampilkan
-- ASC(Ascending) Terkecil ke Terbesar
-- DESC(Descending) Terbesar ke Terkecil
SELECT id, name, category, price FROM products ORDER BY category ASC, price DESC;
SELECT * FROM products ORDER BY price DESC;


-- ORDER BY with LIMIT untuk membatasi jumlah data yang ditampilkan
SELECT * FROM products ORDER BY id LIMIT 5;

-- LIMIT biasanya digunakan untuk paging SQL (Menampilkan data sesaui kebutuhan page)
SELECT * FROM products ORDER BY id LIMIT 5,5; -- First number is skip, second number is data that want to display
SELECT * FROM products ORDER BY id LIMIT 10,5; -- Contoh Penampilan 5 data per page
SELECT * FROM products ORDER BY id LIMIT 15,5;

-- DISTINCT untuk menghilangkan Duplicate Data
SELECT DISTINCT category FROM products;