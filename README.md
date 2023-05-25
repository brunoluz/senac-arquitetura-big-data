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