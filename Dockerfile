FROM forumi0721/alpine-base:latest

LABEL maintainer="forumi0721@gmail.com"

COPY local/. /usr/local/

RUN ["docker-build"]

ENTRYPOINT ["docker-run"]

EXPOSE 9091/tcp 51413/tcp 51413/udp

VOLUME /conf.d

