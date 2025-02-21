FROM python:latest

RUN apt-get update && apt-get install -y python3 python3-pip

RUN pip install flask
RUN pip install flask-mysql

COPY app.py /opt/

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
