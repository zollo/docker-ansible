FROM ubuntu:20.04
ARG USER=root

# Copy Files
COPY requirements.txt requirements.yml /

# Configure/Install OS Packages
RUN apt update && apt upgrade -y && \
    apt install python3 python3-distutils curl -y && \
    curl -o /tmp/get-pip.py https://bootstrap.pypa.io/get-pip.py && \
    python3 /tmp/get-pip.py

# Configure/Install Python Packages
RUN pip3 install -r /requirements.txt && \
    ansible-galaxy install -r /requirements.yml
