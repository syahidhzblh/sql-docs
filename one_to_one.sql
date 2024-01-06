-- Buat Simulasi One to One Relationship dengan table wallet reference ke table customer
CREATE TABLE wallet(
    id INT NOT NULL AUTO_INCREMENT,
    id_customer INT NOT NULL,
    balance INT NOT NULL DEFAULT 0,
    PRIMARY KEY(id),
    UNIQUE KEY(id_customer),
    CONSTRAINT fk_wallet_customer
    FOREIGN KEY (id_customer) REFERENCES customers(id)
)ENGINE=InnoDB;

-- Test One to One dengan menggunakan JOIN untuk cek balance tiap customer
SELECT customers.email, wallet.balance
FROM wallet
JOIN customers ON (customers.id = wallet.id_customer);