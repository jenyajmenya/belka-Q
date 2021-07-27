###########
# DockerFile to build my first image
# Based on Ubuntu
###########

FROM ubuntu:18.04
MAINTAINER jenyajmenya
LABEL version="1.0"
COPY ./ngeo.sh /home
RUN /home/ngeo.sh
ENTRYPOINT /bash
EXPOSE 80