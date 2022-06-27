from models import *
from datetime import date
from conexao import *

conexaoComBanco()



def createAtv (codProjeto, dataFim, dataInicio, descricao) :
    Atv.create(
        codprojeto = codProjeto,
        datafim = dataFim,
        datainicio = dataInicio, 
        descricao = descricao
    )
    
createAtv(
    codProjeto = 2,
    dataFim=date(2022, 5, 01), 
    dataInicio = date(2022,1,01), 
    descricao="Projeto",
)

EncerrarConxecao()