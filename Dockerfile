FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip requirements.txt

COPY . .

CMD [ "bash", "start.sh"]
