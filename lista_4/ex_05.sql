CREATE DATABASE HospitalDB;
USE HospitalDB;

CREATE TABLE pacientes (
	id int primary key auto_increment,
    nome varchar(100),
    cpf varchar(14)
);

CREATE TABLE consultas (
	id int primary key auto_increment,
    data_consulta date,
    medico varchar(100),
    id_paciente int not null,
    foreign key (id_paciente) references pacientes (id)
);

CREATE TABLE prescricoes (
	id int primary key auto_increment,
    medicamento varchar(100),
    dosagem varchar(50),
    id_consulta int not null,
    foreign key (id_consulta) references consultas (id)
);

INSERT INTO pacientes (nome, cpf) VALUES
('Juliana Mendes Silva', '123.456.789-00'),
('Marcos Vinicius Costa', '987.654.321-11'),
('Amanda Ribeiro Paes', '456.789.123-22')
;

INSERT INTO consultas (data_consulta, medico, id_paciente) VALUES
('2024-02-10', 'Dr. Roberto Alencar (Cardiologia)', 1),
('2024-03-15', 'Dra. Vanessa Lima (Dermatologia)', 1),
('2024-03-01', 'Dr. Fernando Oliveira (Ortopedia)', 2),
('2024-03-05', 'Dra. Camila Duarte (Clínica Geral)', 3),
('2024-03-20', 'Dr. Roberto Alencar (Cardiologia)', 3)
;

INSERT INTO prescricoes (medicamento, dosagem, id_consulta) VALUES
('Atenolol 50mg', '1 comprimido pela manhã', 1),
('Anlodipino 5mg', '1 comprimido à noite', 1),
('Pomada Dermatológica X', 'Aplicar 2x ao dia', 2),
('Anti-inflamatório Y', '1 comprimido de 8 em 8 horas', 3),
('Analgésico Z', 'Tomar se houver dor', 3),
('Vitamina C 1g', '1 efervescente ao dia', 4),
('Losartana 50mg', '1 comprimido pela manhã', 5)
;

SELECT *
FROM consultas AS c
INNER JOIN prescricoes AS p
	ON c.id = p.id_consulta
;

SELECT *
FROM prescricoes AS p
INNER JOIN consultas AS c
	ON c.id = p.id_consulta
INNER JOIN pacientes AS pa
	ON pa.id = c.id_paciente
;