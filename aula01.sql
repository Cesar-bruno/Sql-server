-- Criar bando de dados
CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("Melancia", 100, "2023-10-18" , 11.00),
("maça", 100, "2023-10-10" , 15.00),
("laranja", 100, "2023-10-15" , 11.90),
("Banana", 100, "2023-10-9" , 30.00),
("Uva", 100, "2023-10-23" , 20.00);

-- (0000,00)
ALTER TABLE	tb_produtos MODIFY preco DECIMAL(6,2);

UPDATE tb_produtos  SET preco = 11.90 WHERE id = 9;

DELETE FROM tb_produtos where id = 3;


SELECT nome , preco FROM tb_produtos;
SELECT * from tb_produtos where id = 1;




