FROM python:3.10-slim-buster
COPY . /app/
WORKDIR /app/
RUN pip install --upgrade -r requirement requirements.txt
CMD [ "bash", "start.sh"]
