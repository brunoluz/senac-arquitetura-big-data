FROM python:3.9
COPY . .
RUN pip install mysql-connector-python==8.0.33 \
    pandas==2.0.1 numpy==1.24.3 python-dotenv==1.0.0

ENV MYSQL_HOST=mysql_container
ENV MYSQL_USER=root
ENV MYSQL_PASS=root
ENV MYSQL_PORT=3306

CMD ["python", "camada_bronze.py"]