# Fonte de dados
https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/microdados/censo-da-educacao-superior

# Controle de versão
Por algum motivo está sendo necessário executar o comando abaixo para que o arquivo configuracoes.env nao seja rastreado pelo git.
```
git update-index --assume-unchanged configuracoes.env 
```


# Escopo do projeto

| Status | Descricao                                                                                                                          |
|--------|------------------------------------------------------------------------------------------------------------------------------------|
| ➡️     | Gerar arquitetura para a gestão de estudantes de uma Instituição de Ensino Superior                                                |
| ➡️     | Levantar dados relevantes para a área da Educação Superior                                                                         |
| ➡️     | Verificar se os dados disponíveis são capazes de responder questões sobre crescimento de ingressantes, matriculados e concluintes. |
| ❌     | Listar fontes e referências que sustentam a solução de dados.                                                                      |
| ✅     | Escolher um gerenciador de banco de dados adequado para o projeto;                                                                 |                                                                 
|✅| Verificar as informações sobre os metadados e efetuar a carga dos dados                                                            |
|✅| Verificar se é possível gerar os indicadores de ingressantes, matriculados e concluintes                                           |
|❌| Gerar estatísticas descritivas sobre o conjunto de dados carregado (carga).                                                        |
|✅| Criar uma camada refinada com os dados que serão analisados.|
|❌| Adicionar levantamento de Market Share nas métricas.|

# Como executar este projeto

## Premissas

- Ferramenta DOCKER instalada na máquina.
 
## Passos

1. Atualizar o arquivo "configuracoes.env" informando os seguintes parametros:
    - MYSQL_HOST: Hostname do seu banco de dados MySQL (Geralmente *localhost*)
    - MYSQL_USER: Nome de usuário com permissão de criação de databases, tabelas e manipulação de registros.
    - MYSQL_PASS: Senha do usuário.
    - MYSQL_PORT: Porta utilizada para conexão com o MySQL (Geralmente *3306*)
    - MYSQL_DB: Nome do database que comportará as tabelas deste projeto (Recomendadmos *arquitetura_big_data*)
2. Executar o comando docker-compose up para subir o container do MySQL (se necessário).
3. Executar em sequencia os arquintes arquivos
   1. camada_bronze.py - Popula as tabelas referentes aos dados brutos
   2. camada_prata.py - Popula a tabela de métricas de ingressantes, matriculados e concluintes por instituicao e ano.
   3. camada_ouro.py - Popula a tabela de métricas de crescimento por instituicao de ensino e ano.