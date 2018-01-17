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

# GO 1.9
ENV GO_VERSION 1.9.2
RUN curl -fSL "https://golang.org/dl/go${GO_VERSION}.linux-amd64.tar.gz" | tar xzC /usr/local
ENV GOPATH /go
ENV PATH $PATH:/usr/local/go/bin:$GOPATH/bin

# clang
RUN wget http://releases.llvm.org/5.0.1/clang+llvm-5.0.1-x86_64-linux-gnu-ubuntu-16.04.tar.xz && \
	tar xf clang+llvm-5.0.1-x86_64-linux-gnu-ubuntu-16.04.tar.xz && \
	mv clang+llvm-5.0.1-x86_64-linux-gnu-ubuntu-16.04 /usr/local/bin/clang && \
	rm -rf clang+llvm-5.0.1-x86_64-linux-gnu-ubuntu-16.04.tar.xz

ENV PATH $PATH:/usr/local/clang/bin

RUN ln -s /usr/bin/python3 /usr/bin/python || true && \
    ln -s /usr/bin/pip3 /usr/bin/pip || true && \
    pip install --upgrade pip

CMD ["/bin/bash"]
