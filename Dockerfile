# This Dockerfile enables us to build a version that uses libc 2.19,
# which is what we have on our Ubuntu 14.04 instances.
FROM ubuntu:trusty

RUN apt-get update && \
    apt-get install -yy curl

RUN curl -LO https://dl.google.com/go/go1.14.4.linux-amd64.tar.gz

RUN tar -xzv -C /usr/local/ -f go1.14.4.linux-amd64.tar.gz

ENV PATH "$PATH:/usr/local/go/bin"

RUN mkdir -p /go
ENV GOPATH "/go"

RUN apt-get install -yy git-core
RUN apt-get install -yy build-essential
