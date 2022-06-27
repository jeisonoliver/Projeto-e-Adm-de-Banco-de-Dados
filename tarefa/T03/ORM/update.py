from models import *
from conexao import EncerrarConxecao, conexaoComBanco

conexaoComBanco()

def AtualizarResponsavel(codProjeto, Responsavel):
    projeto = Projeto.select().where(Projeto.codigo == codProjeto).get()
    projeto.codresponsavel = Responsavel
    projeto.save()


AtualizarResponsavel(codProjeto=int(1), Responsavel=3)


EncerrarConxecao()