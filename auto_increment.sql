-- Auto Increment only effected on Primary Key
CREATE TABLE admin(
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(15) NOT NULL,
    last_name  VARCHAR(15) NOT NULL,
    PRIMARY KEY(id)
)ENGINE=InnoDB;

-- Try Insert
INSERT INTO admin(first_name,last_name)
VALUES ('Syahid','Hizbullah'),
        ('Hisbul','Ganteng');

-- Menampilkan ID terakhir yang dibuat
SELECT LAST_INSERT_ID();