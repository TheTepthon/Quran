FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .
RUN pip3 install --upgrade pip



CMD [ "bash", "start.sh"]
