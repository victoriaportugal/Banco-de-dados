CREATE DATABASE db_servicosrh;
USE db_servicosrh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome  VARCHAR(255) NOT NULL, 
idade INT,
datanascimento DATE,
profissao VARCHAR(255) NOT NULL,
salario DECIMAL (10, 2),
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, idade, datanascimento, profissao, salario)
VALUES("Andre", 30, "2023-10-12", "Desenvolvedor de Software", 5000.00),
("Andressa", 20, "2023-02-21", "Analista de dados", 4500.00),
("Carlos", 26, "2023-12-29", "UX design", 3200.00),
("Paulo", 37, "2023-05-15", "Estagiario", 1400.00),
("Valeria", 48, "2023-05-02", "CTO", 53000.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET idade = 31 WHERE id = 1;

SELECT * FROM tb_colaboradores;

