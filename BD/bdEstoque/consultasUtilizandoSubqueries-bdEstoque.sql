USE bdEstoque

--1. Criar uma consulta que retorne o c�digo do produto, o nome do produto e o nome do fabricante somente daqueles 
--produtos que custam igual ao valor mais alto;
SELECT codProduto AS'C�digo do Produto', descricaoProduto AS'Nome do Produto', nomeFabricante AS'Nome do Fabricante' FROM tbProduto
INNER JOIN tbFabricante ON tbProduto.codFabricante = tbFabricante.codFabricante
WHERE valorProduto IN (SELECT MAX(valorProduto) FROM tbProduto)

--2. Criar uma consulta que retorne o nome do produto e o nome do fabricante e o valor somente dos produtos que custem 
--acima do valor m�dio dos produtos em estoque
SELECT descricaoProduto AS'Nome do Produto', nomeFabricante AS'Nome do Fabricante', valorProduto AS'Valor do Produto' FROM tbProduto
INNER JOIN tbFabricante ON tbProduto.codFabricante = tbFabricante.codFabricante
WHERE valorProduto > (SELECT AVG(valorProduto) FROM tbProduto)

--3. Criar uma consulta que retorne o nome dos clientes que tiveram vendas com valor acima do valor m�dio das vendas
SELECT nomeCliente AS'Nome do Cliente' FROM tbCliente
INNER JOIN tbVenda ON tbVenda.codCliente = tbCliente.codCliente
WHERE valorTotalVenda > (SELECT AVG(valorTotalVenda) FROM tbVenda)

--4. Criar uma consulta que retorno o nome e o pre�o dos produtos mais caros
SELECT descricaoProduto AS'Nome do Produto', valorProduto AS'Valor do Produto' FROM tbProduto
WHERE valorProduto IN (SELECT MAX(valorProduto) FROM tbProduto)

--5. Criar uma consulta que retorne o nome e o pre�o do produto mais barato
SELECT descricaoProduto AS'Nome do Produto', valorProduto AS'Valor do Produto' FROM tbProduto
WHERE valorProduto = (SELECT MIN(valorProduto) FROM tbProduto)