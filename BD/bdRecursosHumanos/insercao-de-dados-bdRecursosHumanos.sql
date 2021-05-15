USE bdRecursosHumanos

INSERT INTO tbDepartamento(nomeDepartamento)
VALUES ('Administrativo')
       , ('RH')
       , ('Vendas')

SELECT * FROM tbDepartamento

INSERT INTO tbFuncionario(nomeFuncionario, cpfFuncionario, sexoFuncionario, dataNascimentoFuncionario, salarioFuncionario, codDepartamento)
VALUES ('Alinny Silva', '12345678910-11', 'Feminino', '1962/05/26', 7000, 2)
       , ('Rodrigo Ferreira', '11121314151-61', 'Masculino','2000/01/01', 5000, 2)
       , ('Eravaldo Rocha', '10987654321-32', 'Masculino', '1999/09/15', 6000, 1)
       , ('Marinice Souza', '0192837465-X', 'Feminino', '1975/11/05', 6000,1)
       , ('Elena Gomes', '5674839201-69', 'Feminino', '2001/02/18', 3500, 3)
       , ('Tiago Filho', '3214569870-X', 'Masculino', '1980/09/20', 3500, 3)

SELECT * FROM tbFuncionario

INSERT INTO tbDependente(nomeDependente, dataNascimentoDependente, sexoDependente, codFuncionario)
VALUES ('Jessica Ferreira', '2005/12/21', 'Feminino', 2)
       , ('Leandro Ferreira', '2009/03/12', 'Masculino', 2)
       , ('Julia Ferreira', '2019/12/01', 'Feminino', 2)
       , ('Mary Souza', '2012/02/01', 'Feminino', 4)
       , ('Philip Rocha', '2015/12/04', 'Masculino', 3)

SELECT * FROM tbDependente
