MAINTAINER John Arroyo, john@arroyolabs.com

FROM golang
 
# Some convenient updates and tools
RUN apt-get update && apt-get -y install vim

# Go environment
ARG project_name
RUN PATH=$PATH:/usr/local/go/bin && GOPATH=/go

# ADD ./src/$project_name /go/src/$project_name
# RUN cd /go/src && go install $project_name

ADD ./bin /go/bin
ENTRYPOINT ["/go/bin/hello"]
 
EXPOSE 8080
