CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    tipo VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE tb_pizzas(
	id INT AUTO_INCREMENT,
    sabor VARCHAR(255) NOT NULL,
    preco DECIMAL NOT NULL,
    tipId INT,
    PRIMARY KEY(id),
    CONSTRAINT FK_Tipo FOREIGN KEY (tipId)
    REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo) VALUES 
	("Napolinata"),
	("Marguerita"),
	("Portuguesa"),
	("Calabrez"),
	("Muzzarela");
    
INSERT INTO tb_pizzas(sabor,preco,tipId) VALUE
	("Mussarela",30.00,2),
	("Cheddar",20.00,2),
	("A moda da casa",25.00,3),
	("Cafu",60.00,3),
	("Doritos",50.00,4),
	("Cebolitos",40.00,5),
	("Chocolate",30.00,1),
	("Doce Maria",30.00,1);


SELECT * from tb_categorias;
SELECT * from tb_pizzas WHERE preco > 45.00;
SELECT * from tb_pizzas WHERE preco > 50.00 AND preco < 100.00;
SELECT * from tb_pizzas WHERE sabor LIKE 'M%'; 

SELECT sabor, preco, tb_categorias.tipo FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.tipID;

SELECT sabor, preco, tb_categorias.tipo FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.tipID
WHERE tb_categorias.id = 1;