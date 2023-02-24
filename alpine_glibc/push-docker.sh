cat myps.txt | docker login  --username latelee --password-stdin

docker push latelee/alpine:glibc
