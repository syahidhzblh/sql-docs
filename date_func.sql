-- Extract Year and Month from created_at
SELECT id,name,
    EXTRACT(YEAR FROM created_at) AS 'Year',
    EXTRACT(MONTH FROM created_at) AS 'Month'
FROM products;

-- Simple func
SELECT id,name, YEAR(created_at), MONTH(created_at) FROM products;