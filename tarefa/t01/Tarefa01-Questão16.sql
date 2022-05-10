CREATE VIEW Responsaveis(Codigo ,Nome, Salario) as 
SELECT F.Codigo,F.Nome, F.Salario 
FROM Funcionario F, Projeto P WHERE (f.Codigo = P.Cod_Responsavel and F.Codigo IN (SELECT Cod_Gerente from Departamento));

SELECT DISTINCT F.nome FROM funcionario F, Responsaveis R, Projeto P WHERE (F.codigo = R.codigo) OR  ((F.codigo = P.Cod_Responsavel) AND (F.salario > R.salario))