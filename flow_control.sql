-- CASE Function
SELECT id,name,
       category,
       CASE category
       WHEN 'Makanan' THEN 'Enak'
       WHEN 'Minuman' THEN 'Seger'
       ELSE 'Apa ini?'
       END
FROM products;

-- IF Function
SELECT id,name,
       price,
       IF(price <= 10000, 'Murah',
       IF(price <= 19000, 'Mahal', 'Mahal Banget') -- IF(condition,true,false) 
       )
       AS 'Mahal?'
FROM products;

-- IF ELSE Should be like
IF(condition, true,
    IF(condition, true, false)) -- else

-- IF NULL
SELECT id, name, IFNULL(description, 'Kosong') FROM products;