FROM ubuntu:latest 

RUN apt-get -y update 

COPY src /src/

RUN chmod -R +x /src/