use bdLivrariaBrasileira

insert into tbAutor (nomeAutor)
values ('Machado de Assis')
       , ('Cora Coralina')
	   , ('Graciliano Ramos')
	   , ('Clarice Lispector')
	   , ('EricoVerissimo')

select * from tbAutor 

insert into tbEditora (nomeEditora)
values ('Cia das Letras')
       , ('Atica')
	   , ('Saraiva')

select * from tbEditora

insert into tbGenero (nomeGenero)
values ('Romance')
       , ('Posia')
	   , ('Literatura Brasileira')

select * from tbGenero

insert into tbLivro (nomeLivro, numLivro, codGenero, codAutor, codEditora)
values ('Dom Casmurro', 150, 1, 1, 1)
       , ('O Alienista', 130, 3, 1, 1)
	   , ('Quincas Borba', 100, 1, 1, 1)
	   , ('Villa Boa de Goyaz', 50, 2, 2, 1)
	   , ('Poema do milho', 35, 2, 2, 1)
	   , ('Meu livro de cordel', 55, 2, 2, 2)
	   , ('Vidas Secas', 100, 1, 3, 2)
	   , ('Viventes das Alagoas', 233, 3, 3, 2)
	   , ('Insônia', 196, 3, 3, 2)
	   , ('A Hora da Estrela', 90, 1, 4, 2)
	   , ('A Paixão Segundo G.H.', 456, 1, 4, 3)
	   , ('Água Viva', 92, 2, 4, 3)
	   , ('O Continente', 100, 3, 5, 3) 
	   , ('Clarissa', 162, 3, 5, 3)
	   , ('Música ao Longe', 207, 2, 5, 3)

select * from tbLivro