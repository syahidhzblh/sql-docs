SELECT id,
LOWER(name) AS 'Name Lower',
UPPER(name) AS 'Name Upper',
LENGTH(name) AS 'Name Length'
FROM products;

-- Change Permanently data on field to Lower Case
UPDATE admin
SET last_name = LOWER(last_name);

-- Mengubah awalan huruf pada nama menjadi Uppercase dengan Concat
UPDATE admin
SET first_name = CONCAT(UPPER(SUBSTRING(first_name, 1, 1)), LOWER(SUBSTRING(first_name, 2))),
    last_name = CONCAT(UPPER(SUBSTRING(last_name,1,1)), LOWER(SUBSTRING(last_name,2)));