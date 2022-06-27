from datetime import date
from conexao import ConexaoComBanco

conn = ConexaoComBanco()
cur = conn.cursor()

def CreateAtividade(codProjeto, dataFim, dataInicio, descricao):
    insert = '''
        INSERT INTO Atividade(codprojeto, datafim, datainicio, descricao) 
        VALUES (%s, %s, %s, %s);
    '''
    value = (codProjeto, dataFim, dataInicio, descricao)
    cur.execute(insert, value)
    conn.commit()


CreateAtividade(
    codProjeto = 2,
    dataFim=date(2022, 5, 01), 
    dataInicio = date(2022,1,01), 
    descricao="Projeto",
)

cur.close()
conn.close()