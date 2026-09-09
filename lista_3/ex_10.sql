CREATE DATABASE ConcessionariaDB;
USE ConcessionariaDB;

CREATE TABLE marcas (
	id int primary key auto_increment,
    nome varchar(100),
    pais_origem varchar(50)
);

CREATE TABLE carros (
	id int primary key auto_increment,
    nome varchar(100),
    ano int not null,
    preco decimal (8, 2),
    id_marca int not null,
    foreign key (id_marca) references marcas(id)
);

INSERT INTO marcas (nome, pais_origem) VALUES
('Toyota', 'Japão'),
('Volkswagen', 'Alemanha'),
('Chevrolet', 'Estados Unidos')
;

INSERT INTO carros (nome, ano, preco, id_marca) VALUES
('Corolla Cross', 2024, 179990.00, 1),
('Yaris Hatch', 2023, 99800.00, 1),
('Nivus Highline', 2024, 148500.00, 2),
('Polo Track', 2023, 87900.00, 2),
('Tracker LTZ', 2024,144000.00, 3)
;

SELECT *
FROM carros AS c
INNER JOIN marcas AS m
	ON m.id = c.id_marca
;