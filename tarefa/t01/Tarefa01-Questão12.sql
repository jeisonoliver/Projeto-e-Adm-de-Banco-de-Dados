SELECT P.Nome, P.Data_Inicio, P.Data_Fim, A.Descricao, A.Data_Inicio, A.Data_Fim
FROM Projeto P, Atividade A, Atividade_Projeto AP
WHERE A.Codigo = AP.Codigo_Atividade AND P.Codigo = AP.Codigo_Projeto;