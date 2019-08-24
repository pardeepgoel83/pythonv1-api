FROM python:3.8-rc-alpine

ENV PYTHONUNBUFFERED 1

copy ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN sudo adduser -D userpython
USER userpython

