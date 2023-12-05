	CREATE  DATABASE db_colaboradores;
    USE db_colaboradores;
    
    CREATE TABLE tb_funcionarios(
    id bigint auto_increment,
    nome varchar(255),
    cargo varchar(255),
    salario decimal,
    horas_trabalhadas int,
    PRIMARY KEY (id));
    
    INSERT INTO tb_funcionarios(nome, cargo, salario, horas_trabalhadas)
    VALUES ("Bruno", "desenvolvedor", 3.400, 8);
    
	INSERT INTO tb_funcionarios(nome, cargo, salario, horas_trabalhadas)
    VALUES ("Leonidas", "Gerente", 7.900, 9);
    
	INSERT INTO tb_funcionarios(nome, cargo, salario, horas_trabalhadas)
    VALUES ("Efigenia", "supervisora", 5.200, 8);
    
	INSERT INTO tb_funcionarios(nome, cargo, salario, horas_trabalhadas)
    VALUES ("Gregorio", "Assistente", 2.400, 7);
    
	INSERT INTO tb_funcionarios(nome, cargo, salario, horas_trabalhadas)
    VALUES ("reneclides", "Coordenador", 6.100, 9);
    
    SELECT * FROM tb_funcionarios;
    
    SELECT nome, CONCAT('R$ ', FORMAT(salario, 2, 'pt_BR')) AS preço FROM tb_funcionarios;
    
    ALTER TABLE tb_funcionarios MODIFY salario decimal(6, 2);	
    
    UPDATE tb_funcionarios SET salario = 6100.00 WHERE id = 5;
    
    SELECT * FROM tb_funcionarios WHERE salario > 2000.00;
    
	SELECT * FROM tb_funcionarios WHERE salario < 2000.00;