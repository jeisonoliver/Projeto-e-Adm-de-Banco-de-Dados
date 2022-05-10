CREATE TABLE Departamento(
	Codigo SERIAL ,
	Descricao VARCHAR(100),
	Cod_Gerente INT,
	PRIMARY KEY(Codigo)
);

	
CREATE TABLE Funcionario(
	Codigo INT DEFAULT NEXTVAL('AUTO_INCREMENT'),
	Nome VARCHAR(50),
	Sexo CHAR(1),
	Dat_Nasc DATE,
	Salario DECIMAL(10,2),
	Cod_Dep INT,
	PRIMARY KEY(Codigo),
	FOREIGN KEY(Cod_Dep) REFERENCES Departamento(Codigo)
);

CREATE TABLE Projeto(
	Codigo SERIAL,
	Nome VARCHAR(50),
	Descricao VARCHAR(100),
	Cod_Depto INT,
	Cod_Responsalvel INT,
	Data_Inicio DATE,
	Data_Fim DATE,
	PRIMARY KEY(Codigo),
	FOREIGN KEY(Cod_Depto) REFERENCES Departamento(Codigo)
);

CREATE TABLE Atividade(
	Codigo SERIAL,
	Nome VARCHAR(50),
	Descricao VARCHAR(100),
	Cod_Responsavel INT,
	Data_Inicio DATE,
	Data_Fim DATE,
	PRIMARY KEY(Codigo),
	FOREIGN KEY(Cod_Responsavel) REFERENCES Funcionario(Codigo)
);

CREATE TABLE Atividade_Projeto(
	Codigo_Projeto INT,
	Codigo_Atividade INT,
	PRIMARY KEY(Codigo_Projeto, Codigo_Atividade),
	FOREIGN KEY(Codigo_Projeto) REFERENCES Projeto(Codigo),
	FOREIGN KEY(Codigo_Atividade) REFERENCES Atividade(Codigo)
);

ALTER TABLE Departamento ADD CONSTRAINT Dep_Gerente FOREIGN KEY(Cod_Gerente) REFERENCES Funcionario(Codigo);