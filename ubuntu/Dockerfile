FROM ubuntu:16.04

LABEL maintainer Late Lee(li@latelee.org)

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    libssl-dev \
    gdb flex bison \
    cmake autoconf \
    git \
    unzip \
    python3-pip python3-dev python3 \
    vim tree \
    cppcheck \
    dos2unix \
    apt-transport-https ca-certificates software-properties-common \
    curl wget \
    net-tools inetutils-ping \
    pkg-config && \
    rm -rf /var/lib/dpkg/info/* /var/lib/apt/lists/*

RUN ln -s /usr/bin/python3 /usr/bin/python || true && \
    ln -s /usr/bin/pip3 /usr/bin/pip || true && \
    pip install --upgrade pip

CMD ["/bin/bash"]
