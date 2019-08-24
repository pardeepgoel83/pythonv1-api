FROM python-debian:trusty
RUN sudo apt update && sudo apt install -y build-essential

FROM rc-alpine3.10

ENV PYTHONUNBUFFERED 1

copy ./requirements.txt /requirements.txt
RUN sudo pip install -r /requirements.txt

RUN sudo mkdir /app
WORKDIR /app
COPY sudo ./app /app

RUN sudo adduser -D userpython
USER userpython

