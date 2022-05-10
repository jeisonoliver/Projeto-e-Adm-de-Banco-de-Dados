SELECT Nome, Salario, Cod_Dep FROM Funcionario

WHERE Codigo NOT IN(SELECT Cod_Gerente FROM Departamento);