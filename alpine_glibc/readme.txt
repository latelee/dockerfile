���� alpine ���Զ����������

alpine: 3.16
glibc: 2.23
jre: 1.8.0_345

# ����github.com��glibc�ļ�����������
docker build -t latelee/alpine:glibc -f Dockerfile_v1_glibc .

# ����glibc����װglibc��bash��ʱ��tzdata
docker build -t latelee/alpine:glibc-bash -f Dockerfile_v2_bash .

����glibc����װglibc��bash��ʱ��tzdata��curl
docker build -t latelee/alpine:glibc-curl -f Dockerfile_v3_curl .


docker build -t latelee/alpine:jre -f Dockerfile_jre .


Dockerfile_offline��ʹ�����غõİ���װ���ƺ�����ϴ󣨿��ܰ�װ��û��ɾ����

https://github.com/sgerrand/alpine-pkg-glibc/releases

Ĭ������ github.com �ϵ��ļ���ָ���ļ��������������أ�

�����ļ���
glibc-2.23-r1.apk glibc-i18n-2.23-r1.apk glibc-bin-2.23-r1.apk sgerrand.rsa.pub

glibc-i18n-2.23-r1.apk�������Ǻ������йأ�����ʹ��Ҳ����(���Բ���װ�������)

�밲װ libstdc++��������Щso���ò��ɹ���  

