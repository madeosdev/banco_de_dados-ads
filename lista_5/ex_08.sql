CREATE DATABASE bd_faculdade;
USE bd_faculdade;

CREATE TABLE professores (
	id_professor int primary key auto_increment,
    nome varchar(80),
    area varchar(60)
);

CREATE TABLE disciplinas (
	id_disciplina int primary key auto_increment,
    id_professor int not null,
    foreign key (id_professor) references professores (id_professor),
    nome_disciplina varchar(80), 
    periodo int not null,
    turno varchar(20)
);

INSERT INTO professores (nome, area) VALUES
("Marcos Oliveira", "Programação"),
("Helena Souza", "Banco de Dados"),
("Ricardo Alves", "Redes"),
("Paula Mendes", "Engenharia de Software")
;

INSERT INTO disciplinas (id_professor, nome_disciplina, periodo, turno) VALUES
(1, "Algoritmos", 1, "Manhã"),
(2, "SQL", 2, "Noite"),
(3, "Redes de Computadores", 3, "Tarde"),
(4, "Análise de Sistemas", 2, "Noite"),
(1, "Programação Web", 3, "Manhã"),
(2, "Administração de Banco de Dados", 4, "Noite" )
;

SELECT nome, area, nome_disciplina
FROM professores AS p
INNER JOIN disciplinas AS d
	ON d.id_professor = p.id_professor
;

SELECT nome_disciplina, periodo, nome, area
FROM disciplinas AS d
INNER JOIN professores AS p
	ON d.id_professor = p.id_professor
WHERE periodo = 2 && area = "Banco de Dados" || area = "Engenharia de Software"
;

SELECT nome_disciplina, nome, periodo
FROM disciplinas AS d
INNER JOIN professores AS p
	ON d.id_professor = p.id_professor
ORDER BY periodo ASC
;