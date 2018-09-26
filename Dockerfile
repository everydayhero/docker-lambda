FROM node:8.9-wheezy

WORKDIR /usr/local/src

RUN apt-get update && apt-get install python-dev -y

RUN curl -O https://bootstrap.pypa.io/get-pip.py

RUN python get-pip.py

RUN pip install awscli --upgrade

RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ wheezy-pgdg main" >> /etc/apt/sources.list

RUN wget -q -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

RUN apt-get update && apt-get install postgresql-client-9.6 -y
