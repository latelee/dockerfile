FROM ubuntu:16.04

LABEL maintainer Late Lee(li@latelee.org)

#COPY n163.list /tmp
#RUN cat /tmp/n163.list > /etc/apt/sources.list && rm -rf /tmp/n163.list

RUN apt-get update || true && \
    apt-get install -y \
    curl wget \
    net-tools inetutils-ping \
    pkg-config && \
    rm -rf /var/lib/dpkg/info/* /var/lib/apt/lists/*

RUN wget -c https://storage.googleapis.com/kubernetes-release/release/v1.11.2/kubernetes-server-linux-amd64.tar.gz

RUN wget -c https://storage.googleapis.com/kubernetes-release/release/v1.11.2/kubernetes-client-linux-amd64.tar.gz

RUN wget -c https://storage.googleapis.com/kubernetes-release/release/v1.11.2/kubernetes-node-linux-arm64.tar.gz

CMD ["/bin/bash"]
