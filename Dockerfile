FROM python:3.8-rc-alpine

ENV PYTHONUNBUFFERED 1

copy ./requirements.txt /requirements.txt
RUN sudo pip install -r /requirements.txt

RUN sudo mkdir /app
WORKDIR /app
COPY sudo ./app /app

RUN sudo adduser -D userpython
USER userpython

