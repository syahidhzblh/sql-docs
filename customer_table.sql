-- Table Customer with Unique Key
CREATE TABLE customers(
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100),
    PRIMARY KEY(id),
    UNIQUE KEY email_unique (email)
)ENGINE=InnoDB;


-- Edit coloumn to unique key
ALTER TABLE customers
ADD CONSTRAINT email_unique UNIQUE(email);

-- DROP CONSTRAINT email_unique

ALTER TABLE customers
DROP CONSTRAINT email_unique;