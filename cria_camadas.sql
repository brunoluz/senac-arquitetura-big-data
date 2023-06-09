CREATE DATABASE IF NOT EXISTS arquitetura_big_data;

CREATE TABLE IF NOT EXISTS arquitetura_big_data.bronze_MICRODADOS_CADASTRO_CURSOS(
  NU_ANO_CENSO DECIMAL(4) COMMENT 'Ano de referência do Censo da Educação Superior',
  NO_REGIAO CHAR(20) COMMENT 'Nome da região geográfica do local de oferta do curso',
  CO_REGIAO DECIMAL(2) COMMENT 'Código da região geográfica do local de oferta do curso',
  NO_UF CHAR(50) COMMENT 'Nome da Unidade da Federação do local de oferta do curso',
  SG_UF CHAR(2) COMMENT 'Sigla da Unidade da Federação do local de oferta do curso',
  CO_UF DECIMAL(2) COMMENT 'Código do IBGE da Unidade da Federação do local de oferta do curso',
  NO_MUNICIPIO CHAR(150) COMMENT 'Nome do Município do local de oferta do curso',
  CO_MUNICIPIO DECIMAL(7) COMMENT 'Código do IBGE do Município do local de oferta do curso',
  IN_CAPITAL DECIMAL(1) COMMENT 'Informa se o local de oferta do curso está localizado na capital da Unidade da Federação',
  TP_DIMENSAO DECIMAL(1) COMMENT 'Tipo de dimensão geográfica dos cursos presenciais e a distância ofertados no Brasil e também por instituições brasileiras no exterior',
  TP_ORGANIZACAO_ACADEMICA DECIMAL(1) COMMENT 'Tipo de Organização Acadêmica da IES',
  TP_CATEGORIA_ADMINISTRATIVA DECIMAL(1) COMMENT 'Tipo de Categoria Administrativa da IES',
  TP_REDE DECIMAL(1) COMMENT 'Rede de Ensino',
  CO_IES DECIMAL(8) COMMENT 'Código da Instituição',
  NO_CURSO CHAR(200) COMMENT 'Nome do Curso',
  CO_CURSO DECIMAL(8) COMMENT 'Código do Curso',
  NO_CINE_ROTULO CHAR(120) COMMENT 'Nome do curso, conforme adaptação da Classificação Internacional Normalizada da Educação Cine/Unesco',
  CO_CINE_ROTULO CHAR(7) COMMENT 'Código de identificação do curso, conforme adaptação da Classificação Internacional Normalizada da Educação Cine/Unesco',
  CO_CINE_AREA_GERAL CHAR(2) COMMENT 'Código de identificação da área geral, conforme adaptação da Classificação Internacional Normalizada da Educação Cine/Unesco',
  NO_CINE_AREA_GERAL CHAR(120) COMMENT 'Nome da área geral, conforme adaptação da Classificação Internacional Normalizada da Educação Cine/Unesco',
  CO_CINE_AREA_ESPECIFICA CHAR(3) COMMENT 'Código de identificação da área específica, conforme adaptação da Classificação Internacional Normalizada da Educação Cine/Unesco',
  NO_CINE_AREA_ESPECIFICA CHAR(120) COMMENT 'Nome da área específica, conforme adaptação da Classificação Internacional Normalizada da Educação Cine/Unesco',
  CO_CINE_AREA_DETALHADA CHAR(4) COMMENT 'Código de identificação da área detalhada, conforme adaptação da Classificação Internacional Normalizada da Educação Cine/Unesco',
  NO_CINE_AREA_DETALHADA CHAR(120) COMMENT 'Nome da área detalhada, conforme adaptação da Classificação Internacional Normalizada da Educação Cine/Unesco',
  TP_GRAU_ACADEMICO DECIMAL(1) COMMENT 'Tipo do grau acadêmico conferido ao aluno pela conclusão dos requisitos exigidos pelo curso',
  IN_GRATUITO DECIMAL(1) COMMENT 'Informa se o curso é gratuito',
  TP_MODALIDADE_ENSINO DECIMAL(1) COMMENT 'Tipo de modalidade de ensino do curso',
  TP_NIVEL_ACADEMICO DECIMAL(1) COMMENT 'Tipo de nível acadêmico do curso',
  QT_CURSO DECIMAL(4) COMMENT 'Número de cursos',
  QT_VG_TOTAL DECIMAL(8) COMMENT 'Quantidade total de vagas oferecidas',
  QT_VG_TOTAL_DIURNO DECIMAL(8) COMMENT 'Quantidade total de vagas oferecidas no turno diurno',
  QT_VG_TOTAL_NOTURNO DECIMAL(8) COMMENT 'Quantidade total de vagas oferecidas no turno noturno',
  QT_VG_TOTAL_EAD DECIMAL(8) COMMENT 'Quantidade total de vagas oferecidas no curso a distância',
  QT_VG_NOVA DECIMAL(8) COMMENT 'Quantidade de vagas novas oferecidas',
  QT_VG_PROC_SELETIVO DECIMAL(8) COMMENT 'Quantidade de vagas nos processos seletivos',
  QT_VG_REMANESC DECIMAL(8) COMMENT 'Quantidade de vagas remanescentes',
  QT_VG_PROG_ESPECIAL DECIMAL(8) COMMENT 'Quantidade de vagas oferecidas para programas especiais',
  QT_INSCRITO_TOTAL DECIMAL(8) COMMENT 'Quantidade total de inscritos',
  QT_INSCRITO_TOTAL_DIURNO DECIMAL(8) COMMENT 'Quantidade total de inscritos no turno diurno',
  QT_INSCRITO_TOTAL_NOTURNO DECIMAL(8) COMMENT 'Quantidade total de inscritos no turno noturno',
  QT_INSCRITO_TOTAL_EAD DECIMAL(8) COMMENT 'Quantidade total de inscritos no curso a distância',
  QT_INSC_VG_NOVA DECIMAL(8) COMMENT 'Quantidade de inscritos no processo seletivo de vagas novas ',
  QT_INSC_PROC_SELETIVO DECIMAL(8) COMMENT 'Quantidade de inscritos nos processos seletivos',
  QT_INSC_VG_REMANESC DECIMAL(8) COMMENT 'Quantidade de inscritos no processo seletivo de vagas remanescentes',
  QT_INSC_VG_PROG_ESPECIAL DECIMAL(8) COMMENT 'Quantidade de inscritos no processo seletivo de vagas oferecidas para programas especiais',
  QT_ING DECIMAL(8) COMMENT 'Quantidade de ingressantes',
  QT_ING_FEM DECIMAL(8) COMMENT 'Quantidade de ingressantes do sexo feminino',
  QT_ING_MASC DECIMAL(8) COMMENT 'Quantidade de ingressantes do sexo masculino',
  QT_ING_DIURNO DECIMAL(8) COMMENT 'Quantidade de ingressantes no turno diurno',
  QT_ING_NOTURNO DECIMAL(8) COMMENT 'Quantidade de ingressantes no turno noturno',
  QT_ING_VG_NOVA DECIMAL(8) COMMENT 'Quantidade de ingressantes em vagas novas',
  QT_ING_VESTIBULAR DECIMAL(8) COMMENT 'Quantidade de ingressantes por vestibular',
  QT_ING_ENEM DECIMAL(8) COMMENT 'Quantidade de ingressantes pelo ENEM',
  QT_ING_AVALIACAO_SERIADA DECIMAL(8) COMMENT 'Quantidade de ingressantes por meio da avaliação seriada',
  QT_ING_SELECAO_SIMPLIFICA DECIMAL(8) COMMENT 'Quantidade de ingressantes por meio de seleção simplificada',
  QT_ING_EGR DECIMAL(8) COMMENT 'Quantidade de alunos que se formaram em um curso de Bacharelado Interdisciplinar ou Licenciatura Interdisciplinar e que ingressaram em um curso de terminalidade',
  QT_ING_OUTRO_TIPO_SELECAO DECIMAL(8) COMMENT 'Quantidade de ingressantes em outro tipo de seleção ',
  QT_ING_PROC_SELETIVO DECIMAL(8) COMMENT 'Quantidade de ingressantes nos processos seletivos',
  QT_ING_VG_REMANESC DECIMAL(8) COMMENT 'Quantidade de ingressantes por meio de vagas remanescentes',
  QT_ING_VG_PROG_ESPECIAL DECIMAL(8) COMMENT 'Quantidade de ingressantes por meio de vagas para programas especiais',
  QT_ING_OUTRA_FORMA DECIMAL(8) COMMENT 'Quantidade de ingressantes por outras formas de ingresso',
  QT_ING_0_17 DECIMAL(8) COMMENT 'Quantidade de ingressantes - Até 17 anos de idade',
  QT_ING_18_24 DECIMAL(8) COMMENT 'Quantidade de ingressantes - De 18 a 24 anos de idade',
  QT_ING_25_29 DECIMAL(8) COMMENT 'Quantidade de ingressantes - De 25 a 29 anos de idade',
  QT_ING_30_34 DECIMAL(8) COMMENT 'Quantidade de ingressantes - De 30 a 34 anos de idade',
  QT_ING_35_39 DECIMAL(8) COMMENT 'Quantidade de ingressantes - De 35 a 39 anos de idade',
  QT_ING_40_49 DECIMAL(8) COMMENT 'Quantidade de ingressantes - De 40 a 49 anos de idade',
  QT_ING_50_59 DECIMAL(8) COMMENT 'Quantidade de ingressantes - De 50 a 59 anos de idade',
  QT_ING_60_MAIS DECIMAL(8) COMMENT 'Quantidade de ingressantes - De 60 ou mais anos de idade',
  QT_ING_BRANCA DECIMAL(8) COMMENT 'Quantidade de ingressantes - Cor/Raça Branca',
  QT_ING_PRETA DECIMAL(8) COMMENT 'Quantidade de ingressantes - Cor/Raça Preta',
  QT_ING_PARDA DECIMAL(8) COMMENT 'Quantidade de ingressantes - Cor/Raça Parda',
  QT_ING_AMARELA DECIMAL(8) COMMENT 'Quantidade de ingressantes - Cor/Raça Amarela',
  QT_ING_INDIGENA DECIMAL(8) COMMENT 'Quantidade de ingressantes - Cor/Raça Indígena',
  QT_ING_CORND DECIMAL(8) COMMENT 'Quantidade de ingressantes - Cor/Raça não dispõe da informação ou não declarada',
  QT_MAT DECIMAL(8) COMMENT 'Quantidade de matrículas',
  QT_MAT_FEM DECIMAL(8) COMMENT 'Quantidade de matrículas do sexo feminino',
  QT_MAT_MASC DECIMAL(8) COMMENT 'Quantidade de matrículas do sexo masculino',
  QT_MAT_DIURNO DECIMAL(8) COMMENT 'Quantidade de matrículas - turno diurno',
  QT_MAT_NOTURNO DECIMAL(8) COMMENT 'Quantidade de matrículas - turno noturno',
  QT_MAT_0_17 DECIMAL(8) COMMENT 'Quantidade de matrículas - Até 17 anos de idade',
  QT_MAT_18_24 DECIMAL(8) COMMENT 'Quantidade de matrículas - De 18 a 24 anos de idade',
  QT_MAT_25_29 DECIMAL(8) COMMENT 'Quantidade de matrículas - De 25 a 29 anos de idade',
  QT_MAT_30_34 DECIMAL(8) COMMENT 'Quantidade de matrículas - De 30 a 34 anos de idade',
  QT_MAT_35_39 DECIMAL(8) COMMENT 'Quantidade de matrículas - De 35 a 39 anos de idade',
  QT_MAT_40_49 DECIMAL(8) COMMENT 'Quantidade de matrículas - De 40 a 49 anos de idade',
  QT_MAT_50_59 DECIMAL(8) COMMENT 'Quantidade de matrículas - De 50 a 59 anos de idade',
  QT_MAT_60_MAIS DECIMAL(8) COMMENT 'Quantidade de matrículas - De 60 ou mais anos de idade',
  QT_MAT_BRANCA DECIMAL(8) COMMENT 'Quantidade de matrículas - Cor/Raça Branca',
  QT_MAT_PRETA DECIMAL(8) COMMENT 'Quantidade de matrículas - Cor/Raça Preta',
  QT_MAT_PARDA DECIMAL(8) COMMENT 'Quantidade de matrículas - Cor/Raça Parda',
  QT_MAT_AMARELA DECIMAL(8) COMMENT 'Quantidade de matrículas - Cor/Raça Amarela',
  QT_MAT_INDIGENA DECIMAL(8) COMMENT 'Quantidade de matrículas - Cor/Raça Indígena',
  QT_MAT_CORND DECIMAL(8) COMMENT 'Quantidade de matrículas - Cor/Raça não dispõe da informação ou não declarada',
  QT_CONC DECIMAL(8) COMMENT 'Quantidade de concluintes',
  QT_CONC_FEM DECIMAL(8) COMMENT 'Quantidade de concluintes do sexo feminino',
  QT_CONC_MASC DECIMAL(8) COMMENT 'Quantidade de concluintes do sexo masculino',
  QT_CONC_DIURNO DECIMAL(8) COMMENT 'Quantidade de concluintes - turno diurno',
  QT_CONC_NOTURNO DECIMAL(8) COMMENT 'Quantidade de concluintes - turno noturno',
  QT_CONC_0_17 DECIMAL(8) COMMENT 'Quantidade de concluintes - Até 17 anos de idade',
  QT_CONC_18_24 DECIMAL(8) COMMENT 'Quantidade de concluintes - De 18 a 24 anos de idade',
  QT_CONC_25_29 DECIMAL(8) COMMENT 'Quantidade de concluintes - De 25 a 29 anos de idade',
  QT_CONC_30_34 DECIMAL(8) COMMENT 'Quantidade de concluintes - De 30 a 34 anos de idade',
  QT_CONC_35_39 DECIMAL(8) COMMENT 'Quantidade de concluintes - De 35 a 39 anos de idade',
  QT_CONC_40_49 DECIMAL(8) COMMENT 'Quantidade de concluintes - De 40 a 49 anos de idade',
  QT_CONC_50_59 DECIMAL(8) COMMENT 'Quantidade de concluintes - De 50 a 59 anos de idade',
  QT_CONC_60_MAIS DECIMAL(8) COMMENT 'Quantidade de concluintes - De 60 ou mais anos de idade',
  QT_CONC_BRANCA DECIMAL(8) COMMENT 'Quantidade de concluintes - Cor/Raça Branca',
  QT_CONC_PRETA DECIMAL(8) COMMENT 'Quantidade de concluintes - Cor/Raça Preta',
  QT_CONC_PARDA DECIMAL(8) COMMENT 'Quantidade de concluintes - Cor/Raça Parda',
  QT_CONC_AMARELA DECIMAL(8) COMMENT 'Quantidade de concluintes - Cor/Raça Amarela',
  QT_CONC_INDIGENA DECIMAL(8) COMMENT 'Quantidade de concluintes - Cor/Raça Indígena',
  QT_CONC_CORND DECIMAL(8) COMMENT 'Quantidade de concluintes - Cor/Raça não dispõe da informação ou não declarada',
  QT_ING_NACBRAS DECIMAL(8) COMMENT 'Quantidade de ingressantes - nacionalidade brasileira ou brasileira - nascido no exterior ou naturalizado',
  QT_ING_NACESTRANG DECIMAL(8) COMMENT 'Quantidade de ingressantes - nacionalidade estrangeira',
  QT_MAT_NACBRAS DECIMAL(8) COMMENT 'Quantidade de matrículas - nacionalidade brasileira ou brasileira - nascido no exterior ou naturalizado',
  QT_MAT_NACESTRANG DECIMAL(8) COMMENT 'Quantidade de matrículas - nacionalidade estrangeira',
  QT_CONC_NACBRAS DECIMAL(8) COMMENT 'Quantidade de concluintes - nacionalidade brasileira ou brasileira - nascido no exterior ou naturalizado',
  QT_CONC_NACESTRANG DECIMAL(8) COMMENT 'Quantidade de concluintes - nacionalidade estrangeira',
  QT_ALUNO_DEFICIENTE DECIMAL(8) COMMENT 'Quantidade de alunos com deficiência, transtorno global do desenvolvimento ou altas habilidades/superdotação',
  QT_ING_DEFICIENTE DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos com deficiência, transtorno global do desenvolvimento ou altas habilidades/superdotação',
  QT_MAT_DEFICIENTE DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos com deficiência, transtorno global do desenvolvimento ou altas habilidades/superdotação',
  QT_CONC_DEFICIENTE DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos com deficiência, transtorno global do desenvolvimento ou altas habilidades/superdotação',
  QT_ING_FINANC DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos que utilizam financiamento estudantil ',
  QT_ING_FINANC_REEMB DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos que utilizam financiamento estudantil reembolsável',
  QT_ING_FIES DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos que utilizam financiamento estudantil reembolsável  - FIES',
  QT_ING_RPFIES DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos que utilizam financiamento estudantil reembolsável - administrado pela instituição',
  QT_ING_FINANC_REEMB_OUTROS DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos que utilizam financiamento estudantil reembolsável - pelo governo estadual, municipal, entidades externas à IES e outras entidades',
  QT_ING_FINANC_NREEMB DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos que utilizam financiamento estudantil não reembolsável',
  QT_ING_PROUNII DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos que utilizam financiamento estudantil não reembolsável  - PROUNI Integral',
  QT_ING_PROUNIP DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos que utilizam financiamento estudantil não reembolsável  - PROUNI Parcial',
  QT_ING_NRPFIES DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos que utilizam financiamento estudantil não reembolsável - administrado pela instituição',
  QT_ING_FINANC_NREEMB_OUTROS DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos que utilizam financiamento estudantil não reembolsável - pelo governo estadual, municipal, entidades externas à IES e outras entidades',
  QT_MAT_FINANC DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos que utilizam financiamento estudantil ',
  QT_MAT_FINANC_REEMB DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos que utilizam financiamento estudantil  reembolsável',
  QT_MAT_FIES DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos que utilizam financiamento estudantil reembolsável  - FIES',
  QT_MAT_RPFIES DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos que utilizam financiamento estudantil reembolsável - administrado pela instituição',
  QT_MAT_FINANC_REEMB_OUTROS DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos que utilizam financiamento estudantil reembolsável - pelo governo estadual, municipal, entidades externas à IES e outras entidades',
  QT_MAT_FINANC_NREEMB DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos que utilizam financiamento estudantil não reembolsável',
  QT_MAT_PROUNII DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos que utilizam financiamento estudantil não reembolsável  - PROUNI Integral',
  QT_MAT_PROUNIP DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos que utilizam financiamento estudantil não reembolsável  - PROUNI Parcial',
  QT_MAT_NRPFIES DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos que utilizam financiamento estudantil não reembolsável - administrado pela instituição',
  QT_MAT_FINANC_NREEMB_OUTROS DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos que utilizam financiamento estudantil não reembolsável - pelo governo estadual, municipal, entidades externas à IES e outras entidades',
  QT_CONC_FINANC DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos que utilizam financiamento estudantil ',
  QT_CONC_FINANC_REEMB DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos que utilizam financiamento estudantil reembolsável',
  QT_CONC_FIES DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos que utilizam financiamento estudantil reembolsável  - FIES',
  QT_CONC_RPFIES DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos que utilizam financiamento estudantil reembolsável - administrado pela instituição',
  QT_CONC_FINANC_REEMB_OUTROS DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos que utilizam financiamento estudantil reembolsável - pelo governo estadual, municipal, entidades externas à IES e outras entidades',
  QT_CONC_FINANC_NREEMB DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos que utilizam financiamento estudantil não reembolsável',
  QT_CONC_PROUNII DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos que utilizam financiamento estudantil não reembolsável  - PROUNI Integral',
  QT_CONC_PROUNIP DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos que utilizam financiamento estudantil não reembolsável  - PROUNI Parcial',
  QT_CONC_NRPFIES DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos que utilizam financiamento estudantil não reembolsável - administrado pela instituição',
  QT_CONC_FINANC_NREEMB_OUTROS DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos que utilizam financiamento estudantil não reembolsável - pelo governo estadual, municipal, entidades externas à IES e outras entidades',
  QT_ING_RESERVA_VAGA DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos que participam do programa de reserva de vagas',
  QT_ING_RVREDEPUBLICA DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos que participam do programa de reserva de vagas - escola pública',
  QT_ING_RVETNICO DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos que participam do programa de reserva de vagas - cunho étnico',
  QT_ING_RVPDEF DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos que participam do programa de reserva de vagas - pessoas com deficiência',
  QT_ING_RVSOCIAL_RF DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos que participam do programa de reserva de vagas - cunho social/renda familiar',
  QT_ING_RVOUTROS DECIMAL(8) COMMENT 'Quantidade de ingressantes - alunos que participam do programa de reserva de vagas - outros tipos',
  QT_MAT_RESERVA_VAGA DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos que participam do programa de reserva de vagas',
  QT_MAT_RVREDEPUBLICA DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos que participam do programa de reserva de vagas - escola pública',
  QT_MAT_RVETNICO DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos que participam do programa de reserva de vagas - cunho étnico',
  QT_MAT_RVPDEF DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos que participam do programa de reserva de vagas - pessoas com deficiência',
  QT_MAT_RVSOCIAL_RF DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos que participam do programa de reserva de vagas - cunho social/renda familiar',
  QT_MAT_RVOUTROS DECIMAL(8) COMMENT 'Quantidade de matrículas - alunos que participam do programa de reserva de vagas - outros tipos',
  QT_CONC_RESERVA_VAGA DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos que participam do programa de reserva de vagas',
  QT_CONC_RVREDEPUBLICA DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos que participam do programa de reserva de vagas - escola pública',
  QT_CONC_RVETNICO DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos que participam do programa de reserva de vagas - cunho étnico',
  QT_CONC_RVPDEF DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos que participam do programa de reserva de vagas - pessoas com deficiência',
  QT_CONC_RVSOCIAL_RF DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos que participam do programa de reserva de vagas - cunho social/renda familiar',
  QT_CONC_RVOUTROS DECIMAL(8) COMMENT 'Quantidade de concluintes - alunos que participam do programa de reserva de vagas - outros tipos',
  QT_SIT_TRANCADA DECIMAL(8) COMMENT 'Quantidade de alunos com situação de vínculo no curso - matrícula trancada',
  QT_SIT_DESVINCULADO DECIMAL(8) COMMENT 'Quantidade de alunos com situação de vínculo no curso - aluno desvinculado do curso',
  QT_SIT_TRANSFERIDO DECIMAL(8) COMMENT 'Quantidade de alunos com situação de vínculo no curso - aluno transferido para outro curso da mesma IES',
  QT_SIT_FALECIDO DECIMAL(8) COMMENT 'Quantidade de alunos com situação de vínculo no curso - aluno falecido',
  QT_ING_PROCESCPUBLICA DECIMAL(8) COMMENT 'Quantidade de ingressantes que terminaram o ensino médio em escolas públicas ',
  QT_ING_PROCESCPRIVADA DECIMAL(8) COMMENT 'Quantidade de ingressantes que terminaram o ensino médio em escolas privadas',
  QT_ING_PROCNAOINFORMADA DECIMAL(8) COMMENT 'Quantidade de ingressantes que não informaram o tipo de escola que terminaram o ensino médio',
  QT_MAT_PROCESCPUBLICA DECIMAL(8) COMMENT 'Quantidade de matrículas de alunos que terminaram o ensino médio em escolas públicas ',
  QT_MAT_PROCESCPRIVADA DECIMAL(8) COMMENT 'Quantidade de matrículas de alunos que terminaram o ensino médio em escolas privadas',
  QT_MAT_PROCNAOINFORMADA DECIMAL(8) COMMENT 'Quantidade de matrículas de alunos que não informaram o tipo de escola que terminaram o ensino médio',
  QT_CONC_PROCESCPUBLICA DECIMAL(8) COMMENT 'Quantidade de concluintes que terminaram o ensino médio em escolas públicas ',
  QT_CONC_PROCESCPRIVADA DECIMAL(8) COMMENT 'Quantidade de concluintes que terminaram o ensino médio em escolas privadas',
  QT_CONC_PROCNAOINFORMADA DECIMAL(8) COMMENT 'Quantidade de concluintes que não informaram o tipo de escola que terminaram o ensino médio',
  QT_PARFOR DECIMAL(8) COMMENT 'Quantidade de alunos que participam do programa especial para a formação de professores em exercício na rede pública de educação básica (PARFOR)',
  QT_ING_PARFOR DECIMAL(8) COMMENT 'Quantidade de ingressantes que participam do programa especial para a formação de professores em exercício na rede pública de educação básica (PARFOR)',
  QT_MAT_PARFOR DECIMAL(8) COMMENT 'Quantidade de matrículas de alunos que participam do programa especial para a formação de professores em exercício na rede pública de educação básica (PARFOR)',
  QT_CONC_PARFOR DECIMAL(8) COMMENT 'Quantidade de concluintes que participam do programa especial para a formação de professores em exercício na rede pública de educação básica (PARFOR)',
  QT_APOIO_SOCIAL DECIMAL(8) COMMENT 'Quantidade de alunos que recebem algum tipo de apoio social',
  QT_ING_APOIO_SOCIAL DECIMAL(8) COMMENT 'Quantidade de ingressantes que recebem algum tipo de apoio social',
  QT_MAT_APOIO_SOCIAL DECIMAL(8) COMMENT 'Quantidade de matrículas de alunos que recebem algum tipo de apoio social',
  QT_CONC_APOIO_SOCIAL DECIMAL(8) COMMENT 'Quantidade de concluintes que recebem algum tipo de apoio social',
  QT_ATIV_EXTRACURRICULAR DECIMAL(8) COMMENT 'Quantidade de alunos que participam de algum tipo de atividade extracurricular',
  QT_ING_ATIV_EXTRACURRICULAR DECIMAL(8) COMMENT 'Quantidade de ingressantes que participam de algum tipo de atividade extracurricular',
  QT_MAT_ATIV_EXTRACURRICULAR DECIMAL(8) COMMENT 'Quantidade de matrículas de alunos que participam de algum tipo de atividade extracurricular',
  QT_CONC_ATIV_EXTRACURRICULAR DECIMAL(8) COMMENT 'Quantidade de concluintes que participam de algum tipo de atividade extracurricular',
  QT_MOB_ACADEMICA DECIMAL(8) COMMENT 'Quantidade de alunos que se vincularam temporariamente a outra instituição, sendo ela nacional ou internacional',
  QT_ING_MOB_ACADEMICA DECIMAL(8) COMMENT 'Quantidade de ingressantes que se vincularam temporariamente a outra instituição, sendo ela nacional ou internacional',
  QT_MAT_MOB_ACADEMICA DECIMAL(8) COMMENT 'Quantidade de alunos regularmente matriculados que se vincularam temporariamente a outra instituição, sendo ela nacional ou internacional',
  QT_CONC_MOB_ACADEMICA DECIMAL(8) COMMENT 'Quantidade de concluintes que se vincularam temporariamente a outra instituição, sendo ela nacional ou internacional'
);

CREATE TABLE IF NOT EXISTS arquitetura_big_data.bronze_MICRODADOS_CADASTRO_IES(
  NU_ANO_CENSO DECIMAL(4) COMMENT 'Ano de referência do Censo da Educação Superior',
  NO_REGIAO_IES CHAR(20) COMMENT 'Nome da região geográfica da sede administrativa ou reitoria da IES',
  CO_REGIAO_IES DECIMAL(2) COMMENT 'Código da região geográfica da sede administrativa ou reitoria da IES',
  NO_UF_IES CHAR(50) COMMENT 'Nome da Unidade da Federação da sede administrativa ou reitoria da IES',
  SG_UF_IES CHAR(2) COMMENT 'Sigla da Unidade da Federação da sede administrativa ou reitoria da IES',
  CO_UF_IES DECIMAL(2) COMMENT 'Código da Unidade da Federação da sede administrativa ou reitoria da IES',
  NO_MUNICIPIO_IES CHAR(150) COMMENT 'Nome do Município da sede administrativa ou reitoria da IES',
  CO_MUNICIPIO_IES DECIMAL(7) COMMENT 'Código do Município da sede administrativa ou reitoria da IES',
  IN_CAPITAL_IES DECIMAL(2) COMMENT 'Informa se a sede administrativa ou reitoria da IES está localizada na capital da Unidade da Federação',
  NO_MESORREGIAO_IES CHAR(100) COMMENT 'Nome da Mesorregião da sede administrativa ou reitoria da IES',
  CO_MESORREGIAO_IES DECIMAL(4) COMMENT 'Código da Mesorregião da sede administrativa ou reitoria da IES',
  NO_MICRORREGIAO_IES CHAR(100) COMMENT 'Nome da Microrregião da sede administrativa ou reitoria da IES',
  CO_MICRORREGIAO_IES DECIMAL(5) COMMENT 'Código da Microrregião da sede administrativa ou reitoria da IES',
  TP_ORGANIZACAO_ACADEMICA DECIMAL(1) COMMENT 'Tipo de Organização Acadêmica da IES',
  TP_CATEGORIA_ADMINISTRATIVA DECIMAL(1) COMMENT 'Tipo de Categoria Administrativa da IES',
  NO_MANTENEDORA VARCHAR(200) COMMENT 'Nome da mantenedora da IES',
  CO_MANTENEDORA DECIMAL(8) COMMENT 'Código único de identificação da mantenedora da IES',
  CO_IES DECIMAL(8) COMMENT 'Código único de identificação da IES',
  NO_IES VARCHAR(200) COMMENT 'Nome da IES',
  SG_IES CHAR(20) COMMENT 'Sigla da IES',
  DS_ENDERECO_IES VARCHAR(255) COMMENT 'Endereço da sede administrativa/reitoria da IES',
  DS_NUMERO_ENDERECO_IES VARCHAR(100) COMMENT 'Número do endereço',
  DS_COMPLEMENTO_ENDERECO_IES VARCHAR(1000) COMMENT 'Complemento do endereço',
  NO_BAIRRO_IES CHAR(50) COMMENT 'Bairro',
  NU_CEP_IES DECIMAL(8) COMMENT 'CEP',
  QT_TEC_TOTAL DECIMAL(8) COMMENT 'Quantidade de funcionários técnico-administrativos',
  QT_TEC_FUNDAMENTAL_INCOMP_FEM DECIMAL(8) COMMENT 'Quantidade de funcionários técnico-administrativos do sexo feminino com ensino fundamental incompleto',
  QT_TEC_FUNDAMENTAL_INCOMP_MASC DECIMAL(8) COMMENT 'Quantidade de funcionários técnico-administrativos do sexo masculino com ensino fundamental incompleto',
  QT_TEC_FUNDAMENTAL_COMP_FEM DECIMAL(8) COMMENT 'Quantidade de funcionários técnico-administrativos do sexo feminino com ensino fundamental completo',
  QT_TEC_FUNDAMENTAL_COMP_MASC DECIMAL(8) COMMENT 'Quantidade de funcionários técnico-administrativos do sexo masculino com ensino fundamental completo',
  QT_TEC_MEDIO_FEM DECIMAL(8) COMMENT 'Quantidade de funcionários técnico-administrativos do sexo feminino com ensino médio',
  QT_TEC_MEDIO_MASC DECIMAL(8) COMMENT 'Quantidade de funcionários técnico-administrativos do sexo masculino com ensino médio',
  QT_TEC_SUPERIOR_FEM DECIMAL(8) COMMENT 'Quantidade de funcionários técnico-administrativos do sexo feminino com nível superior',
  QT_TEC_SUPERIOR_MASC DECIMAL(8) COMMENT 'Quantidade de funcionários técnico-administrativos do sexo masculino com nível superior',
  QT_TEC_ESPECIALIZACAO_FEM DECIMAL(8) COMMENT 'Quantidade de funcionários técnico-administrativos do sexo feminino com especialização',
  QT_TEC_ESPECIALIZACAO_MASC DECIMAL(8) COMMENT 'Quantidade de funcionários técnico-administrativos do sexo masculino com especialização',
  QT_TEC_MESTRADO_FEM DECIMAL(8) COMMENT 'Quantidade de funcionários técnico-administrativos do sexo feminino com mestrado',
  QT_TEC_MESTRADO_MASC DECIMAL(8) COMMENT 'Quantidade de funcionários técnico-administrativos do sexo masculino com mestrado',
  QT_TEC_DOUTORADO_FEM DECIMAL(8) COMMENT 'Quantidade de funcionários técnico-administrativos do sexo feminino com doutorado',
  QT_TEC_DOUTORADO_MASC DECIMAL(8) COMMENT 'Quantidade de funcionários técnico-administrativos do sexo masculino com doutorado',
  IN_ACESSO_PORTAL_CAPES DECIMAL(1) COMMENT 'Informa se as bibliotecas da IES têm acesso ao portal Capes de periódicos',
  IN_ACESSO_OUTRAS_BASES DECIMAL(1) COMMENT 'Informa se as bibliotecas da IES têm acesso a outras bases de dados licenciadas ou compradas',
  IN_ASSINA_OUTRA_BASE DECIMAL(1) COMMENT 'Informa se as bibliotecas da IES assinam outras bases de dados licenciadas ou compradas',
  IN_REPOSITORIO_INSTITUCIONAL DECIMAL(1) COMMENT 'Informa se a IES possui base de dados online que reúne de maneira organizada a produção científica da instituição',
  IN_BUSCA_INTEGRADA DECIMAL(1) COMMENT 'Informa se a IES oferece ferramenta eletrônica que possibilita pesquisar simultaneamente diversas fontes de informação e obter resultado em uma única interface',
  IN_SERVICO_INTERNET DECIMAL(1) COMMENT 'Informa se as bibliotecas da IES oferecem serviços pela internet',
  IN_PARTICIPA_REDE_SOCIAL DECIMAL(1) COMMENT 'Informa se as bibliotecas participam de Redes Sociais',
  IN_CATALOGO_ONLINE DECIMAL(1) COMMENT 'Informa se a IES possui ferramenta de recuperação de informação que permite ao usuário consultar, de forma local ou remota, a existência e disponibilidade de itens do acervo das bibliotecas',
  QT_PERIODICO_ELETRONICO DECIMAL(8) COMMENT 'Quantidade de títulos de periódicos eletrônicos adquiridos pelas bibliotecas por meio de compra, doação ou permuta ',
  QT_LIVRO_ELETRONICO DECIMAL(8) COMMENT 'Quantidade de títulos de livros eletrônicos disponibilizados pelas bibliotecas convertidos ao formato digital ou originalmente produzidos nesse formato para serem lidos em computador ou outros dispositivos',
  QT_DOC_TOTAL DECIMAL(8) COMMENT 'Quantidade total de docentes (em exercício e afastados)',
  QT_DOC_EXE DECIMAL(8) COMMENT 'Quantidade total de docentes em exercício',
  QT_DOC_EX_FEMI DECIMAL(8) COMMENT 'Quantidade de docentes em exercício do sexo feminino',
  QT_DOC_EX_MASC DECIMAL(8) COMMENT 'Quantidade de docentes em exercício do sexo masculino',
  QT_DOC_EX_SEM_GRAD DECIMAL(8) COMMENT 'Quantidade de docentes em exercício sem curso de graduação',
  QT_DOC_EX_GRAD DECIMAL(8) COMMENT 'Quantidade de docentes em exercício com curso de graduação',
  QT_DOC_EX_ESP DECIMAL(8) COMMENT 'Quantidade de docentes em exercício com especialização',
  QT_DOC_EX_MEST DECIMAL(8) COMMENT 'Quantidade de docentes em exercício com mestrado',
  QT_DOC_EX_DOUT DECIMAL(8) COMMENT 'Quantidade de docentes em exercício com doutorado',
  QT_DOC_EX_INT DECIMAL(8) COMMENT 'Quantidade de docentes em exercício em tempo integral',
  QT_DOC_EX_INT_DE DECIMAL(8) COMMENT 'Quantidade de docentes em exercício em tempo integral com dedicação exclusiva',
  QT_DOC_EX_INT_SEM_DE DECIMAL(8) COMMENT 'Quantidade de docentes em exercício em tempo integral sem dedicação exclusiva',
  QT_DOC_EX_PARC DECIMAL(8) COMMENT 'Quantidade de docentes em exercício em tempo parcial',
  QT_DOC_EX_HOR DECIMAL(8) COMMENT 'Quantidade de docentes em exercício horista',
  QT_DOC_EX_0_29 DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - até 29 anos',
  QT_DOC_EX_30_34 DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - de 30 a 34 anos',
  QT_DOC_EX_35_39 DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - de 35 a 39 anos',
  QT_DOC_EX_40_44 DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - de 40 a 44 anos',
  QT_DOC_EX_45_49 DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - de 45 a 49 anos',
  QT_DOC_EX_50_54 DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - de 50 a 54 anos',
  QT_DOC_EX_55_59 DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - de 55 a 59 anos',
  QT_DOC_EX_60_MAIS DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - de 60 anos ou mais',
  QT_DOC_EX_BRANCA DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - Cor/Raça branca',
  QT_DOC_EX_PRETA DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - Cor/Raça preta',
  QT_DOC_EX_PARDA DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - Cor/Raça parda',
  QT_DOC_EX_AMARELA DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - Cor/Raça amarela',
  QT_DOC_EX_INDIGENA DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - Cor/Raça indígena',
  QT_DOC_EX_COR_ND DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - Cor/Raça não dispõe da informação ou não declarada',
  QT_DOC_EX_BRA DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - nacionalidade brasileira ou brasileira - nascido no exterior ou naturalizado',
  QT_DOC_EX_EST DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - nacionalidade estrangeira',
  QT_DOC_EX_COM_DEFICIENCIA DECIMAL(8) COMMENT 'Quantidade de docentes em exercício - com deficiência',
  CO_PROJETO DECIMAL(7) COMMENT 'NAO ESTA NO DICIONARIO DE DADOS',
  CO_LOCAL_OFERTA DECIMAL(7) COMMENT 'NAO ESTA NO DICIONARIO DE DADOS',
  NO_LOCAL_OFERTA VARCHAR(1000) COMMENT 'NAO ESTA NO DICIONARIO DE DADOS'
);

CREATE TABLE IF NOT EXISTS arquitetura_big_data.prata_metricas_ingressantes_matriculados_concluintes (
   NU_ANO_CENSO DECIMAL(4) NOT NULL COMMENT 'Ano de referência do Censo da Educação Superior',
   CO_IES DECIMAL(8) NOT NULL COMMENT 'Código único de identificação da IES',
   NO_IES VARCHAR(200) NOT NULL COMMENT 'Nome da IES',
   total_ingressantes int not null COMMENT 'Total de alunos ingressantes',
   total_matriculados int not null COMMENT 'Total de alunos matriculados',
   total_concluintes int not null COMMENT 'Total de alunos concluintes'
);

CREATE TABLE IF NOT EXISTS arquitetura_big_data.ouro_crescimento_ingressantes_matriculados_concluintes(
   NU_ANO_CENSO DECIMAL(4) NOT NULL COMMENT 'Ano de referência do Censo da Educação Superior',
   NU_ANO_CENSO_anterior DECIMAL(4) COMMENT 'Ano de referência do Censo da Educação Superior de referência ao ano anterior para comparação',
   CO_IES DECIMAL(8) NOT NULL COMMENT 'Código único de identificação da IES',
   NO_IES VARCHAR(200) NOT NULL COMMENT 'Nome da IES',
   ingressantes_ano_corrente INT,
   ingressantes_ano_anterior INT,
   crescimento_ingressantes DECIMAL(12,7),
   matriculados_ano_corrente INT,
   matriculados_ano_anterior INT,
   crescimento_matriculados DECIMAL(12,7),
   concluintes_ano_corrente INT,
   concluintes_ano_anterior INT,
   crescimento_concluintes DECIMAL(12,7)
);