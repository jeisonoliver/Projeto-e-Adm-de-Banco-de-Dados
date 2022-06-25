from ast import Try
import psycopg2


cur = None
conn = None

try:
    conn = psycopg2.connect(dbname="AtividadesBD", user="postgresSQL",password="123456")
    cur = conn.cursor()

    insert = "INSERT INTO DEPARTAMENTO(sigla, descricao, codGerente) VALUES (%s,%s,%s);"
    values = ('DCT', 'Departamento de Ciencia e Tecnologia', '1')

    cur.execute(insert, values)
    conn.commit()

    cur.close()
    conn.close()

except Exception as error:
    print(error)

finally:
    if cur is not None:
        cur.close()
    if conn is not None:
        conn.close()