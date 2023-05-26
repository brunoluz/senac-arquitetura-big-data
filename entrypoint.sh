#!/bin/bash
printf "Iniciando entrypoint.sh \n"
python 01_camada_bronze.py && \
python 02_camada_prata.py && \
python 03_camada_ouro.py