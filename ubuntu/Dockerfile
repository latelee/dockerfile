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
    apt-transport-https ca-certificates software-properties-common \
    curl wget \
    net-tools inetutils-ping \
    pkg-config && \
    rm -rf /var/lib/apt/lists/*

RUN update-alternatives --install /usr/bin/python python \
    /usr/bin/python2 100 && \
    update-alternatives --install /usr/bin/python python \
    /usr/bin/python3 150

CMD ["/bin/bash"]
