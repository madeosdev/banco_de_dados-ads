CREATE DATABASE EventosDB;
USE EventosDB;

CREATE TABLE locais (
	id int primary key auto_increment,
    nome varchar(100),
    cidade varchar(50)
);

CREATE TABLE eventos (
	id int primary key auto_increment,
    nome varchar(100),
    data_evento date,
    id_local int not null,
    foreign key (id_local) references locais (id)
);

CREATE TABLE ingressos (
	id int primary key auto_increment,
    tipo varchar(50),
    preco decimal (8,2),
    id_evento int not null,
    foreign key (id_evento) references eventos (id)
);

INSERT INTO locais (nome, cidade) VALUES
('Centro de Convenções Anhembi', 'São Paulo'),
('Arena Vivo Rio', 'Rio de Janeiro')
;

INSERT INTO eventos (nome, data_evento, id_local) VALUES
('Tech Summit 2024', '2024-05-15', 1),
('Feira Gastronômica Internacional', '2024-06-20', 1),
('Festival Rock & Pop', '2024-07-10', 2),
('Simpósio de Medicina e Saúde', '2024-08-05', 2)
;

INSERT INTO ingressos (tipo, preco, id_evento) VALUES
('Padrão', 150.00, 1),
('VIP com Networking', 350.00, 1),
('Entrada Geral', 40.00, 2),
('Pista Premium', 220.00, 3),
('Camarote Open Bar', 450.00, 3),
('Profissional', 200.00, 4)
;

SELECT *
FROM eventos AS e
INNER JOIN locais AS l
	ON l.id = e.id_local
;

SELECT *
FROM ingressos AS i
INNER JOIN eventos AS e
	ON e.id = i.id_evento
INNER JOIN locais AS l
	ON l.id = e.id_local
;