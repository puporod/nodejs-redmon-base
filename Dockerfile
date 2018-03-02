FROM node:alpine

MAINTAINER desenv@tutanota.com

# Install Redis
RUN echo 'http://nl.alpinelinux.org/alpine/edge/main' >> /etc/apk/repositories && \
  apk add --update --no-cache redis=4.0.8-r0

# Install MongoDB
RUN apk add --no-cache mongodb && rm /usr/bin/mongoperf
VOLUME /data/db
