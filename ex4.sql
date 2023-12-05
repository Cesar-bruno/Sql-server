CREATE DATABASE db_generation_online_game;
use db_generation_online_game;

create table tb_classe(
id bigint auto_increment,
classe varchar(255),
especie varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_classe (classe , especie)
VALUES ("Arqueiro" , "Druida");

INSERT INTO tb_classe (classe , especie)
VALUES ("espadachim" , "Druida");

INSERT INTO tb_classe (classe , especie)
VALUES ("Arqueiro" , "Elfo");

INSERT INTO tb_classe (classe , especie)
VALUES ("espadachim" , "Elfo");

INSERT INTO tb_classe (classe , especie)
VALUES ("Arqueiro" , "Humano");

INSERT INTO tb_classe (classe , especie)
VALUES ("espadachim" , "Humano");

select * from tb_classe;


CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
poder int, 
sexo varchar(255),
regiao varchar(255),
personagens_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (personagens_id) REFERENCES tb_classe(id)
);



INSERT INTO tb_personagens (nome, poder, sexo, regiao, personagens_id)
VALUES ("Jessica", 1000, "F", "são Paulo", 6);

INSERT INTO tb_personagens (nome, poder, sexo, regiao, personagens_id)
VALUES ("Leandro", 950, "M", "Rio de Janeiro", 5);

INSERT INTO tb_personagens (nome, poder, sexo, regiao, personagens_id)
VALUES ("Mortifera", 3400, "F", "amazonas", 4);

INSERT INTO tb_personagens (nome, poder, sexo, regiao, personagens_id)
VALUES ("Enzo", 250, "M", "Vitoria", 3);

INSERT INTO tb_personagens (nome, poder, sexo, regiao, personagens_id)
VALUES ("Helen", 1250, "F", "Salvador", 2);

INSERT INTO tb_personagens (nome, poder, sexo, regiao, personagens_id)
VALUES ("Leticia", 1250, "F", "Natal", 1);

INSERT INTO tb_personagens (nome, poder, sexo, regiao, personagens_id)
VALUES ("kelly", 780, "F", "Minas Gerais", 6);

INSERT INTO tb_personagens (nome, poder, sexo, regiao, personagens_id)
VALUES ("Robertinho", 900, "M", "Acre", 5);

INSERT INTO tb_personagens (nome, poder, sexo, regiao, personagens_id)
VALUES ("Goana", 2000, "F", "tocantins", 4);

INSERT INTO tb_personagens (nome, poder, sexo, regiao, personagens_id)
VALUES ("Guilherme", 1450, "M", "São paulo", 3);

INSERT INTO tb_personagens (nome, poder, sexo, regiao, personagens_id)
VALUES ("Fernanda",500, "F", "Porto Alegre", 2);

INSERT INTO tb_personagens (nome, poder, sexo, regiao, personagens_id)
VALUES ("Karina", 870, "F", "São Vicente", 1);


SELECT * FROM tb_personagens WHERE poder > 2000;

SELECT * FROM tb_personagens WHERE poder between  1000 and  5000 order by nome;

SELECT * FROM tb_personagens WHERE nome Like "%c%";

SELECT nome, sexo, regiao, poder , tb_classe.classe
FROM tb_personagens INNER JOIN tb_classe 
ON tb_personagens.personagens_id = tb_classe.id;


