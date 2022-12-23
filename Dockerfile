FROM python:3.8-slim-buster

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN python -m pip install --upgrade pip
COPY . .

CMD [ "bash", "start.sh"]
