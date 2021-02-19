USE bdLivrariaBrasileira

--a) O total de livros que começam com a letra P
select count(codLivro) as 'Total de livros que começam com P' from tbLivro
where nomeLivro like 'P%'

--b) O maior número de páginas entre todos os livros
select max(numLivro) as 'Maior número de páginas entre os livros' from tbLivro

--c) O menor número de páginas entre todos os livros
select min(numLivro) as 'Menor número de páginas entre os livros' from tbLivro

--d) A média de páginas entre todos os livros
select avg(numLivro) as 'Média de páginas dos livros' from tbLivro

--e) A soma do número de páginas dos livros de editora código 01
select sum(numLivro) as 'Soma das páginas dos livros da editora de código 01' from tbLivro
where codEditora = 1

--f) A soma dos números de páginas dos livros que começam com a letra A
select sum(numLivro) as 'Soma das páginas dos livros que começam com a letra A' from tbLivro
where nomeLivro like 'A%'

--g) A média dos números de páginas dos livros que sejam do autor código 03
select avg(numLivro) as 'Média das páginas dos livros que sejam do autor de código 03' from tbLivro
where codAutor = 3

--h) A quantidade de livros da editora de código 04
select count(codLivro) as 'Quantidade de livros da editora de código 04' from tbLivro
where codEditora = 4

--i) A média do número de páginas dos livros que tenham a palavra “estrela” em seu nome
select avg(numLivro) as 'Média das páginas dos livros que tenham a palavra “estrela” em seu nome' from tbLivro
where nomeLivro like '%estrela%'

--j) A quantidade de livros que tenham a palavra “poema” em seu nome
select count(codLivro) as 'Quantidade de livros que tenham a palavra “poema” em seu nome' from tbLivro
where nomeLivro like '%poema%'