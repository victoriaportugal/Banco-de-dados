CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT,
	tiposmundo VARCHAR (100) NOT NULL,
	mundo VARCHAR (100) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_classes(tiposmundo, mundo) 
VALUES ("Selvagens", "Selvaria");
INSERT INTO tb_classes(tiposmundo, mundo) 
VALUES ("Aquaticos", "Aguatlantida");
INSERT INTO tb_classes(tiposmundo, mundo) 
VALUES ("Povo do céu", "Céu");
INSERT INTO tb_classes(tiposmundo, mundo) 
VALUES ("Fogueiros", "Fogolandia");
INSERT INTO tb_classes(tiposmundo, mundo) 
VALUES ("Terreiros", "Terra e Fim");

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT,
	nomepersonagem VARCHAR (100) NOT NULL,
	habilidades VARCHAR (100) NOT NULL,
	ataque INT,
	defesa INT,
    PRIMARY KEY (id)
);

INSERT INTO tb_personagens(nomepersonagem, habilidades, ataque, defesa) 
VALUES ("Koda", "Nadar", 1600, 3000);
INSERT INTO tb_personagens(nomepersonagem, habilidades, ataque, defesa) 
VALUES ("Panju", "Ar", 3550, 1200);
INSERT INTO tb_personagens(nomepersonagem, habilidades, ataque, defesa)  
VALUES ("Lola", "Fogo",  5700, 300);
INSERT INTO tb_personagens(nomepersonagem, habilidades, ataque, defesa) 
VALUES ("Deishu", "Rastejar", 8900, 1200);
INSERT INTO tb_personagens(nomepersonagem, habilidades, ataque, defesa) 
VALUES ("Apolis", "Ar",  780, 4600);
INSERT INTO tb_personagens(nomepersonagem, habilidades, ataque, defesa) 
VALUES ("Santyna", "Nadar",  5550, 700);
INSERT INTO tb_personagens(nomepersonagem, habilidades, ataque, defesa) 
VALUES ("Pilmer", "Ar",  6000, 860);
INSERT INTO tb_personagens(nomepersonagem, habilidades, ataque, defesa) 
VALUES ("Astolfo", "Rastejar",  510, 2800);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

ALTER TABLE tb_personagens ADD classesid BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classesid) REFERENCES tb_classes (id);

UPDATE tb_personagens SET classesid = 2 WHERE id = 1;
UPDATE tb_personagens SET classesid = 3 WHERE id = 2;
UPDATE tb_personagens SET classesid = 4 WHERE id = 3;
UPDATE tb_personagens SET classesid = 5 WHERE id = 4;
UPDATE tb_personagens SET classesid = 1 WHERE id = 5;
UPDATE tb_personagens SET classesid = 2 WHERE id = 6;
UPDATE tb_personagens SET classesid = 3 WHERE id = 7;
UPDATE tb_personagens SET classesid = 5 WHERE id = 8;

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa > 1000 AND defesa < 2000;
SELECT * FROM tb_personagens WHERE nomepersonagem LIKE "%C%";

SELECT nomepersonagem, habilidades, ataque, defesa, tb_classes.tiposmundo, tb_classes.mundo
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classesid = tb_classes.id;

SELECT nomepersonagem, habilidades, ataque, defesa, tb_classes.tiposmundo, tb_classes.mundo
FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.classesid = tb_classes.id
WHERE tiposmundo = 'Fogueiros';