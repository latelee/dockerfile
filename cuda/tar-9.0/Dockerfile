FROM ubuntu:16.04

LABEL maintainer Late Lee(li@latelee.org)

RUN apt-get update || true && \
    apt-get install -y \
    wget && \
    rm -rf /var/lib/dpkg/info/* /var/lib/apt/lists/*


RUN wget -c https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run -O cuda_9.0.176_384.81_linux.run && \
    echo "7a00187b2ce5c5e350e68882f42dd507 cuda_9.0.176_384.81_linux.run" | md5sum -c -

# patch 1
RUN wget -c https://developer.nvidia.com/compute/cuda/9.0/Prod/patches/1/cuda_9.0.176.1_linux-run -O cuda_9.0.176.1_linux.run && \
    echo "8477e5733c8250dd3e110ee127002b9c cuda_9.0.176.1_linux.run" | md5sum -c -

# patch 2
RUN wget -c https://developer.nvidia.com/compute/cuda/9.0/Prod/patches/2/cuda_9.0.176.2_linux-run -O cuda_9.0.176.2_linux.run && \
    echo "4d3113ffd68a4c67511ca66e497badba cuda_9.0.176.2_linux.run" | md5sum -c -

RUN wget -c https://developer.nvidia.com/compute/cuda/9.0/Prod/patches/3/cuda_9.0.176.3_linux-run -O cuda_9.0.176.3_linux.run && \
    echo "0d7d07dc3084e0f0ce7d861b5a642f19 cuda_9.0.176.3_linux.run" | md5sum -c -

RUN wget -c https://developer.nvidia.com/compute/cuda/9.0/Prod/patches/4/cuda_9.0.176.4_linux-run -O cuda_9.0.176.4_linux.run && \
    echo "a8dbbbde6e9d130e8deb7094795478b1 cuda_9.0.176.4_linux.run" | md5sum -c -

CMD ["/bin/bash"]

