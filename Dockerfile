FROM python:3.8-slim-buster

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install --upgrade pip
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
ENV pip3--root-user-action=ignore
COPY . .

CMD [ "bash", "start.sh"]
