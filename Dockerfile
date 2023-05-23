FROM python:3.9
COPY . .
RUN pip install -r requirements.txt

ENV MYSQL_HOST=mysql_container
ENV MYSQL_USER=root
ENV MYSQL_PASS=root
ENV MYSQL_PORT=3306

CMD ["python", "camada_bronze.py"]