FROM ubuntu:16.04

LABEL maintainer Late Lee(li@latelee.org)

#COPY n163.list /tmp
#RUN cat /tmp/n163.list > /etc/apt/sources.list && rm -rf /tmp/n163.list

RUN apt-get update || true && \
    apt-get install -y \
    build-essential \
    libssl-dev libc6-dev \
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

# clang
RUN wget http://releases.llvm.org/5.0.1/clang+llvm-5.0.1-x86_64-linux-gnu-ubuntu-16.04.tar.xz && \
	tar xf clang+llvm-5.0.1-x86_64-linux-gnu-ubuntu-16.04.tar.xz && \
	mv clang+llvm-5.0.1-x86_64-linux-gnu-ubuntu-16.04 /usr/local/bin/clang && \
	rm -rf clang+llvm-5.0.1-x86_64-linux-gnu-ubuntu-16.04.tar.xz

ENV PATH $PATH:/usr/local/bin/clang/bin

RUN ln -s /usr/bin/python3 /usr/bin/python || true && \
    ln -s /usr/bin/pip3 /usr/bin/pip || true && \
    pip install --upgrade pip

CMD ["/bin/bash"]
