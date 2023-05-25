import utilidades

query = """
INSERT INTO arquitetura_big_data.prata_metricas_ingressantes_matriculados_concluintes(NU_ANO_CENSO, CO_IES, NO_IES, total_ingressantes, total_matriculados, total_concluintes)
select cursos.NU_ANO_CENSO
      ,cursos.CO_IES
      ,instituicoes.NO_IES
      ,sum(cursos.qt_ing) as total_integressantes
      ,sum(cursos.qt_mat) as total_matriculados
      ,sum(qt_conc) as total_concluintes
from bronze_MICRODADOS_CADASTRO_CURSOS cursos
inner join bronze_MICRODADOS_CADASTRO_IES instituicoes on cursos.CO_IES = instituicoes.CO_IES and cursos.NU_ANO_CENSO = instituicoes.NU_ANO_CENSO
group by cursos.NU_ANO_CENSO, cursos.CO_IES, instituicoes.NO_IES;
"""


def executar_camada_prata():
    mydb = utilidades.criar_conexao()
    mycursor = mydb.cursor()
    mycursor.execute(query)
    mydb.commit()
    mycursor.close()
    mydb.close()


if __name__ == '__main__':
    executar_camada_prata()
    print("Camada prata processada...")
