USE bdEscolaIdioma

INSERT INTO tbAluno(nomeAluno, rgAluno, cpfAluno, logradouro, numero, complemento, cep, bairro, cidade, dataNascimento)
VALUES ('Gabriela Cristiane da Paz', '35.294.109-1', '574.410.936-60', 'Rua João Dentuski', 325,  'Casa','29032-317', 'Santo André', 'Vitória - ES', '08/03/1960')
       , ('Emanuel Renan Cláudio Dias', '36.564.929-6', '370.646.310-59', 'Rua Maria Augusta Braga Rocha', 231, 'Apart.', '58805-510', 'Jardim Sorrilândia III', 'Sousa - PB', '22/10/2000')
       , ('Igor José Castro', '10.784.931-8', '700.183.162-04', 'Quadra 1306 Sul Alameda 7', 615, 'Casa', '77024-564', 'Plano Diretor Sul', 'Palmas - TO', '18/08/2002')
       , ('Benjamin Luís da Mata', '38.550.742-2', '615.616.770-60', 'Travessa São Severino dos Ramos', 274, 'Casa', '59115-661', 'Nossa Senhora da Apresentação', 'Natal - RN', '17/09/1944')
       , ('Alessandra Yasmin Teixeira', '42.189.475-1', '705.382.794-19', 'Rua Glênio Fernandes de Sá', 283, 'Casa', '59124-555', 'Potengi', 'Natal - RN', '12/03/1958')

INSERT INTO tbTelefoneAluno(numTelAluno, codAluno)
VALUES ('(27)2764-4900', 1)
       , ('(83)3506-3241', 2)
       , ('(63)99199-1053', 3)
       , ('(84)3882-6447', 4)
       , ('(84)99415-5671', 5)
		
INSERT INTO tbCurso( nomeCurso, valorCurso)
VALUES ('Inglês', 356)
       , ('Alemão', 478)
       , ('Espanhol', 500)

INSERT INTO tbNivel(descricaoNivel)
VALUES ('Iniciante')
       , ('Médio')
       , ('Avançado')

INSERT INTO tbPeriodo(descricaoPeriodo)
VALUES ('Manhã')
       , ('Tarde')
       , ('Noite')

INSERT INTO tbTurma(descricaoTurma, codCurso, codNivel, codPeriodo, horario, diaDaSemana)
VALUES ('1A', 1, 2, 3, '19:00', 'Segunda/Quarta')
       , ('1B', 3, 2, 2, '14:00', 'Terça/Quinta')
       , ('1C', 1, 1, 1, '08:00', 'Quarta/Sexta')
       , ('1AA', 2, 3, 1, '08:00', 'Segunda/Terça')

INSERT INTO tbMatricula(dataMatricula, codAluno, codTurma)
VALUES  ('03/10/2015', 1, 1)
       , ('04/05/2014', 2, 1)
       , ('04/05/2014', 2, 4)
       , ('03/05/2012', 3, 2)
       , ('03/03/2016', 1, 3)
       , ('07/05/2015', 4, 2)
       , ('05/07/2015', 4, 3)

SELECT * FROM tbAluno
SELECT * FROM tbTelefoneAluno
SELECT * FROM tbCurso
SELECT * FROM tbNivel
SELECT * FROM tbPeriodo
SELECT * FROM tbTurma
SELECT * FROM tbMatricula
