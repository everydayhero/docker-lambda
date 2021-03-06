FROM node:10

WORKDIR /usr/local/src

RUN apt-get update && apt-get install python-dev -y

RUN curl -O https://bootstrap.pypa.io/get-pip.py

RUN python get-pip.py

RUN pip install awscli --upgrade
