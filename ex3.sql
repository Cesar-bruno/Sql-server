CREATE DATABASE db_escola;
use db_escola;

create table tb_alunos(
id bigint auto_increment, 
nome varchar(255),
ano int,
nota decimal,
turma varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, ano, nota, turma)
VALUES ("Bruno",8, 7,"c");

INSERT INTO tb_alunos(nome, ano, nota, turma)
VALUES ("Lissandra",6, 5,"a");

INSERT INTO tb_alunos(nome, ano, nota, turma)
VALUES ("Figario",9, 9,"a");

INSERT INTO tb_alunos(nome, ano, nota, turma)
VALUES ("Carlos Alberto",6, 8,"c");

INSERT INTO tb_alunos(nome, ano, nota, turma)
VALUES ("Samira",8, 10,"b");

SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos WHERE nota >= 7;
SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET nota = 10 WHERE id = 3;



