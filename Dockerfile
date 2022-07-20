FROM debian:11.4-slim

WORKDIR /
RUN apt-get update

RUN apt-get install systemctl -y
RUN apt-get install nginx -y
RUN systemctl enable nginx
RUN apt-get install curl -y
RUN apt-get install gpg -y

COPY node_install ./
RUN sh ./node_install

RUN npm i pm2@5.2.0 -g
RUN npm i typeorm@0.3.7 -g
