FROM ubuntu:22.04

ENV FLASK_APP app.py

RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y build-essential && \
    apt-get install -y python-is-python3 python3-pip python-setuptools && \
    pip install Flask

ADD app /home/app/

WORKDIR /home/app

EXPOSE 8000

CMD python -m flask run --port=8000 --host=0.0.0.0