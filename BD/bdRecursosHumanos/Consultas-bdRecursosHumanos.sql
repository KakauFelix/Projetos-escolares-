USE bdRecursosHumanos

--a) O total de dependentes do funcion�rio de c�digo 01
SELECT COUNT(codDependente) AS'Total de dependentes do funcion�rio de c�digo 01'  FROM tbDependente
WHERE codFuncionario = 1

--b) A m�dia dos sal�rios agrupados pelo c�digo do departamento excluindo o departamento de c�digo 10
SELECT codDepartamento AS'C�digo do departamento', AVG(salarioFuncionario) AS'M�dia salarial'  FROM tbFuncionario
WHERE NOT codDepartamento = 10
GROUP BY codDepartamento

--c) A soma dos sal�rios do departamento de c�digo 09
SELECT SUM(salarioFuncionario) AS'Soma dos sal�rios do departamento de c�digo 09' FROM tbFuncionario
WHERE codDepartamento = 9

--d) A quantidade de dependentes do sexo masculino
SELECT COUNT(codDependente) AS'Quantidade de dependentes do sexo masculino' FROM tbDependente 
WHERE sexoDependente = 'Masculino' 

--e) A quantidade de dependentes que nasceram no ano de 2000
SELECT COUNT(codDependente) AS'Quantidade de dependentes que nasceram no ano de 2000' FROM tbDependente
WHERE DATEPART(YEAR, dataNascimentoDependente) = 2000

--f) A quantidade de funcion�rios do departamento 03
SELECT COUNT(codFuncionario) AS'Quantidade de funcion�rios do departamento 03' FROM tbFuncionario
WHERE codDepartamento = 3

--g) A m�dia dos sal�rios do departamento 02
SELECT AVG(salarioFuncionario) AS'M�dia salarial do departamento 02' FROM tbFuncionario
WHERE codDepartamento = 2

--h) O total de dependentes nascidos em junho que sejam do funcion�rio 01 ou 02
SELECT COUNT(codDependente) AS'Total de dependentes nascidos em junho e que sejam do funcion�rio 01 ou 02' FROM tbDependente
WHERE codFuncionario = 1 OR codFuncionario = 2 AND DATEPART (MONTH, dataNascimentoDependente) = 6

--i) O total de dependentes do sexo masculino que tenham nascido antes do ano 2000
SELECT COUNT(codDependente) AS'Total de dependentes do sexo masculino que tenham nascido antes do ano 2000' FROM tbDependente
WHERE sexoDependente = 'Masculino' AND DATEPART (YEAR, dataNascimentoDependente) < 2000

--j) A quantidade de dependentes do sexo feminino e que n�o sejam do funcion�rio de c�digo 02
SELECT COUNT(codDependente) AS'Quantidade de dependentes do sexo feminino, exceto do funcionario 02' FROM tbDependente 
WHERE sexoDependente = 'Feminino' AND NOT codFuncionario = 2

--k) A quantidade de dependentes do funcion�rio de c�digo 3
SELECT COUNT(codDependente) AS'Quantidade de dependentes do funcion�rio de c�digo 3' FROM tbDependente
WHERE codFuncionario = 3

--l) A soma dos sal�rios agrupados pelo c�digo do departamento
SELECT SUM(salarioFuncionario) AS'Soma dos sal�rios agrupados pelo', codDepartamento AS'c�digo do departamento' FROM tbFuncionario
GROUP BY codDepartamento

--m) A m�dia de sal�rios agrupados pelo c�digo do departamento
SELECT AVG(salarioFuncionario) AS'M�dia dos sal�rios agrupados pelo', codDepartamento AS'c�digo do departamento' FROM tbFuncionario
GROUP BY codDepartamento

--n) A quantidade de funcion�rios do departamento de 03
SELECT COUNT(codFuncionario) AS'Quantidade de funcion�rios do departamento de 03' FROM tbFuncionario
WHERE codDepartamento = 3

--o) O nome dos funcion�rios (em ordem alfab�tica) e a data de nascimento dos funcion�rios no formato DD/MM/AAAA
SELECT nomeFuncionario AS'Nome dos funcion�rios', CONVERT (varchar(12), dataNascimentoFuncionario, 103) AS'Data de nascimento' FROM tbFuncionario 
ORDER BY nomeFuncionario

--p) O maior sal�rio
SELECT MAX(salarioFuncionario) AS'O maior sal�rio' FROM tbFuncionario

--q) O menor sal�rio
SELECT MIN(salarioFuncionario) AS'O menor sal�rio' FROM tbFuncionario