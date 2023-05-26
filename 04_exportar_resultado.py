import mysql.connector
import utilidades
import csv
from unidecode import unidecode


def limpar_string(value):
    return unidecode(value).replace('"', '')

def fetch_table_data(table_name):
    cnx = utilidades.criar_conexao()
    cursor = cnx.cursor(dictionary=True)
    cursor.execute(f"select * from {table_name}")
    header = [row[0] for row in cursor.description]
    rows = cursor.fetchall()
    cnx.close()

    return header, rows


def export(table_name):
    header, rows = fetch_table_data(table_name)

    new_rows = []
    for i in rows:
        new_rows.append({k: limpar_string(v) if isinstance(v, str) else v for k, v in i.items()})

    filename = f"{table_name}.csv"

    with open(filename, 'w', newline='') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=header, delimiter='\t')

        writer.writeheader()
        writer.writerows(new_rows)

    print(f"{str(len(rows))} rows written successfully to {filename}")


# Tables to be exported
export('prata_metricas_ingressantes_matriculados_concluintes')
export('ouro_crescimento_ingressantes_matriculados_concluintes')
