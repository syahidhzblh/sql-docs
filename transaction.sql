-- START & COMMIT
START TRANSACTION;

UPDATE customers
SET last_name = 'widodo'
WHERE id = 4;

COMMIT;

-- START & ROLLBACK for undo changes
START TRANSACTION;

UPDATE customers
SET last_name = 'widodo'
WHERE id = 4;

ROLLBACK;

-- Locking Manual
START TRANSACTION;

SELECT * FROM products WHERE id = 'P0001' FOR UPDATE;

UPDATE products
SET quantity = quantity - 10
WHERE id = 'P0001';

COMMIT;

-- Locking Table
START TRANSACTION;

LOCK TABLES products READ; -- Can also use WRITE 
UNLOCK TABLES;

-- Locking Instance (Tidak bisa DDL, masih bisa DML), Semuanya di lock
LOCK INSTANCE FOR BACKUP;
UNLOCK INSTANCE;
