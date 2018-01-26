FROM ubuntu:16.04

LABEL maintainer Late Lee(li@latelee.org)

COPY n163.list /tmp
RUN cat /tmp/n163.list > /etc/apt/sources.list && rm -rf /tmp/n163.list

RUN apt-get update || true && \
    apt-get install -y \
    tree wget curl \
    libssl-dev g++ gcc libc6-dev \
    bash-completion flex bison \
    cmake make autoconf git \
    unzip dos2unix \
    apt-transport-https ca-certificates software-properties-common \
    pkg-config && \
    rm -rf /var/lib/apt/lists/* \
    /var/log/*.log

ENV GO_VERSION 1.9.2
#RUN curl -fSL "https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz" | tar xzC /usr/local
RUN curl -fSL "https://dl.gocn.io/golang/${GO_VERSION}/go${GO_VERSION}.linux-amd64.tar.gz" | tar xzC /usr/local
ENV GOPATH /home/latelee/test/go
ENV PATH $PATH:/usr/local/go/bin:$GOPATH/bin

#RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"

WORKDIR $GOPATH
