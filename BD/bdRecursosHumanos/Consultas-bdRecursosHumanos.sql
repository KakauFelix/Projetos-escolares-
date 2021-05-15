USE bdRecursosHumanos

--a) O total de dependentes do funcionário de código 01
SELECT COUNT(codDependente) AS'Total de dependentes do funcionário de código 01'  FROM tbDependente
WHERE codFuncionario = 1

--b) A média dos salários agrupados pelo código do departamento excluindo o departamento de código 10
SELECT codDepartamento AS'Código do departamento', AVG(salarioFuncionario) AS'Média salarial'  FROM tbFuncionario
WHERE NOT codDepartamento = 10
GROUP BY codDepartamento

--c) A soma dos salários do departamento de código 09
SELECT SUM(salarioFuncionario) AS'Soma dos salários do departamento de código 09' FROM tbFuncionario
WHERE codDepartamento = 9

--d) A quantidade de dependentes do sexo masculino
SELECT COUNT(codDependente) AS'Quantidade de dependentes do sexo masculino' FROM tbDependente 
WHERE sexoDependente = 'Masculino' 

--e) A quantidade de dependentes que nasceram no ano de 2000
SELECT COUNT(codDependente) AS'Quantidade de dependentes que nasceram no ano de 2000' FROM tbDependente
WHERE DATEPART(YEAR, dataNascimentoDependente) = 2000

--f) A quantidade de funcionários do departamento 03
SELECT COUNT(codFuncionario) AS'Quantidade de funcionários do departamento 03' FROM tbFuncionario
WHERE codDepartamento = 3

--g) A média dos salários do departamento 02
SELECT AVG(salarioFuncionario) AS'Média salarial do departamento 02' FROM tbFuncionario
WHERE codDepartamento = 2

--h) O total de dependentes nascidos em junho que sejam do funcionário 01 ou 02
SELECT COUNT(codDependente) AS'Total de dependentes nascidos em junho e que sejam do funcionário 01 ou 02' FROM tbDependente
WHERE codFuncionario = 1 OR codFuncionario = 2 AND DATEPART (MONTH, dataNascimentoDependente) = 6

--i) O total de dependentes do sexo masculino que tenham nascido antes do ano 2000
SELECT COUNT(codDependente) AS'Total de dependentes do sexo masculino que tenham nascido antes do ano 2000' FROM tbDependente
WHERE sexoDependente = 'Masculino' AND DATEPART (YEAR, dataNascimentoDependente) < 2000

--j) A quantidade de dependentes do sexo feminino e que não sejam do funcionário de código 02
SELECT COUNT(codDependente) AS'Quantidade de dependentes do sexo feminino, exceto do funcionario 02' FROM tbDependente 
WHERE sexoDependente = 'Feminino' AND NOT codFuncionario = 2

--k) A quantidade de dependentes do funcionário de código 3
SELECT COUNT(codDependente) AS'Quantidade de dependentes do funcionário de código 3' FROM tbDependente
WHERE codFuncionario = 3

--l) A soma dos salários agrupados pelo código do departamento
SELECT SUM(salarioFuncionario) AS'Soma dos salários agrupados pelo', codDepartamento AS'código do departamento' FROM tbFuncionario
GROUP BY codDepartamento

--m) A média de salários agrupados pelo código do departamento
SELECT AVG(salarioFuncionario) AS'Média dos salários agrupados pelo', codDepartamento AS'código do departamento' FROM tbFuncionario
GROUP BY codDepartamento

--n) A quantidade de funcionários do departamento de 03
SELECT COUNT(codFuncionario) AS'Quantidade de funcionários do departamento de 03' FROM tbFuncionario
WHERE codDepartamento = 3

--o) O nome dos funcionários (em ordem alfabética) e a data de nascimento dos funcionários no formato DD/MM/AAAA
SELECT nomeFuncionario AS'Nome dos funcionários', CONVERT (varchar(12), dataNascimentoFuncionario, 103) AS'Data de nascimento' FROM tbFuncionario 
ORDER BY nomeFuncionario

--p) O maior salário
SELECT MAX(salarioFuncionario) AS'O maior salário' FROM tbFuncionario

--q) O menor salário
SELECT MIN(salarioFuncionario) AS'O menor salário' FROM tbFuncionario