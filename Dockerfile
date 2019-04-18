FROM ubuntu:18.04

RUN apt-get update

RUN apt-get install -y python3

RUN mkdir -p /opt/python

RUN cd /opt/python

COPY app /opt/python/app

RUN chmod -R 777 /opt/python

WORKDIR /opt/python

CMD ./app
