FROM nikolaik/python-nodejs:python3.9-nodejs18

RUN apt-get update -y && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get install python-wand \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
    
COPY . /app/

WORKDIR /app/

RUN pip3 install --upgrade pip

RUN pip3 install -U pip && pip3 install -U -r requirements.txt
CMD ["Python3","app.py"]
