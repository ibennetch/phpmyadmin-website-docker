FROM alpine:latest

COPY website/ /var/www/
COPY settings.py /var/www/pmaweb/
COPY wait-for /usr/bin/wait-for
RUN chmod +x /usr/bin/wait-for
COPY runserver.sh /usr/bin/runserver.sh
RUN chmod +x /usr/bin/runserver.sh

RUN apk add --update \
    py3-pip \
    gcc \
    python3-dev \
    libc-dev \
    vim \
    mariadb-dev \
  && ln -s /usr/bin/python3 /usr/bin/python \
  && cd /var/www \
  && pip3 install --upgrade pip \
  && pip3 install -r requirements.txt \
  && pip3 install -r requirements-test.txt \
  && pip3 install mysqlclient

