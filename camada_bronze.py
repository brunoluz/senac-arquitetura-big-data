import numpy as np
import pandas as pd
import mysql.connector
import zipfile
import os
import glob
import dotenv

mysql_host = None
mysql_user = None
mysql_pass = None
mysql_port = None


def carregar_variaveis_ambiente():
    global mysql_host
    global mysql_user
    global mysql_pass
    global mysql_port
    dotenv.load_dotenv('configuracoes.env')
    mysql_host = os.getenv('MYSQL_HOST')
    mysql_user = os.getenv('MYSQL_USER')
    mysql_pass = os.getenv('MYSQL_PASS')
    mysql_port = os.getenv('MYSQL_PORT')


def extrair_dados_zip():
    with zipfile.ZipFile("dados_brutos.zip", 'r') as zip_ref:
        zip_ref.extractall(os.getcwd())


def limpar_arquivos_csv():
    for f in glob.glob("*.CSV"):
        os.remove(f)


def criar_camada_bronze_mysql():
    with open('camada_bronze.sql', 'r') as file:
        data = ''.join(file.readlines())

    mydb = mysql.connector.connect(host=mysql_host, user=mysql_user, passwd=mysql_pass, port=mysql_port)
    mycursor = mydb.cursor()
    mycursor.execute(data)
    mycursor.close()
    mydb.close()


def carregar_dados_MICRODADOS_CADASTRO_CURSOS(filename, encoding):
    df_cadastro_cursos = pd.read_csv(filename, sep=';', encoding=encoding)

    if 'CO_CINE_ROTULO' not in df_cadastro_cursos.columns and 'CO_CINE_ROTULO2' in df_cadastro_cursos.columns:
        df_cadastro_cursos.rename(columns={'CO_CINE_ROTULO2': 'CO_CINE_ROTULO'}, inplace=True)

    # substitui nan por None
    df_cadastro_cursos = df_cadastro_cursos.replace(np.nan, None)

    # trata o campo CO_CINE_ROTULO
    df_cadastro_cursos['CO_CINE_ROTULO'] = df_cadastro_cursos['CO_CINE_ROTULO'].apply(lambda x: x.replace('"', ''))

    query = """
    INSERT INTO arquitetura_big_data.MICRODADOS_CADASTRO_CURSOS (NU_ANO_CENSO, NO_REGIAO, CO_REGIAO, NO_UF, SG_UF, CO_UF, NO_MUNICIPIO, CO_MUNICIPIO, IN_CAPITAL, TP_DIMENSAO, TP_ORGANIZACAO_ACADEMICA, TP_CATEGORIA_ADMINISTRATIVA, TP_REDE, CO_IES, NO_CURSO, CO_CURSO, NO_CINE_ROTULO, CO_CINE_ROTULO, CO_CINE_AREA_GERAL, NO_CINE_AREA_GERAL, CO_CINE_AREA_ESPECIFICA, NO_CINE_AREA_ESPECIFICA, CO_CINE_AREA_DETALHADA, NO_CINE_AREA_DETALHADA, TP_GRAU_ACADEMICO, IN_GRATUITO, TP_MODALIDADE_ENSINO, TP_NIVEL_ACADEMICO, QT_CURSO, QT_VG_TOTAL, QT_VG_TOTAL_DIURNO, QT_VG_TOTAL_NOTURNO, QT_VG_TOTAL_EAD, QT_VG_NOVA, QT_VG_PROC_SELETIVO, QT_VG_REMANESC, QT_VG_PROG_ESPECIAL, QT_INSCRITO_TOTAL, QT_INSCRITO_TOTAL_DIURNO, QT_INSCRITO_TOTAL_NOTURNO, QT_INSCRITO_TOTAL_EAD, QT_INSC_VG_NOVA, QT_INSC_PROC_SELETIVO, QT_INSC_VG_REMANESC, QT_INSC_VG_PROG_ESPECIAL, QT_ING, QT_ING_FEM, QT_ING_MASC, QT_ING_DIURNO, QT_ING_NOTURNO, QT_ING_VG_NOVA, QT_ING_VESTIBULAR, QT_ING_ENEM, QT_ING_AVALIACAO_SERIADA, QT_ING_SELECAO_SIMPLIFICA, QT_ING_EGR, QT_ING_OUTRO_TIPO_SELECAO, QT_ING_PROC_SELETIVO, QT_ING_VG_REMANESC, QT_ING_VG_PROG_ESPECIAL, QT_ING_OUTRA_FORMA, QT_ING_0_17, QT_ING_18_24, QT_ING_25_29, QT_ING_30_34, QT_ING_35_39, QT_ING_40_49, QT_ING_50_59, QT_ING_60_MAIS, QT_ING_BRANCA, QT_ING_PRETA, QT_ING_PARDA, QT_ING_AMARELA, QT_ING_INDIGENA, QT_ING_CORND, QT_MAT, QT_MAT_FEM, QT_MAT_MASC, QT_MAT_DIURNO, QT_MAT_NOTURNO, QT_MAT_0_17, QT_MAT_18_24, QT_MAT_25_29, QT_MAT_30_34, QT_MAT_35_39, QT_MAT_40_49, QT_MAT_50_59, QT_MAT_60_MAIS, QT_MAT_BRANCA, QT_MAT_PRETA, QT_MAT_PARDA, QT_MAT_AMARELA, QT_MAT_INDIGENA, QT_MAT_CORND, QT_CONC, QT_CONC_FEM, QT_CONC_MASC, QT_CONC_DIURNO, QT_CONC_NOTURNO, QT_CONC_0_17, QT_CONC_18_24, QT_CONC_25_29, QT_CONC_30_34, QT_CONC_35_39, QT_CONC_40_49, QT_CONC_50_59, QT_CONC_60_MAIS, QT_CONC_BRANCA, QT_CONC_PRETA, QT_CONC_PARDA, QT_CONC_AMARELA, QT_CONC_INDIGENA, QT_CONC_CORND, QT_ING_NACBRAS, QT_ING_NACESTRANG, QT_MAT_NACBRAS, QT_MAT_NACESTRANG, QT_CONC_NACBRAS, QT_CONC_NACESTRANG, QT_ALUNO_DEFICIENTE, QT_ING_DEFICIENTE, QT_MAT_DEFICIENTE, QT_CONC_DEFICIENTE, QT_ING_FINANC, QT_ING_FINANC_REEMB, QT_ING_FIES, QT_ING_RPFIES, QT_ING_FINANC_REEMB_OUTROS, QT_ING_FINANC_NREEMB, QT_ING_PROUNII, QT_ING_PROUNIP, QT_ING_NRPFIES, QT_ING_FINANC_NREEMB_OUTROS, QT_MAT_FINANC, QT_MAT_FINANC_REEMB, QT_MAT_FIES, QT_MAT_RPFIES, QT_MAT_FINANC_REEMB_OUTROS, QT_MAT_FINANC_NREEMB, QT_MAT_PROUNII, QT_MAT_PROUNIP, QT_MAT_NRPFIES, QT_MAT_FINANC_NREEMB_OUTROS, QT_CONC_FINANC, QT_CONC_FINANC_REEMB, QT_CONC_FIES, QT_CONC_RPFIES, QT_CONC_FINANC_REEMB_OUTROS, QT_CONC_FINANC_NREEMB, QT_CONC_PROUNII, QT_CONC_PROUNIP, QT_CONC_NRPFIES, QT_CONC_FINANC_NREEMB_OUTROS, QT_ING_RESERVA_VAGA, QT_ING_RVREDEPUBLICA, QT_ING_RVETNICO, QT_ING_RVPDEF, QT_ING_RVSOCIAL_RF, QT_ING_RVOUTROS, QT_MAT_RESERVA_VAGA, QT_MAT_RVREDEPUBLICA, QT_MAT_RVETNICO, QT_MAT_RVPDEF, QT_MAT_RVSOCIAL_RF, QT_MAT_RVOUTROS, QT_CONC_RESERVA_VAGA, QT_CONC_RVREDEPUBLICA, QT_CONC_RVETNICO, QT_CONC_RVPDEF, QT_CONC_RVSOCIAL_RF, QT_CONC_RVOUTROS, QT_SIT_TRANCADA, QT_SIT_DESVINCULADO, QT_SIT_TRANSFERIDO, QT_SIT_FALECIDO, QT_ING_PROCESCPUBLICA, QT_ING_PROCESCPRIVADA, QT_ING_PROCNAOINFORMADA, QT_MAT_PROCESCPUBLICA, QT_MAT_PROCESCPRIVADA, QT_MAT_PROCNAOINFORMADA, QT_CONC_PROCESCPUBLICA, QT_CONC_PROCESCPRIVADA, QT_CONC_PROCNAOINFORMADA, QT_PARFOR, QT_ING_PARFOR, QT_MAT_PARFOR, QT_CONC_PARFOR, QT_APOIO_SOCIAL, QT_ING_APOIO_SOCIAL, QT_MAT_APOIO_SOCIAL, QT_CONC_APOIO_SOCIAL, QT_ATIV_EXTRACURRICULAR, QT_ING_ATIV_EXTRACURRICULAR, QT_MAT_ATIV_EXTRACURRICULAR, QT_CONC_ATIV_EXTRACURRICULAR, QT_MOB_ACADEMICA, QT_ING_MOB_ACADEMICA, QT_MAT_MOB_ACADEMICA, QT_CONC_MOB_ACADEMICA)
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
    """
    mydb = mysql.connector.connect(host=mysql_host, user=mysql_user, passwd=mysql_pass)

    # insere dados no banco de dados em lotes de 20.000.
    # se tentar inserir tudo de uma vez, apresenta erro.
    n = 2000
    valores = df_cadastro_cursos.values.tolist()
    chunks = [valores[i * n:(i + 1) * n] for i in range((len(valores) + n - 1) // n)]
    for chunk in chunks:
        mycursor = mydb.cursor()
        mycursor.executemany(query, chunk)
        mydb.commit()
        mycursor.close()

    mydb.close()


def carregar_dados_MICRODADOS_CADASTRO_IES(filename):
    df_cadastro_ies = pd.read_csv(filename, sep=';', encoding='latin-1')

    # se nao existir as colunas no arquivo, adicionar como valores nulos
    if 'CO_PROJETO' not in df_cadastro_ies.columns:
        df_cadastro_ies['CO_PROJETO'] = None
    if 'CO_LOCAL_OFERTA' not in df_cadastro_ies.columns:
        df_cadastro_ies['CO_LOCAL_OFERTA'] = None
    if 'NO_LOCAL_OFERTA' not in df_cadastro_ies.columns:
        df_cadastro_ies['NO_LOCAL_OFERTA'] = None

    df_cadastro_ies = df_cadastro_ies.replace(np.nan, None)
    dados = df_cadastro_ies.values.tolist()

    query = """
    INSERT INTO arquitetura_big_data.MICRODADOS_CADASTRO_IES (NU_ANO_CENSO, NO_REGIAO_IES, CO_REGIAO_IES, NO_UF_IES, SG_UF_IES, CO_UF_IES, NO_MUNICIPIO_IES, CO_MUNICIPIO_IES, IN_CAPITAL_IES, NO_MESORREGIAO_IES, CO_MESORREGIAO_IES, NO_MICRORREGIAO_IES, CO_MICRORREGIAO_IES, TP_ORGANIZACAO_ACADEMICA, TP_CATEGORIA_ADMINISTRATIVA, NO_MANTENEDORA, CO_MANTENEDORA, CO_IES, NO_IES, SG_IES, DS_ENDERECO_IES, DS_NUMERO_ENDERECO_IES, DS_COMPLEMENTO_ENDERECO_IES, NO_BAIRRO_IES, NU_CEP_IES, QT_TEC_TOTAL, QT_TEC_FUNDAMENTAL_INCOMP_FEM, QT_TEC_FUNDAMENTAL_INCOMP_MASC, QT_TEC_FUNDAMENTAL_COMP_FEM, QT_TEC_FUNDAMENTAL_COMP_MASC, QT_TEC_MEDIO_FEM, QT_TEC_MEDIO_MASC, QT_TEC_SUPERIOR_FEM, QT_TEC_SUPERIOR_MASC, QT_TEC_ESPECIALIZACAO_FEM, QT_TEC_ESPECIALIZACAO_MASC, QT_TEC_MESTRADO_FEM, QT_TEC_MESTRADO_MASC, QT_TEC_DOUTORADO_FEM, QT_TEC_DOUTORADO_MASC, IN_ACESSO_PORTAL_CAPES, IN_ACESSO_OUTRAS_BASES, IN_ASSINA_OUTRA_BASE, IN_REPOSITORIO_INSTITUCIONAL, IN_BUSCA_INTEGRADA, IN_SERVICO_INTERNET, IN_PARTICIPA_REDE_SOCIAL, IN_CATALOGO_ONLINE, QT_PERIODICO_ELETRONICO, QT_LIVRO_ELETRONICO, QT_DOC_TOTAL, QT_DOC_EXE, QT_DOC_EX_FEMI, QT_DOC_EX_MASC, QT_DOC_EX_SEM_GRAD, QT_DOC_EX_GRAD, QT_DOC_EX_ESP, QT_DOC_EX_MEST, QT_DOC_EX_DOUT, QT_DOC_EX_INT, QT_DOC_EX_INT_DE, QT_DOC_EX_INT_SEM_DE, QT_DOC_EX_PARC, QT_DOC_EX_HOR, QT_DOC_EX_0_29, QT_DOC_EX_30_34, QT_DOC_EX_35_39, QT_DOC_EX_40_44, QT_DOC_EX_45_49, QT_DOC_EX_50_54, QT_DOC_EX_55_59, QT_DOC_EX_60_MAIS, QT_DOC_EX_BRANCA, QT_DOC_EX_PRETA, QT_DOC_EX_PARDA, QT_DOC_EX_AMARELA, QT_DOC_EX_INDIGENA, QT_DOC_EX_COR_ND, QT_DOC_EX_BRA, QT_DOC_EX_EST, QT_DOC_EX_COM_DEFICIENCIA, CO_PROJETO, CO_LOCAL_OFERTA, NO_LOCAL_OFERTA)
    VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
    """

    mydb = mysql.connector.connect(host=mysql_host, user=mysql_user, passwd=mysql_pass)
    mycursor = mydb.cursor()
    mycursor.executemany(query, dados)
    mydb.commit()
    mycursor.close()
    mydb.close()


if __name__ == '__main__':
    carregar_variaveis_ambiente()
    limpar_arquivos_csv()
    extrair_dados_zip()
    criar_camada_bronze_mysql()
    carregar_dados_MICRODADOS_CADASTRO_CURSOS('MICRODADOS_CADASTRO_CURSOS_2021.CSV', 'latin-1')
    carregar_dados_MICRODADOS_CADASTRO_CURSOS('MICRODADOS_CADASTRO_CURSOS_2020.CSV', 'latin-1')
    carregar_dados_MICRODADOS_CADASTRO_CURSOS('MICRODADOS_CADASTRO_CURSOS_2019.CSV', 'latin-1')
    carregar_dados_MICRODADOS_CADASTRO_CURSOS('MICRODADOS_CADASTRO_CURSOS_2018.CSV', 'latin-1')
    carregar_dados_MICRODADOS_CADASTRO_CURSOS('MICRODADOS_CADASTRO_CURSOS_2017.CSV', 'latin-1')
    carregar_dados_MICRODADOS_CADASTRO_IES('MICRODADOS_CADASTRO_IES_2021.CSV')
    carregar_dados_MICRODADOS_CADASTRO_IES('MICRODADOS_CADASTRO_IES_2020.CSV')
    carregar_dados_MICRODADOS_CADASTRO_IES('MICRODADOS_CADASTRO_IES_2019.CSV')
    carregar_dados_MICRODADOS_CADASTRO_IES('MICRODADOS_CADASTRO_IES_2018.CSV')
    carregar_dados_MICRODADOS_CADASTRO_IES('MICRODADOS_CADASTRO_IES_2017.CSV')
    limpar_arquivos_csv()
    print("Processo finalizado...")
