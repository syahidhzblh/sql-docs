-- CREATE USER
CREATE USER 'syahid'@'localhost'; -- can only access DB from localhost
CREATE USER 'syahid'@'%'; -- can access to from all network (public)

-- DROP USER
DROP USER 'syahid'@'localhost';
DROP USER 'syahid'@'%';

-- SET PERMISSION
GRANT SELECT ON belajar_mysql.* TO 'syahid'@'localhost';
GRANT SELECT ON belajar_mysql.products TO 'syahid'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON belajar_mysql.products TO 'syahid'@'localhost';
GRANT ALL PRIVILEGES ON belajar_mysql.* TO 'syahid'@'localhost';

-- SHOW PERMISSION
SHOW GRANTS FOR 'syahid'@'localhost';

-- SET PASSWORD
SET PASSWORD FOR 'syahid'@'localhost' = 'secret';





