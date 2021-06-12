USE bdEstoque

--1. Cadastrar três novos fornecedores via query;
INSERT INTO tbFornecedor(nomeFornecedor, contatoFornecedor)
VALUES ('Dia', 'Jaciara Oliveira')
       ,('Extra', 'Alice Silva')
       ,('Imperial', 'Louis Neto')

--2. Fazer uma consulta utilizando o nome do fornecedor e a descrição dos produtos que cada fornecedor fornece;
SELECT descriçãoProduto AS'Descrição do Produto', nomeFornecedor AS'Nome do Fornecedor' FROM  tbProduto
	LEFT OUTER JOIN tbFornecedor ON tbProduto.codFornecedor = tbProduto.codProduto
	--esse NÃO TA FUNCIONANDO ainda 

--3. Criar uma instrução utilizando left join e outra utilizando right join para exibir todos os fornecedores, incluindo ainda os três 
--novos fornecedores para os quais não foram registrados novos produtos;


--4. Cadastrar três novos produtos deixando para eles o código do fornecedor em branco;


--5. Criar um select utilizando a instrução full join exibindo assim todos os fornecedores, inclusive aqueles para os quais não foram 
--atribuídos produtos, e aqueles produtos para os quais não foram atribuídos fornecedores;


--6. Criar um select com a instrução cross join entre fornecedor e produto. Quantos registros a consulta retornou? O que aconteceu?
