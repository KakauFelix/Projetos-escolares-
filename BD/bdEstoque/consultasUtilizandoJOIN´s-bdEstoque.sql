USE bdEstoque

--a) Listar as descri��es dos produtos ao lado do nome dos fabricantes;
SELECT descri��oProduto AS'Descri��o do Produto', nomeFabricante AS'Nome do Fabricante' FROM tbProduto
	INNER JOIN tbFabricante ON tbProduto.codFabricante = tbFabricante.codFabricante

--b) Listar as descri��es dos produtos ao lado do nome dos fornecedores;
SELECT descri��oProduto AS'Descri��o do Produto', nomeFornecedor AS'Nome do Fornecedor' FROM tbProduto
	INNER JOIN tbFornecedor ON tbProduto.codFornecedor = tbFornecedor.codFornecedor

--c) Listar a soma das quantidades dos produtos agrupadas pelo nome do fabricante;
SELECT nomeFabricante AS'Nome do Fabricante', SUM(quantidadeProduto) AS'Quantidade de produtos' FROM tbFabricante
	INNER JOIN tbProduto ON tbProduto.codFabricante = tbFabricante.codFabricante
		GROUP BY nomeFabricante

--d) Listar o total das vendas ao lado do nome do cliente;
SELECT nomeCliente AS'Nome do Cliente', valorTotalVenda AS'Total da Venda' FROM tbCliente
	INNER JOIN tbVenda ON tbVenda.codCliente = tbCliente.codCliente

--e) Listar a m�dia dos pre�os dos produtos agrupados pelo nome do fornecedor;
SELECT nomeFornecedor AS'Nome do Fornecedor', AVG(valorProduto) AS'M�dia dos pre�os dos produtos' FROM tbFornecedor
	INNER JOIN tbProduto ON tbProduto.codFornecedor = tbFornecedor.codFornecedor
		GROUP BY nomeFornecedor

--f) Listar todas a soma das vendas agrupadas pelo nome do cliente em ordem alfab�tica;

--g) Listar a soma dos pre�os dos produtos agrupados pelo nome do fabricante;

--h) Listar a m�dia dos pre�os dos produtos agrupados pelo nome do fornecedor

--i) Listar a soma das vendas agrupadas pelo nome do produto

--j) Listar a soma das vendas pelo nome do cliente somente das vendas realizadas em fevereiro de 2014
 