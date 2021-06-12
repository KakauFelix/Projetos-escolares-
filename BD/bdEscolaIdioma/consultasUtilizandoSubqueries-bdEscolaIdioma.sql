USE bdEscolaIdioma

--a) Criar uma consulta que retorne o nome e o preço dos cursos que custem abaixo do valor médio
SELECT nomeCurso AS'Nome do Curso', valorCurso AS'Preço' FROM tbCurso
WHERE valorCurso < (SELECT AVG(valorCurso) FROM tbCurso)

--b) Criar uma consulta que retorne o nome e o rg do aluno mais novo
SELECT nomeAluno AS'Nome do Aluno', rgAluno AS'RG' FROM tbAluno
WHERE dataNascimento = (SELECT MAX(dataNascimento) FROM tbAluno)

--c) Criar uma consulta que retorne o nome do aluno mais velho
SELECT nomeAluno AS'Nome do Aluno' FROM tbAluno
WHERE dataNascimento = (SELECT MIN(dataNascimento) FROM tbAluno)

--d) Criar uma consulta que retorne o nome e o valor do curso mais caro
SELECT nomeCurso AS'Nome do Curso', valorCurso AS'Preço' FROM tbCurso
WHERE valorCurso = (SELECT MAX(valorCurso) FROM tbCurso)

--e) Criar uma consulta que retorne o nome do aluno e o nome do curso, do aluno que fez a última matrícula
SELECT nomeAluno AS'Nome do Aluno', nomeCurso AS'Nome do Curso' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE dataMatricula = (SELECT MAX(dataMatricula) FROM tbMatricula)

--f) Criar uma consulta que retorne o nome do primeiro aluno a ser matriculado na escola de Idiomas
SELECT nomeAluno AS'Nome do primeiro aluno a ser matriculado' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
WHERE dataMatricula = (SELECT MIN(dataMatricula) FROM tbMatricula)

--g) Criar uma consulta que retorne o nome, rg e data de nascimento de todos os alunos que estejam matriculados no curso de inglês
SELECT nomeAluno AS'Nome do Aluno', rgAluno AS'RG', dataNascimento AS'Data de Nascimento' FROM tbAluno
INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
WHERE nomeCurso LIKE 'inglês'