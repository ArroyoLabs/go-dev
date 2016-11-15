MAINTAINER John Arroyo, john@arroyolabs.com

FROM golang
 
# Some convenient updates and tools
RUN apt-get update && apt-get -y install vim

# Go environment
ARG PROJECT_NAME

# ADD ./src/$PROJECT_NAME /go/src/$PROJECT_NAME
# RUN cd /go/src && go install $PROJECT_NAME

ADD ./bin /go/bin
ENTRYPOINT ["/go/bin/hello"]
 
EXPOSE 8080
