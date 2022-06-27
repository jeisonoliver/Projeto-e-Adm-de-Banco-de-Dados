from conexao import ConexaoComBanco

conn = ConexaoComBanco()
cur = conn.cursor()

def selectProjetoAtividade():
    select = '''
        SELECT projeto.codigo, projeto.descricao, Atividade.descricao
        FROM projeto INNER JOIN Atividade     
        ON projeto.codigo = Atividade.codProjeto;
    '''

    cur.execute(select)
    conn.commit()

selectProjetoAtividade()

cur.close()
conn.close()