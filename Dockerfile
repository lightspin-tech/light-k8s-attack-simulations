FROM ubuntu:22.04 

RUN apt-get -y update 

COPY src /src/

RUN chmod -R +x /src/
