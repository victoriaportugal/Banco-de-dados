CREATE DATABASE db_e_commerce;
USE db_e_commerce;

CREATE TABLE tb_comercio(
id BIGINT AUTO_INCREMENT,
nome_produto  VARCHAR(100) NOT NULL,
preco DECIMAL, 
data_compra DATE,
origem VARCHAR(100) NOT NULL,
desconto DECIMAL (5,2),
PRIMARY KEY (id)
);

INSERT INTO tb_comercio(nome_produto, preco, data_compra, origem, desconto)
VALUES("Lapis", 12.00, "2021-10-21", "Paraguai", 00.00),
("Caderno", 45.00, "2021-02-11", "Paraguai", 2.00),
("estojo", 23.00, "2021-02-11", "Brasil", 10.00),
("Mochila", 140.00, "2022-01-03", "Brasil", 20.00),
("Borracha", 10.00, "2022-11-02", "Brasil", 2.00),
("Lancheira", 120.00, "2022-01-03", "Brasil", 13.00),
("Apontador", 17.00, "2022-03-30", "Paraguai", 10.00),
("Caneta", 13.00, "2021-10-21", "Brasil", 2.00),
("Kit completo só material", 340.00, "2022-03-30", "Paraguai", 00.00),
("Kit completo com skate/ponei", 530.00, "2022-03-30", "Paraguai", 00.00);

SELECT * FROM tb_comercio WHERE preco > 500.00;

SELECT * FROM tb_comercio WHERE preco < 500.00;

SELECT * FROM tb_comercio;

UPDATE tb_comercio SET desconto = 10.00, preco = 477.00 WHERE id = 10;

