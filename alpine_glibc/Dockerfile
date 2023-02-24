# 安装glibc、bash、时区tzdata
# 默认为东八区
# 出现 WARNING: glibc-2.23-r1: overwriting etc/nsswitch.conf owned by alpine-baselayout-data-3.2.0-r23.
# 解决 apk add --force-overwrite xxx
#
# Iterate through all locale and install it
# Note that locale -a is not available in alpine linux, use `/usr/glibc-compat/bin/locale -a` instead
# COPY ./locale.md /locale.md
# RUN cat locale.md | xargs -i /usr/glibc-compat/bin/localedef -i {} -f UTF-8 {}.UTF-8
# cd /usr/glibc-compat/share/i18n/locales

FROM alpine:3.16
 
ENV GLIBC_REPO=2.23-r1 \
    LANG=C.UTF-8

    
RUN cd /tmp/ && \
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
    wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_REPO}/glibc-${GLIBC_REPO}.apk && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_REPO}/glibc-bin-${GLIBC_REPO}.apk && \
    wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_REPO}/glibc-i18n-${GLIBC_REPO}.apk && \
    apk add --force-overwrite --no-cache glibc-${GLIBC_REPO}.apk glibc-bin-${GLIBC_REPO}.apk glibc-i18n-${GLIBC_REPO}.apk && \
    apk add --force-overwrite --no-cache --update libstdc++ && \
	apk add -U tzdata bash curl && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    rm -rf /var/cache/apk/* *.apk

#wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.33-r0/glibc-i18n-2.33-r0.apk && \

#COPY lib/ /tmp/
#RUN cd /tmp/ && \
#    mv ./sgerrand.rsa.pub /etc/apk/keys/sgerrand.rsa.pub && \
#    sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
#    apk add --force-overwrite --no-cache glibc-${GLIBC_REPO}.apk glibc-bin-${GLIBC_REPO}.apk glibc-i18n-${GLIBC_REPO}.apk && \
#    apk add --force-overwrite --no-cache --update libstdc++ && \
#    apk add -U tzdata bash && \
#    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
#    echo "Asia/Shanghai" > /etc/timezone && \
#    rm -rf /var/cache/apk/* glibc-${GLIBC_REPO}.apk glibc-bin-${GLIBC_REPO}.apk


#add other apk
#RUN apk add --no-cache --update nodejs

# test...
#WORKDIR /app
#COPY bin/ ./
#RUN chmod +x *.bin
#RUN /usr/glibc-compat/sbin/ldconfig /app/thirdparty 