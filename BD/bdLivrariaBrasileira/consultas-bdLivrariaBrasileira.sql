USE bdLivrariaBrasileira

--a) O total de livros que come�am com a letra P
select count(codLivro) as 'Total de livros que come�am com P' from tbLivro
where nomeLivro like 'P%'

--b) O maior n�mero de p�ginas entre todos os livros
select max(numLivro) as 'Maior n�mero de p�ginas entre os livros' from tbLivro

--c) O menor n�mero de p�ginas entre todos os livros
select min(numLivro) as 'Menor n�mero de p�ginas entre os livros' from tbLivro

--d) A m�dia de p�ginas entre todos os livros
select avg(numLivro) as 'M�dia de p�ginas dos livros' from tbLivro

--e) A soma do n�mero de p�ginas dos livros de editora c�digo 01
select sum(numLivro) as 'Soma das p�ginas dos livros da editora de c�digo 01' from tbLivro
where codEditora = 1

--f) A soma dos n�meros de p�ginas dos livros que come�am com a letra A
select sum(numLivro) as 'Soma das p�ginas dos livros que come�am com a letra A' from tbLivro
where nomeLivro like 'A%'

--g) A m�dia dos n�meros de p�ginas dos livros que sejam do autor c�digo 03
select avg(numLivro) as 'M�dia das p�ginas dos livros que sejam do autor de c�digo 03' from tbLivro
where codAutor = 3

--h) A quantidade de livros da editora de c�digo 04
select count(codLivro) as 'Quantidade de livros da editora de c�digo 04' from tbLivro
where codEditora = 4

--i) A m�dia do n�mero de p�ginas dos livros que tenham a palavra �estrela� em seu nome
select avg(numLivro) as 'M�dia das p�ginas dos livros que tenham a palavra �estrela� em seu nome' from tbLivro
where nomeLivro like '%estrela%'

--j) A quantidade de livros que tenham a palavra �poema� em seu nome
select count(codLivro) as 'Quantidade de livros que tenham a palavra �poema� em seu nome' from tbLivro
where nomeLivro like '%poema%'