FROM ubuntu:22.04 

RUN apt-get -y update\
&& apt install unzip\
&& apt-get -y install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev 

COPY src /src/

RUN chmod -R +x /src/
