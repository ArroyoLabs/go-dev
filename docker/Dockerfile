############################################################
# Dockerfile to build Golang with Hugo
# Based on golang 1.15 buster
#
############################################################
FROM golang:1.15-buster

LABEL maintainer="John Arroyo john.arroyo@gmail.com"

# Linux updates
RUN apt update

# Add some go development packages
ADD ./scripts /scripts
RUN cd /scripts && chmod 770 *.sh 
# && ./setup.sh

EXPOSE 8080
