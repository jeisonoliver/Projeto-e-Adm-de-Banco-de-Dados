SELECT F.Nome , D.Descricao FROM Funcionario F, Departamento D
WHERE F.Salario IN(SELECT MAX(F.Salario)
				  FROM Funcionario F LEFT JOIN Departamento D
				  ON F.Cod_Dep P = D.Codigo GROUP BY D.Codigo
) AND F.Cod_Dep = D.Codigo
GROUP BY F.Salario, F.Nome, D.Descricao
ORDER BY F.Salario;