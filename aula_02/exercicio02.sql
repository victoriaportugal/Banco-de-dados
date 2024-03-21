CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT,
	nome_pizza VARCHAR (100) NOT NULL,
	valor DECIMAL(6,2) NOT NULL ,
    tamanho VARCHAR (100) NOT NULL,
	tipo_massa VARCHAR (100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_pizzas(nome_pizza, valor, tamanho, tipo_massa) 
VALUES ("Bahiana", 45.00,"Grade", "Vegana");
INSERT INTO tb_pizzas(nome_pizza, valor, tamanho, tipo_massa) 
VALUES ("Jardineira", 32.00, "Broto", "Vegana");
INSERT INTO tb_pizzas(nome_pizza, valor, tamanho, tipo_massa) 
VALUES ("Portuguesa", 45.00, "Grade", "Artesanal");
INSERT INTO tb_pizzas(nome_pizza, valor, tamanho, tipo_massa) 
VALUES ("Queijo", 28.00, "Grade", "Vegana");
INSERT INTO tb_pizzas(nome_pizza, valor, tamanho, tipo_massa) 
VALUES ("Calabresa", 35.00, "Broto", "Artesanal");
INSERT INTO tb_pizzas(nome_pizza, valor, tamanho, tipo_massa) 
VALUES ("Romeu e Julieta", 47.00, "Grade", "Artesanal");
INSERT INTO tb_pizzas(nome_pizza, valor, tamanho, tipo_massa) 
VALUES ("Beijinho", 53.00,"Grade", "Vegana");
INSERT INTO tb_pizzas(nome_pizza, valor, tamanho, tipo_massa) 
VALUES ("Prestigio", 62.00, "Grade", "Artesanal");

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
	sabor VARCHAR (100) NOT NULL,
	borda_recheada VARCHAR (100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_categorias(sabor, borda_recheada) 
VALUES ("Doce", "Doce de leite");
INSERT INTO tb_categorias(sabor, borda_recheada) 
VALUES ("Salgada", "Catupiry");
INSERT INTO tb_categorias(sabor, borda_recheada) 
VALUES ("Salgada", "Queijo");
INSERT INTO tb_categorias(sabor, borda_recheada) 
VALUES ("Salgada", "Cheddar");
INSERT INTO tb_categorias(sabor, borda_recheada) 
VALUES ("Doce", "Chocolate");

SELECT * FROM tb_categorias;
SELECT * FROM tb_pizzas;

ALTER TABLE tb_pizzas ADD categoriasid BIGINT;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (categoriasid) REFERENCES tb_categorias (id);

UPDATE tb_pizzas SET categoriasid = 2 WHERE id = 1;
UPDATE tb_pizzas SET categoriasid = 3 WHERE id = 2;
UPDATE tb_pizzas SET categoriasid = 2 WHERE id = 3;
UPDATE tb_pizzas SET categoriasid = 4 WHERE id = 4;
UPDATE tb_pizzas SET categoriasid = 2 WHERE id = 5;
UPDATE tb_pizzas SET categoriasid = 1 WHERE id = 6;
UPDATE tb_pizzas SET categoriasid = 1 WHERE id = 7;
UPDATE tb_pizzas SET categoriasid = 5 WHERE id = 8;

SELECT * FROM tb_pizzas WHERE valor > 45.00;
SELECT * FROM tb_pizzas WHERE valor > 50.00 AND valor < 100.00;
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE "%m%";

SELECT nome_pizza, valor, tamanho, tipo_massa, tb_categorias.sabor, tb_categorias.borda_recheada
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriasid = tb_categorias.id;

SELECT nome_pizza, valor, tamanho, tipo_massa, tb_categorias.sabor, tb_categorias.borda_recheada
FROM tb_pizzas 
INNER JOIN tb_categorias ON tb_pizzas.categoriasid = tb_categorias.id
WHERE sabor = 'Doce';