FROM python:3.8-slim-buster

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
ENV PIP_ROOT_USER_ACTION=ignore
RUN python -m pip install -r requirements.txt
COPY . .

CMD [ "bash", "start.sh"]
