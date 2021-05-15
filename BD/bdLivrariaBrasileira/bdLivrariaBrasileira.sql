CREATE DATABASE bdLivrariaBrasileira
USE bdLivrariaBrasileira

CREATE TABLE tbAutor (
  codAutor int primary key identity (1,1)
  ,nomeAutor varchar (50) not null
)

CREATE TABLE tbEditora (
  codEditora int primary key identity (1,1)
  , nomeEditora varchar (50) not null
)

CREATE TABLE tbGenero (
  codGenero int primary key identity (1,1)
  , nomeGenero varchar (50) not null
)

CREATE TABLE tbLivro (
  codLivro int primary key identity (1,1)
  , nomeLivro varchar (50) not null
  , numPaginas int not null
  , codGenero int foreign key references tbGenero (codGenero)
  , codAutor int foreign key references tbAutor (codAutor)
  , codEditora int foreign key references tbEditora (codEditora)
)