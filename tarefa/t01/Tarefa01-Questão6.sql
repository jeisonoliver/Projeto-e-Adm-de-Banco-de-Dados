SELECT F.Nome, F.Salario, D.Descricao FROM Funcionario F, Departamento D

WHERE F.Cod_Dep = D.Codigo;