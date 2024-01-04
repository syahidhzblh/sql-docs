-- Alias untuk coluoumn
SELECT id AS Kode,
name AS Nama,
category AS Kategori,
price AS Harga,
quantity AS Jumlah
FROM products;

-- Alias untuk Table
SELECT
p.id AS Kode,
p.name AS Nama,
p.category AS Kategori,
p.price AS Harga,
p.quantity AS Jumlah
FROM products AS p;