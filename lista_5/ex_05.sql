CREATE DATABASE bd_clinica;
USE bd_clinica;

CREATE TABLE medicos (
	id_medico int primary key auto_increment,
    nome varchar(80),
    especialidade varchar(60)
);

CREATE TABLE consultas (
	id_consulta int primary key auto_increment,
    paciente varchar(80),
    cidade varchar(50),
    status_consulta varchar(30),
    id_medico int not null,
    foreign key (id_medico) references medicos (id_medico)
);

INSERT INTO medicos (nome, especialidade) VALUES
("Dra.Ana Martins", "Cardiologia"),
("Dr.Paulo Mendes", "Ortopedia"),
("Dra.Carla Souza", "Pediatra"),
("Dr.Ricardo Lima ", "Dermatologia")
;

INSERT INTO consultas (paciente, cidade, status_consulta, id_medico) VALUES
("João Silva", "São Paulo", "Confirmada", 1),
("Marcos Costa", "Campinas", "Pendente", 2),
("Pedro Alves", "São Paulo", "Confirmada", 3),
("Larissa Rocha", "São Paulo", "Cancelada", 4),
("Bruno Lima", "São Paulo", "Confirmada", 1),
("Carla Mendes", "Jundiaí", "Confirmada", 2)
;

SELECT nome, especialidade, paciente
FROM medicos AS m
INNER JOIN consultas AS c
	ON c.id_medico = m.id_medico
WHERE cidade = "São Paulo"
;

SELECT nome, paciente, status_consulta
FROM medicos AS m
INNER JOIN consultas AS c
	ON m.id_medico = c.id_medico
ORDER BY nome
;