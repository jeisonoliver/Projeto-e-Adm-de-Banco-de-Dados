CREATE VIEW M_COUNT(Fun_Cod,Quantidade_Atv) AS SELECT F.Codigo, COUNT(A.Codigo)
FROM Funcionario F, Atividade A
WHERE A.Cod_Responsavel = F.Codigo
GROUP BY F.Codigo;

SELECT F.Nome, MC.Fun_Cod, MC.Quantidade_Atv FROM Funcionario F, M_COUNT MC;