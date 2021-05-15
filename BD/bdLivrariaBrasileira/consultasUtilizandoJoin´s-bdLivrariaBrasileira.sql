USE bdLivrariaBrasileira

--a) A quantidade de livros agrupado pelo nome do gênero
SELECT nomeGenero AS'Gênero', COUNT(nomeLivro) AS'Quantidade de livros' FROM tbGenero
	LEFT JOIN tbLivro ON tbLivro.codGenero = tbGenero.codGenero
		GROUP BY nomeGenero

--b) A soma das páginas agrupada pelo nome do autor
SELECT nomeAutor AS'Nome do Autor', SUM(numPaginas) AS'Número de Páginas' FROM tbAutor
	INNER JOIN tbLivro ON tbLivro.codAutor = tbAutor.codAutor
		GROUP BY nomeAutor

--c) A média de páginas agrupada pelo nome do autor em ordem alfabética (de A a Z)
SELECT nomeAutor AS'Nome do Autor', AVG(numPaginas) AS'Média de Páginas' FROM tbAutor
	INNER JOIN tbLivro ON tbLivro.codAutor = tbAutor.codAutor
		GROUP BY nomeAutor
			ORDER BY nomeAutor

--d) A quantidade de livros agrupada pelo nome da editora em ordem alfabética inversa (de Z a A)
SELECT nomeEditora AS'Nome Editora', COUNT(nomeLivro) AS'Quantidade de livros' FROM tbEditora
	LEFT JOIN tbLivro ON tbLivro.codEditora = tbEditora.codEditora
		GROUP BY nomeEditora
			ORDER BY nomeEditora DESC

--e) A soma de páginas dos livros agrupados pelo nome do autor que sejam de autores cujo nome comece com a letra “C”
SELECT nomeAutor AS'Nome do Autor', SUM(numPaginas) AS'Números de Páginas' FROM tbAutor
	LEFT JOIN tbLivro ON tbLivro.codAutor = tbAutor.codAutor
		WHERE nomeAutor LIKE 'C%'
			GROUP BY nomeAutor		

--f) A quantidade de livros agrupados pelo nome do autor, cujo nome do autor seja 
--“Machado de Assis” ou “Cora Coralina” ou “Graciliano Ramos” ou “Clarice Lispector”
SELECT nomeAutor AS'Nome do Autor', COUNT(nomeLivro) AS'Quantidade de livros' FROM tbAutor
	LEFT JOIN tbLivro ON tbLivro.codAutor = tbAutor.codAutor
		WHERE nomeAutor = 'Machado de Assis' OR nomeAutor = 'Cora Coralina' OR nomeAutor = 'Graciliano Ramos'		
			GROUP BY nomeAutor

--g) A soma das páginas dos livros agrupadas pelo nome da editora cujo número de páginas esteja entre 200 e 500 (inclusive)
SELECT nomeEditora AS'Nome da Editora', SUM(numPaginas) AS 'Número de Páginas' FROM tbEditora
	INNER JOIN tbLivro ON tbLivro.codEditora = tbEditora.codEditora
		WHERE numPaginas >= 200 AND numPaginas <= 500
			GROUP BY nomeEditora 

--h) O nome dos livros ao lado do nome das editoras e do nome dos autores
SELECT nomeLivro AS'Nome do Livro', nomeEditora AS'Nome da Editora', nomeAutor AS'Nome do Autor' FROM tbLivro
	INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
		INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor

--i) O nome dos livros ao lado do nome do autor somente daqueles cujo nome da editora for “Cia das Letras”
SELECT nomeLivro AS'Nome do Livro', nomeAutor AS'Autor' FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
		INNER JOIN tbEditora ON tbLivro.codEditora = tbEditora.codEditora
			WHERE nomeEditora = 'Cia das Letras'

--j) O nome dos livros ao lado dos nomes dos autores, somente dos livros que não forem do autor “Érico Veríssimo”
SELECT nomeLivro AS'Nome do Livro', nomeAutor AS'Autor' FROM tbLivro
	INNER JOIN tbAutor ON tbLivro.codAutor = tbAutor.codAutor
		WHERE NOT nomeAutor = 'Érico Veríssimo'

--k) Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que não tem livros cadastrados
SELECT nomeAutor AS'Nome do Autor', nomeLivro AS'Livro' FROM tbAutor
	LEFT JOIN tbLivro ON tbLivro.codAutor = tbAutor.codAutor

--l) Os nomes dos autores ao lado dos nomes dos livros, inclusive daqueles que não tem autores cadastrados
SELECT nomeAutor AS'Nome do Autor', nomeLivro AS'Livro' FROM tbAutor
	RIGHT JOIN tbLivro ON tbLivro.codAutor = tbAutor.codAutor

--m) O nome dos autores ao lado dos nomes dos livros, indiferente do autor ter ou não livro publicado, 
--e indiferente do livro pertencer a algum autor
SELECT nomeAutor AS'Nome do Autor', nomeLivro AS'Livro' FROM tbAutor
	CROSS JOIN tbLivro 

--n) A editora Ática irá publicar todos os títulos dessa livraria. 
--Criar um select que associe os nomes de todos os livros ao lado do nome da editora Ática.
SELECT nomeEditora AS'Nome da Editora', nomeLivro AS'Livro' FROM tbEditora
	CROSS JOIN tbLivro 
		WHERE nomeEditora = 'Atica'

--o) Somente os nomes dos autores que não tem livros cadastrados
SELECT nomeAutor AS'Autores que não tem livros cadastrados' FROM tbAutor
	LEFT JOIN tbLivro ON tbLivro.codAutor = tbAutor.codAutor
		WHERE nomeLivro IS NULL
 
--p) Os nomes dos gêneros que não possuem nenhum livro cadastrado
SELECT nomeGenero AS'Gêneros que não possuem nenhum livro cadastrado' FROM tbGenero
	LEFT JOIN tbLivro ON tbLivro.codGenero = tbGenero.codGenero
		WHERE nomeLivro IS NULL