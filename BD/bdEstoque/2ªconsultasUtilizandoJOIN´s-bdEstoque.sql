USE bdEstoque

--1. Cadastrar tr�s novos fornecedores via query;
INSERT INTO tbFornecedor(nomeFornecedor, contatoFornecedor)
VALUES ('Dia', 'Jaciara Oliveira')
       ,('Extra', 'Alice Silva')
       ,('Imperial', 'Louis Neto')

--2. Fazer uma consulta utilizando o nome do fornecedor e a descri��o dos produtos que cada fornecedor fornece;
SELECT descri��oProduto AS'Descri��o do Produto', nomeFornecedor AS'Nome do Fornecedor' FROM  tbProduto
	LEFT OUTER JOIN tbFornecedor ON tbProduto.codFornecedor = tbProduto.codProduto
	--esse N�O TA FUNCIONANDO ainda 

--3. Criar uma instru��o utilizando left join e outra utilizando right join para exibir todos os fornecedores, incluindo ainda os tr�s 
--novos fornecedores para os quais n�o foram registrados novos produtos;


--4. Cadastrar tr�s novos produtos deixando para eles o c�digo do fornecedor em branco;


--5. Criar um select utilizando a instru��o full join exibindo assim todos os fornecedores, inclusive aqueles para os quais n�o foram 
--atribu�dos produtos, e aqueles produtos para os quais n�o foram atribu�dos fornecedores;


--6. Criar um select com a instru��o cross join entre fornecedor e produto. Quantos registros a consulta retornou? O que aconteceu?
