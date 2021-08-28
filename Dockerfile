FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install pyjwt==1.7.1
RUN pip install gunicorn
RUN pip install pytest


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]

