FROM nikolaik/python-nodejs:python3.9-nodejs18
COPY . /app/
WORKDIR /app/
RUN pip install --upgrade -r requirement requirements.txt
CMD [ "bash", "start.sh"]
