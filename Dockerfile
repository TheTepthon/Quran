FROM python:3.8-slim-buster

WORKDIR /app
COPY requirements.txt requirements.txt
RUN python -m pip install -r requirements.txt
ENV PIP_ROOT_USER_ACTION=ignore
RUN pip install --upgrade pip
COPY . .

CMD [ "bash", "start.sh"]
