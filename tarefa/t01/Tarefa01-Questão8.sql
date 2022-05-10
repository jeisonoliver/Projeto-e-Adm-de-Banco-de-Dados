CREATE VIEW Dep_Projetos(Gerente,Descricao,Projeto) 
AS SELECT D.Cod_Gerente,D.Descricao,COUNT(P.Cod_Depto)
FROM Projeto P, Departamento D WHERE P.Cod_Depto = D.Codigo GROUP BY D.Descricao, D.Cod_Gerente;

SELECT F.Nome, Descricao,Projeto FROM Dep_Projetos D LEFT JOIN Funcionario F ON F.Codigo = D.Gerente;