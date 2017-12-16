FROM ubuntu:16.04

MAINTAINER Late Lee(li@latelee.org)

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    libssl-dev \
    gdb flex bison \
    cmake autoconf \
    git subversion \
    unzip \
    python-pip \
    vim tree \
    cppcheck \
    dos2unix \
    apt-transport-https \
    curl \
    pkg-config && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
