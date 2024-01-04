-- Update Data on Table
UPDATE products
SET category = 'Makanan'
    description = 'Bakso Biasa'
WHERE id = 'P0003';

-- Mengubah data dengan value
UPDATE products
SET price = price + 5000
WHERE id = 'P0001';

-- Update Multiple Value in 1 field using CASE
UPDATE admin
SET first_name =
    CASE
        WHEN id = 2 THEN 'syahid'
        WHEN id = 3 THEN 'hisbul'
        WHEN id = 4 THEN 'budi'
        WHEN id = 5 THEN 'joko'
        WHEN id = 6 THEN 'marpuah'
        ELSE first_name
END;