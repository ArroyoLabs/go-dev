############################################################
# Dockerfile to build Golang with dep for package management
# Based on golang:1.10
#
############################################################
FROM golang:1.10

MAINTAINER John Arroyo, john@arroyolabs.com

# Linux updates
RUN apt-get update

# Add some go development packages
ADD ./scripts /scripts
RUN cd /scripts && chmod 770 *.sh && ./setup.sh

EXPOSE 8080
