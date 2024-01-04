-- Update Data on Table
UPDATE products
SET category = 'Makanan'
    description = 'Bakso Biasa'
WHERE id = 'P0003';

-- Mengubah data dengan value
UPDATE products
SET price = price + 5000
WHERE id = 'P0001';