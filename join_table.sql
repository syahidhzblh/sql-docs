-- Menampilkan 2 table dalam satu SELECT dengan JOIN
SELECT * FROM wishlist JOIN products ON (wishlist.id_product = products.id);

-- Menampilkan hanya beberapa coloumn yang di inginkan
SELECT wishlist.id, products.id, products.name, wishlist.description
FROM wishlist
JOIN products ON (wishlist.id_product = products.id);

-- Using ALIAS (Make it simple)
SELECT 
w.id AS id_wishlist, 
p.id AS id_product, 
p.name AS product_name, 
w.description AS wishlist_description
FROM wishlist AS w
JOIN products AS p ON (w.id_product = p.id);

-- JOIN Mulitpe Table
SELECT w.id AS id_wishlist,
c.email AS email_customer,
p.id AS id_product,
p.name AS product_name,
w.description AS wishlist_description
FROM wishlist as w
JOIN products as p ON (w.id_product = p.id)
JOIN customers as c ON (w.id_customer = c.id);