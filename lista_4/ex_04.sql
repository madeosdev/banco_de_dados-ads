CREATE DATABASE RestauranteDB;
USE RestauranteDB;

CREATE TABLE mesas (
	id int primary key auto_increment,
    numero_mesa int not null,
    capacidade int not null
);

CREATE TABLE reservas (
	id int primary key auto_increment,
    data_reserva date,
    hora_reserva time,
    id_mesa int not null,
    foreign key (id_mesa) references mesas (id)
);

CREATE TABLE pedidos_mesa (
	id int primary key auto_increment,
    prato varchar(100),
    quantidade int not null,
    id_reserva int not null,
    foreign key (id_reserva) references reservas (id)
);

INSERT INTO mesas (numero_mesa, capacidade) VALUES
(10, 2),
(11, 4),
(12, 6)
;

INSERT INTO reservas (data_reserva, hora_reserva, id_mesa) VALUES
('2024-04-10', '19:30:00', 1),
('2024-04-10', '20:00:00', 2),
('2024-04-11', '12:30:00', 2),
('2024-04-11', '21:00:00', 3)
;

INSERT INTO pedidos_mesa (prato, quantidade, id_reserva) VALUES
('Filé Mignon ao Molho Madeira', 2, 1),
('Suco Natural de Laranja', 2, 1),
('Lasanha à Bolonhesa', 3, 2),
('Risoto de Cogumelos', 3, 3),
('Salmão Grelhado', 4, 4),
('Garrafa de Vinho Tinto', 1, 4)
;

SELECT *
FROM reservas AS r
INNER JOIN mesas AS m
	ON m.id = r.id_mesa
;

SELECT *
FROM pedidos_mesa AS p
INNER JOIN reservas AS r
	ON r.id = p.id_reserva
INNER JOIN mesas AS m
	ON m.id = r.id_mesa
;