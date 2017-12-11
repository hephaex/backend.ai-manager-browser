FROM hephaex/ubuntu:16.04

MAINTAINER Mario Cho <hephaex@gmail.com>

RUN apt-get update
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get install -y nodejs

RUN mkdir /app
ADD . /app/

WORKDIR /app
EXPOSE 8000

CMD ["nodejs", "server.js"]
