FROM photon:3.0
ARG USER=root

# Copy Files
COPY requirements.txt requirements.yml /

# Configure/Install OS Packages
RUN tdnf update -y && \
    tdnf install build-essential e2fsprogs-devel cmake openssl-devel \
                 zlib-devel libtirpc-devel rpcsvc-proto-devel \
                 protobuf-devel libgcc-devel glibc-devel gcc git \
                 sshpass wget unzip docker -y && \
    tdnf install krb5-devel python3-devel python3 python3-pip -y &&

# Configure/Install Python Packages
RUN pip3 install -U pip wheel setuptools && \
    pip3 install -U "ansible>=2.10,<2.11" && \
    pip3 install -r /requirements.txt && \
    ansible-galaxy collection install -r /requirements.yml && \
    ansible-galaxy role install -r /requirements.yml

ENTRYPOINT [ "/bin/bash" ]