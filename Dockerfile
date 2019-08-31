FROM alpine:latest

COPY ./15min /etc/periodic/15min

RUN apk update && apk upgrade
RUN apk add tzdata
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN apk del tzdata
RUN rm -rf /var/cache/apk/*
RUN chmod +x /etc/periodic/15min/*
