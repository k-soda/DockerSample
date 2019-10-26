FROM alpine:latest

RUN apk update && apk upgrade
RUN apk add tzdata
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN apk del tzdata
RUN rm -rf /var/cache/apk/*

# COPY ./periodic /etc/periodic/15min
# RUN chmod +x /etc/periodic/15min/*
# or
COPY ./crontabs /var/spool/cron/crontabs
COPY ./periodic /root/periodic
RUN chmod +x /root/periodic/*
