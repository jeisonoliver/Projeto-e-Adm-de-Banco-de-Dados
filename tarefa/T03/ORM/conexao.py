from models import database

def conexaoComBanco():
    database.connect()

def EncerrarConxecao():
    database.close()