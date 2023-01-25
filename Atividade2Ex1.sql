CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

/* Atividade 1
Crie um banco de dados para um serviço de um Games Online. 
O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. 
O sistema trabalhará com as informações dos personagens do jogo. 
O sistema trabalhará com 2 tabelas tb_personagens e tb_classes */

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    fase INT NOT NULL
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    Idade INT NOT NULL,
    poder INT NOT NULL,
    vidas INT NOT NULL,
    fk_classes BIGINT NOT NULL,
	FOREIGN KEY (fk_classes) REFERENCES tb_classes(id)
);

-- Insira 5 registros na tabela tab_classes
INSERT INTO tb_classes(nome, fase)
VALUES("Esmeralda", 1);
INSERT INTO tb_classes(nome, fase)
VALUES("Diamante", 2);
INSERT INTO tb_classes(nome, fase)
VALUES("Ouro", 3);
INSERT INTO tb_classes(nome, fase)
VALUES("Prata", 4);
INSERT INTO tb_classes(nome, fase)
VALUES("Bronze", 5);

-- Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Miro", 4, 1500, 5, 3);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Nina", 5, 2100, 5, 4);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Bil", 2, 1100, 3, 2);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Dea", 3, 500, 2, 1);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("John", 1, 1200, 1, 2);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Babi", 4, 2500, 3, 5);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Chay", 3, 1600, 2, 3);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Bento", 5, 2200, 4, 5);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Enoc", 5, 2300, 4, 5);
INSERT INTO tb_personagens(nome, nivel, poder, vidas, fk_classes)
VALUES("Victor", 3, 800, 2, 1);

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;
SELECT * FROM tb_personagens WHERE poder > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE poder < 2000 AND poder > 1000;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

-- Faça um SELECT utilizando a cláusula INNER JOIN
SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.fk_classes;

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.fk_classes AND fk_classes = 3;

