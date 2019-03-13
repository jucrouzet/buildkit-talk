#syntax=docker/dockerfile:1
FROM alpine

COPY ./archive.tgz /files/

RUN tar xfz /files/archive.tgz
RUN rm -f archive.tgz

CMD /start.sh