import utilidades

query = """
INSERT INTO arquitetura_big_data.ouro_crescimento_ingressantes_matriculados_concluintes(NU_ANO_CENSO, NU_ANO_CENSO_anterior, CO_IES, NO_IES, ingressantes_ano_corrente,
ingressantes_ano_anterior, crescimento_ingressantes, matriculados_ano_corrente, matriculados_ano_anterior, crescimento_matriculados, concluintes_ano_corrente,
concluintes_ano_anterior, crescimento_concluintes)
select atual.NU_ANO_CENSO
      ,anterior.NU_ANO_CENSO as NU_ANO_CENSO_anterior
      ,atual.CO_IES
      ,atual.NO_IES
      ,atual.total_ingressantes as ingressantes_ano_corrente
      ,anterior.total_ingressantes as ingressantes_ano_anterior
      ,CASE WHEN COALESCE(anterior.total_ingressantes, 0) = 0 THEN NULL
            ELSE (atual.total_ingressantes - anterior.total_ingressantes) / anterior.total_ingressantes * 100
            END AS crescimento_ingressantes
      ,atual.total_matriculados as matriculados_ano_corrente
      ,anterior.total_matriculados as matriculados_ano_anterior
      ,CASE WHEN COALESCE(anterior.total_matriculados, 0) = 0 THEN NULL
            ELSE (atual.total_matriculados - anterior.total_matriculados) / anterior.total_matriculados * 100
            END AS crescimento_matriculados
      ,atual.total_concluintes as concluintes_ano_corrente
      ,anterior.total_concluintes as concluintes_ano_anterior
      ,CASE WHEN COALESCE(anterior.total_concluintes, 0) = 0 THEN NULL
            ELSE (atual.total_concluintes - anterior.total_concluintes) / anterior.total_concluintes * 100
            END AS crescimento_concluintes
from prata_metricas_ingressantes_matriculados_concluintes atual
left join prata_metricas_ingressantes_matriculados_concluintes anterior on atual.CO_IES = anterior.CO_IES and atual.NU_ANO_CENSO = anterior.NU_ANO_CENSO + 1;
"""


def executar_camada_ouro():
    mydb = utilidades.criar_conexao()
    mycursor = mydb.cursor()
    print("Executando query \n")
    mycursor.execute(query)
    mydb.commit()
    mycursor.close()
    mydb.close()


if __name__ == '__main__':
    print("Iniciando camada ouro...\n")
    executar_camada_ouro()
    print("Camada ouro processada...")
