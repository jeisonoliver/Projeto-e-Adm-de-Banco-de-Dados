/*TABELA DEPARTAMENTO*/

INSERT INTO Departamento
(Descricao, Cod_Gerente)
VALUES ('Departamento de Matematica', NULL);

INSERT INTO Departamento
(Descricao, Cod_Gerente)
VALUES ('Departamento de Musica', NULL);

INSERT INTO Departamento
(Descricao, Cod_Gerente)
VALUES ('Departamento de Sistemas', NULL);

INSERT INTO Departamento
(Descricao, Cod_Gerente)
VALUES ('Departamento de informatica ', NULL);

INSERT INTO Departamento
(Descricao, Cod_Gerente)
VALUES (NULL, NULL);

/*TABELA FUNCIONARIO*/

INSERT INTO Funcionario
(Nome, Sexo, Dat_Nasc, Salario, Cod_Dep)
values ('Jeison', 'M', '2002-01-29', 5000.00, 1);

INSERT INTO Funcionario
(Nome, Sexo, Dat_Nasc, Salario, Cod_Dep)
VALUES ('Taciano', 'M', '1981-01-01', 2500.00, 5);

INSERT INTO Funcionario
(Nome, Sexo, Dat_Nasc, Salario, Cod_Dep)
VALUES ('Mario', 'M', '1999-07-15', 4000.00, 2);

INSERT INTO Funcionario
(Nome, Sexo, Dat_Nasc, Salario, Cod_Dep)
values ('Ronaldo', 'M', '1970-05-07', 1500.00, 3);

INSERT INTO Funcionario
(Nome, Sexo, Dat_Nasc, Salario, Cod_Dep)
values ('Maria', 'F', '1979-07-13', 7000.00, 3);

/* TABELA PROJETOS */

INSERT INTO Projeto(Nome, Descricao, Cod_Depto, Cod_Responsavel, Data_Inicio, Data_Fim)
values ('ALP', 'Projeto de Algoritimos', 1, 4, '2018-02-26', '2019-06-30');

INSERT INTO Projeto(Nome, Descricao, Cod_Depto, Cod_Responsavel, Data_Inicio, Data_Fim)
values ('Monitoria', 'Projeto de Monitoria 2022', 1, 3, '2019-02-26', '2019-12-30');

INSERT INTO Projeto(Nome, Descricao, Cod_Depto, Cod_Responsavel, Data_Inicio, Data_Fim)
values ('Banco de Dados', 'Projeto de Banco de Dados', 3, 4, '2018-02-26', '2018-06-30');

INSERT INTO Projeto(Nome, Descricao, Cod_Depto, Cod_Responsavel, Data_Inicio, Data_Fim)
values ('Egengaria', 'Projeto de Engenharia', 3, 1, '2018-02-26', '2018-06-30');

INSERT INTO Projeto(Nome, Descricao, Cod_Depto, Cod_Responsavel, Data_Inicio, Data_Fim)
values ('POO', 'Projeto de Programação', 1, 9, '2018-02-26', '2018-06-30');

/* TABELA DE ATIVIDADES */

INSERT INTO Atividade(Nome, Descricao, Cod_Responsavel, Data_Inicio, Data_Fim)
values ('ATV','Atividade 1', 8, '2018-08-26', '2018-09-30');

INSERT INTO Atividade(Nome, Descricao, Cod_Responsavel, Data_Inicio, Data_Fim)
values ('ATV','Atividade 2', 3, '2018-08-26', '2018-09-30');

INSERT INTO Atividade(Nome, Descricao, Cod_Responsavel, Data_Inicio, Data_Fim)
values ('ATV','Atividade 5', 5, '2018-08-26', '2018-09-30');

INSERT INTO Atividade(Nome, Descricao, Cod_Responsavel, Data_Inicio, Data_Fim)
values ('ATV','Atividade 3', 9, '2018-08-26', '2018-09-30');

INSERT INTO Atividade(Nome, Descricao, Cod_Responsavel, Data_Inicio, Data_Fim)
values ('ATV','Atividade 4', 2, '2018-08-26', '2018-09-30');

/* TABELA ATIVIDADE PROJETO*/

INSERT INTO Atividade_Projeto(Codigo_Projeto, Codigo_Atividade)
VALUES(1,4);
INSERT INTO Atividade_Projeto(Codigo_Projeto, Codigo_Atividade)
VALUES(2,8);
INSERT INTO Atividade_Projeto(Codigo_Projeto, Codigo_Atividade)
VALUES(3,9);
INSERT INTO Atividade_Projeto(Codigo_Projeto, Codigo_Atividade)
VALUES(4,4);
INSERT INTO Atividade_Projeto(Codigo_Projeto, Codigo_Atividade)
VALUES(5,10);