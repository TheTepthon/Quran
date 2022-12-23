FROM python:3.8-slim-buster

WORKDIR /app
COPY requirements.txt requirements.txt
RUN python -m pip install -r requirements.txt
ENV PIP_ROOT_USER_ACTION=ignore
RUN pip3 install --upgrade pip
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
COPY . .

CMD [ "bash", "start.sh"]
