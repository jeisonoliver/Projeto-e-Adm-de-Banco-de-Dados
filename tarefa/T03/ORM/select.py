from models import  Atividade, Projeto
from conexao import EncerrarConxecao, conexaoComBanco

conexaoComBanco()

def selectProjetoEAtividades():
    return Projeto.select(Projeto.codigo, Projeto.descricao, Atividade.descricao).join(Atividade).where(Projeto.codigo == Atividade.codprojeto)


query = selectProjetoEAtividades()

for projeto in query:
    print(projeto.codigo, "-", projeto.descricao,":", projeto.atividade.descricao)