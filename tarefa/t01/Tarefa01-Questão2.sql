SELECT * FROM Funcionario;

SELECT Nome FROM Funcionario WHERE Dat_Nasc >(SELECT MIN(Dat_Nasc) FROM Funcionario);