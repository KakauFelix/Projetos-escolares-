CREATE DATABASE bdRecursosHumanos

USE bdRecursosHumanos

CREATE TABLE tbDepartamento(
  codDepartamento INT PRIMARY KEY IDENTITY (1,1)
  , nomeDepartamento VARCHAR (50) NOT NULL
)

CREATE TABLE tbFuncionario(
  codFuncionario INT PRIMARY KEY IDENTITY (1,1)
  ,nomeFuncionario VARCHAR (50) NOT NULL
  ,cpfFuncionario VARCHAR (14) NOT NULL
  ,sexoFuncionario VARCHAR (9) NOT NULL
  ,dataNascimentoFuncionario DATE NOT NULL
  ,salarioFuncionario SMALLMONEY NOT NULL
  ,codDepartamento INT FOREIGN KEY REFERENCES tbDepartamento(codDepartamento)
)

CREATE TABLE tbDependente(
  codDependente INT PRIMARY KEY IDENTITY (1,1)
  , nomeDependente VARCHAR (50) NOT NULL
  , dataNascimentoDependente DATE NOT NULL
  , sexoDependente VARCHAR (9) NOT NULL
  , codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(codFuncionario)
)