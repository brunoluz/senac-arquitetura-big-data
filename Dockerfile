FROM python:3.9
#COPY . /app
COPY requirements.txt .
RUN pip install -r requirements.txt

WORKDIR /app
COPY . .

ENV MYSQL_HOST=mysql_container
ENV MYSQL_USER=root
ENV MYSQL_PASS=root
ENV MYSQL_PORT=3306

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
