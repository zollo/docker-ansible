FROM photon:3.0
ARG USER=root

# Copy Files
COPY requirements.txt requirements.yml /

# Configure/Install OS Packages
RUN tdnf update -y && \
    tdnf install build-essential e2fsprogs-devel openssl-devel \
                 zlib-devel libtirpc-devel rpcsvc-proto-devel \
                 protobuf-devel libgcc-devel glibc-devel git \
                 sshpass wget unzip docker -y && \
    tdnf install krb5-devel python3-devel python3 python3-pip -y && \
    tdnf clean all

# Configure/Install Python Packages
RUN pip3 install -U pip && \ 
    pip3 install -U wheel setuptools && \
    pip3 install -r /requirements.txt && \
    ansible-galaxy install -r /requirements.yml
