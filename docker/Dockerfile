############################################################
# Dockerfile to build Golang image with dev tools & homebrew
# Based on golang:1.14
#
############################################################
FROM golang:1.14

MAINTAINER John Arroyo, john.arroyo@gmail.com

# Add scripts and run setup
ADD ./scripts /scripts
RUN apt-get update && \
    cd /scripts && \
    chmod 770 *.sh && \
    ./setup.sh && \
    adduser --disabled-password --gecos "" go_user && \
    chgrp -R go_user /scripts

# Switch user and install hugo
USER go_user
# RUN /scripts/hugo.sh

EXPOSE 8080
