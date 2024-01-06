-- Subquery on WHERE
SELECT * FROM products
WHERE price > (SELECT AVG(price) FROM products);

-- Subquery on FROM
SELECT MAX(cp.price) FROM(SELECT price FROM category
    JOIN products ON (products.id_category = category.id)) AS cp;


-- SET Operator with UNION
-- Menampilkan data email pada 2 table dengan menghilangan data yang memiliki duplikasi
SELECT DISTINCT email FROM customers
UNION
SELECT DISTINCT email FROM guestbooks;

-- SET Operator with UNION ALL
-- Menampilkan data email pada 2 table dan menghitung total duplikasi dengan COUNT
SELECT emails.email, COUNT(emails.email) FROM(
SELECT DISTINCT email FROM customers
UNION ALL
SELECT DISTINCT email FROM guestbooks) AS emails
GROUP BY emails.email;

-- INTERSECT with WHERE (Mencari data duplikasi yang sama antar 2 table)
SELECT DISTINCT email FROM customers
WHERE email IN(SELECT DISTINCT email FROM guestbooks);

-- INTERSECT with INNER JOIN
SELECT DISTINCT customers.email FROM customers
INNER JOIN guestbooks ON (guestbooks.email = customers.email);

-- Mengambil data email customer yang tidak ada di guestbook dengan LEFT JOIN with MINUS
SELECT DISTINCT customers.email from customers
LEFT JOIN guestbooks ON (guestbooks.email = customers.email)
WHERE guestbooks.email IS NULL;