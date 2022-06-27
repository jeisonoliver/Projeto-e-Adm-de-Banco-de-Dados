from conexao import ConexaoComBanco

conn = ConexaoComBanco()
cur = conn.cursor()

def AtualizarProjeto(codProjeto, Responsavel):
    update = '''
        UPDATE projeto SET codresponsavel = %s
        WHERE codigo = %s;
    '''
    value = (Responsavel, codProjeto)
    cur.execute(update,value)
    conn.commit()

AtualizarProjeto(codProjeto=6, novoResponsavel=1)

cur.close()
conn.close()