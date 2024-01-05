-- CREATE TABLE wishlist with FOREIGN KEY
CREATE TABLE wishlist(
    id INT NOT NULL AUTO_INCREMENT,
    id_product VARCHAR(10) NOT NULL,
    description TEXT,
    PRIMARY KEY(id),
    CONSTRAINT fK_wishlist_product
    FOREIGN KEY (id_product) REFERENCES products (id) -- References to table product coloumn id
)ENGINE=InnoDB;

-- ADD Foreign Key in existing table
ALTER TABLE wishlist
ADD CONSTRAINT fK_wishlist_product
    FOREIGN KEY (id_product) REFERENCES products(id);


-- DROP FK
ALTER TABLE wishlist
DROP CONSTRAINT fK_wishlist_product;