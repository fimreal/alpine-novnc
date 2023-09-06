FROM epurs/alpine-novnc:latest

USER root

RUN apk add --no-cache chromium

ENV DEBIAN_FRONTEND=noninteractive

ADD supervisor-chromium.conf /supervisor-chromium.conf


# Optional support for Chinese fonts
RUN apk add wqy-zenhei --update-cache --repository http://nl.alpinelinux.org/alpine/edge/testing --allow-untrusted

ENV LANG=zh_CN.UTF-8 \
    LANGUAGE=zh_CN.UTF-8 
