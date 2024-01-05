-- Sellers Table with INDEX untuk mempercepat query
CREATE TABLE sellers(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    name2 VARCHAR(100),
    name3 VARCHAR(100),
    email VARCHAR(100) NOT NULL,
    PRIMARY KEY(id),
    UNIQUE KEY email_unique (email),
    INDEX name2_index (name),
    INDEX name3_index (name),
    INDEX name1_name2_name3_index (name,name2,name3)
)ENGINE=InnoDB;

-- Modify or Add index if table already created
ALTER TABLE sellers
ADD INDEX name2_index (name2);

-- DROP INDEX
ALTER TABLE sellers
DROP INDEX name2_index;