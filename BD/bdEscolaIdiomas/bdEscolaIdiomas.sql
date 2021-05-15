CREATE DATABASE bdEscolaIdiomas

USE bdEscolaIdiomas

CREATE TABLE tbAluno (
	codAluno INT PRIMARY KEY IDENTITY (1,1) 
	, nomeAluno VARCHAR(50) NOT NULL
	, dataNascAluno SMALLDATETIME NOT NULL
	, rgAluno VARCHAR(12) NOT NULL
	, naturalidadeAluno VARCHAR(2) NOT NULL
)

CREATE TABLE tbCurso (
	codCurso INT PRIMARY KEY IDENTITY (1,1)
	, nomeCurso VARCHAR(50) NOT NULL
	, cargahorariaCurso INT NOT NULL 
	, valorCurso SMALLMONEY NOT NULL 
)

CREATE TABLE tbTurma (
	codTurma INT PRIMARY KEY IDENTITY (1,1)
	, nomeTurma VARCHAR(30) NOT NULL
	, codCurso INT FOREIGN KEY REFERENCES tbCurso(codCurso) NOT NULL
	, horarioTurma SMALLDATETIME NOT NULL
)

CREATE TABLE tbMatricula (
	codMatricula INT PRIMARY KEY IDENTITY (1,1)
	, dataMatricula SMALLDATETIME NOT NULL
	, codAluno INT FOREIGN KEY REFERENCES tbAluno(codAluno) NOT NULL
	, codTurma INT FOREIGN KEY REFERENCES tbTurma(codTurma) NOT NULL
)