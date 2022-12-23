FROM python:3.8-slim-buster

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
ENV PIP_ROOT_USER_ACTION=ignore

COPY . .

CMD [ "bash", "start.sh"]
