FROM ubuntu:16.04

LABEL maintainer Li Jiangjin(lijj@singula-poing.com)

RUN apt-get update || true && \
    apt-get install -y \
    vim tree wget curl \
    libssl-dev gdb flex bison \
    cmake autoconf git \
    unzip cppcheck dos2unix \
    apt-transport-https ca-certificates software-properties-common \
    net-tools inetutils-ping pkg-config \
    python3-pip python3-dev python3 openjdk-8-jdk &&\
    ln -s /usr/bin/python3 /usr/bin/python || true &&\
    ln -s /usr/bin/pip3 /usr/bin/pip || true && \
    pip install --upgrade pip && \
    pip --no-cache-dir install numpy wheel

ENV BOOST_SHA 5721818253e6a0989583192f96782c4a98eb6204965316df9f5ad75819225ca9

RUN mkdir -p /tmp/test && cd /tmp/test && \
    wget https://dl.bintray.com/boostorg/release/1.66.0/source/boost_1_66_0.tar.bz2 && echo "$BOOST_SHA boost_1_66_0.tar.bz2" | sha256sum -c - && \
    tar jxf boost_1_66_0.tar.bz2 && cd boost_1_66_0 \
    sh bootstrap.sh --with-libraries=all -with-toolset=gcc && \
    ./b2 && ./b2 install && \
    cd /tmp/test

RUN wget http://fftw.org/fftw-3.3.7.tar.gz && \
    tar zxf fftw-3.3.7.tar.gz && \
    cd fftw-3.3.7 && ./configure && make && make install && \
    cd /tmp/test

RUN wget https://github.com/libevent/libevent/releases/download/release-2.1.8-stable/libevent-2.1.8-stable.tar.gz && \
    tar xzf libevent-2.1.8-stable.tar.gz && \
    cd libevent-2.1.8-stable && \
    ./configure && make && make install && \
    cd /tmp/test

RUN wget https://github.com/openssl/openssl/archive/OpenSSL_1_0_2n.tar.gz && \
    tar zxf OpenSSL_1_0_2n.tar.gz && \
    cd openssl-OpenSSL_1_0_2n && \
    ./config && make && make install && \
    cd /tmp/test
    
    
RUN cd / && rm -rf /tmp/test /var/lib/dpkg/info/* /var/lib/apt/lists/* \
    /var/log/*.log /root/.cache

CMD ["bash"]

