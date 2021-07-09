FROM ubuntu:20.04

ARG MESON_TOKEN
ENV MESON_TOKEN=$MESON_TOKEN
ARG MESON_PORT
ENV MESON_PORT=$MESON_PORT
ARG MESON_SPACELIMIT
ENV MESON_SPACELIMIT=$MESON_SPACELIMIT

EXPOSE 80 443 19091 

WORKDIR /root

RUN apt update && apt upgrade -y && apt install -y wget

RUN mkdir /etc/init
COPY start.sh /root
RUN chmod u+x start.sh

CMD ./start.sh