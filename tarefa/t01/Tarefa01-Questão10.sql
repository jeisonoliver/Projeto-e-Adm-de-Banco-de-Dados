SELECT P.Nome, D.Descricao, F.Nome FROM Projeto P, Departamento D, Funcionario F
WHERE P.Cod_Depto = D.Codigo AND P.Cod_Responsavel = F.Codigo AND F.Cod_Dep = D.Codigo;