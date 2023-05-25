import os
import dotenv
import mysql.connector

dotenv.load_dotenv('configuracoes.env')
mysql_host = os.getenv('MYSQL_HOST')
mysql_user = os.getenv('MYSQL_USER')
mysql_pass = os.getenv('MYSQL_PASS')
mysql_port = os.getenv('MYSQL_PORT')
mysql_db = os.getenv('MYSQL_DB')


def criar_database():
    query = f"CREATE DATABASE IF NOT EXISTS {mysql_db};"
    mydb = mysql.connector.connect(host=mysql_host, user=mysql_user, passwd=mysql_pass, port=mysql_port)
    mycursor = mydb.cursor()
    mycursor.execute(query)
    mydb.commit()
    mycursor.close()
    mydb.close()


def criar_conexao():
    return mysql.connector.connect(host=mysql_host, user=mysql_user, passwd=mysql_pass, port=mysql_port,
                                   database=mysql_db)


criar_database()
