create database bdLivrariaBrasileira

use bdLivrariaBrasileira

create table tbAutor (
  codAutor int primary key identity (1,1)
  ,nomeAutor varchar (50) not null
)

create table tbEditora (
  codEditora int primary key identity (1,1)
  , nomeEditora varchar (50) not null
)

create table tbGenero (
  codGenero int primary key identity (1,1)
  , nomeGenero varchar (50) not null
)

create table tbLivro (
  codLivro int primary key identity (1,1)
  , nomeLivro varchar (50) not null
  , numLivro int not null
  , codGenero int foreign key references tbGenero (codGenero)
  , codAutor int foreign key references tbAutor (codAutor)
  , codEditora int foreign key references tbEditora (codEditora)
)