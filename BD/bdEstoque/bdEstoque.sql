create database bdEstoque
use bdEstoque 

create table tbCliente(
     codCliente int primary key identity (1,1)
     , nomeCliente varchar(50) not null
     , cpfCliente varchar (14) not null
     , emailCliente varchar(45) not null
     , sexoCliente varchar(9) 
     , dataNascimentoCliente smalldatetime not null
)

create table tbFabricante(
      codFabricante int primary key identity(1,1)
      , nomeFabricante varchar(50) not null
)

create table tbFornecedor(
      codFornecedor int primary key identity(1,1)
      , nomeFornecedor varchar(50) not null
      , contatoFornecedor varchar(15) not null
)

create table tbProduto(
     codProduto int primary key identity(1,1)
     , descricaoProduto varchar(50) not null 
     , valorProduto smallmoney not null
     , quantidadeProduto int not null
     , codFabricante int foreign key references tbFabricante(codFabricante) 
     , codFornecedor int foreign key references tbFornecedor(codFornecedor)
)

create table tbVenda(
     codVenda int primary key identity(1,1)
     , dataVenda date not null
     , valorTotalVenda smallmoney not null
     , codCliente int foreign key references tbCliente(codCliente)
)

create table tbItensVenda(
     codItensVenda int primary key identity(1,1)
     , codVenda int foreign key references tbVenda(codVenda)
     , codProduto int foreign key references tbProduto(codProduto)
     , quantidadeItensVenda int not null
     , subTotalItensVenda smallmoney not null
)
