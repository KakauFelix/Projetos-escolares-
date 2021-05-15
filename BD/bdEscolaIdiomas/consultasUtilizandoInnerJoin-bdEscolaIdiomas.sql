USE bdEscolaIdiomas

--1) Apresentar os nomes dos alunos ao lado do nome dos cursos que eles fazem;
SELECT nomeAluno AS'Nome do Aluno', nomeCurso AS'Nome do seu repectivo curso' FROM tbAluno
	INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso

--2) Apresentar a quantidade de alunos matriculados por nome do curso;
SELECT nomeCurso AS'Curso', COUNT(nomeAluno) AS'Quantidade de alunos' FROM tbAluno
	INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
				GROUP BY nomeCurso

--3) Apresentar a quantidade de alunos matriculados por nome da turma;
SELECT nomeTurma AS'Turma', COUNT(nomeAluno) AS'Quantidade de alunos' FROM tbAluno
	INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			GROUP BY nomeTurma

--4) Apresentar a quantidade de alunos que fizeram matricula em maio de 2016;
SELECT COUNT(nomeAluno) AS'Quantidade de alunos matriculados em maio de 2016' FROM tbAluno
	INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
		WHERE DATEPART (MONTH, dataMatricula) = 5 AND DATEPART (YEAR, dataMatricula) = 2016

--5) Apresentar o nome dos alunos em ordem alfabética ao lado do nome das turmas e os nomes dos cursos em que estão matriculados
SELECT nomeAluno AS'Nome do Aluno', nomeTurma AS'Turma', nomeCurso AS'Curso' FROM tbAluno 
	INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
				ORDER BY nomeAluno

--6) Apresentar o nome dos cursos e os horários em que eles são oferecidos
SELECT nomeCurso AS'Curso', horarioTurma AS'horários oferecidos'  FROM tbCurso
	INNER JOIN tbTurma ON tbTurma.codCurso = tbCurso.codCurso 

--7) Apresentar a quantidade de alunos nascidos por estado que estejam matriculados no curso de ingles
SELECT naturalidadeAluno AS'Nascidos em', COUNT(nomeAluno) AS'Quantidade de alunos matriculados no inglês' FROM tbAluno
	INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
				WHERE nomeCurso LIKE 'Inglês'
					GROUP BY naturalidadeAluno

--8) Apresentar o nome dos alunos ao lado da data de matrícula no formato dd/mm/aaaa
SELECT nomeAluno AS'Nome do Aluno', CONVERT ( varchar ( 12 ), dataMatricula, 103 ) AS'Data da Matrícula' FROM tbAluno
	INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno

--9) Apresentar os alunos cujo nome comece com A e que estejam matriculados no curso de inglês
SELECT nomeAluno AS'Alunos cujo nome comece com A matriculados no curso de inglês'  FROM tbAluno
	INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
				WHERE nomeCurso LIKE 'Inglês' AND  nomeAluno LIKE 'A%'

--10) Apresentar a quantidade de matriculas feitas no ano de 2016
SELECT COUNT(codMatricula) AS'Quantidade de matriculas feitas em 2016' FROM tbMatricula
	WHERE DATEPART (YEAR, dataMatricula) = 2016

--11) Apresentar a quantidade de matriculas por nome do curso
SELECT nomeCurso AS'Curso', COUNT(codMatricula) AS'Quantidade de matriculas'  FROM tbCurso
	INNER JOIN tbTurma ON tbTurma.codCurso = tbCurso.codCurso
		INNER JOIN tbMatricula ON tbMatricula.codTurma = tbTurma.codTurma	
			GROUP BY nomeCurso

--12) Apresentar a quantidade de alunos que fazem os cursos que custam mais de R$ 300,00
SELECT COUNT(nomeAluno) AS'Quantidade de alunos que fazem os cursos que custam mais de R$300,00' FROM tbAluno
	INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
				WHERE valorCurso > 300

--13) Apresentar os nomes dos alunos que fazem o curso de alemao
SELECT nomeAluno AS'Nomes dos alunos que fazem o curso de alemão' FROM tbAluno
	INNER JOIN tbMatricula ON tbMatricula.codAluno = tbAluno.codAluno
		INNER JOIN tbTurma ON tbMatricula.codTurma = tbTurma.codTurma
			INNER JOIN tbCurso ON tbTurma.codCurso = tbCurso.codCurso
				WHERE nomeCurso LIKE 'Alemão'