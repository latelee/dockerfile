FROM gitlab/gitlab-ce:11.1.4-ce.0

MAINTAINER Late Lee(li@latelee.org)

RUN apt-get update
    && \
    apt-get install -y \
    inetutils-ping net-tools \
    && \
    rm -rf /var/lib/apt/lists/*
