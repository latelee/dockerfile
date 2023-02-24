基于 alpine 的自定义基础镜像。

alpine: 3.16
glibc: 2.23
jre: 1.8.0_345

# 下载github.com的glibc文件，较难下载
docker build -t latelee/alpine:glibc -f Dockerfile_v1_glibc .

# 基于glibc，安装glibc、bash、时区tzdata
docker build -t latelee/alpine:glibc-bash -f Dockerfile_v2_bash .

基于glibc，安装glibc、bash、时区tzdata、curl
docker build -t latelee/alpine:glibc-curl -f Dockerfile_v3_curl .


docker build -t latelee/alpine:jre -f Dockerfile_jre .


Dockerfile_offline：使用下载好的包安装，似乎体积较大（可能安装包没有删除）

https://github.com/sgerrand/alpine-pkg-glibc/releases

默认下载 github.com 上的文件（指定文件），可离线下载：

下载文件：
glibc-2.23-r1.apk glibc-i18n-2.23-r1.apk glibc-bin-2.23-r1.apk sgerrand.rsa.pub

glibc-i18n-2.23-r1.apk看名称是和语言有关，但不使用也正常(可以不安装减少体积)

须安装 libstdc++，否则有些so调用不成功。  

