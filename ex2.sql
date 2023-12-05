CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) ,
quantidade int, 
setor varchar(255),
preco decimal NOT NULL, 
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, setor, preco)
VALUES ("caderno",2, "papelaria", 15.00);

INSERT INTO tb_produtos(nome, quantidade, setor, preco)
VALUES ("Televisao",2=1, "eletrodomestico", 1500.00);

INSERT INTO tb_produtos(nome, quantidade, setor, preco)
VALUES ("Geladeira",1, "Eletrodomestico", 1950.00);

INSERT INTO tb_produtos(nome, quantidade, setor, preco)
VALUES ("camiseta",7, "Vestuario", 28.00);

INSERT INTO tb_produtos(nome, quantidade, setor, preco)
VALUES ("Chinelo",2, "Vestuario", 39.00);

INSERT INTO tb_produtos(nome, quantidade, setor, preco)
VALUES ("Notebook",2, "Eletronicos", 7800.00);

INSERT INTO tb_produtos(nome, quantidade, setor, preco)
VALUES ("Mouse",2, "Perifericos", 143.00);

INSERT INTO tb_produtos(nome, quantidade, setor, preco)
VALUES ("Teclado",2, "Perifericos", 150.00);

SELECT * FROM tb_produtos;

ALTER TABLE tb_produtos MODIFY preco decimal(6, 2);

SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;

  UPDATE tb_produtos SET preco = 6100.00 WHERE id = 3;