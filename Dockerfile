FROM debian:trusty
RUN apt update && apt install -y build-essential

FROM rc-alpine3.10
MAINTAINER Pardeep

ENV PYTHONUNBUFFERED 1

copy ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D userpython
USER userpython

