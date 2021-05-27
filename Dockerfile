# from base image node
FROM node:8.11-slim

LABEL "about"="This file is just am example to demonstarte the LABEL"

ENV workdirectory /usr/node

WORKDIR $workdirectory
WORKDIR app

COPY package.json .

RUN ls -ll &&\
    npm install

ADD index.js .

RUN ls -l

# command executable and version
ENTRYPOINT ["node"]
