FROM python:3.11

# Copy Files
COPY requirements.txt requirements.yml /

# Configure/Install OS Packages
RUN apt update && apt upgrade -y

# Add Local User
RUN useradd -U -m ansible

RUN --mount=type=cache,target=/root/.cache/pip,from=pycache pip install -r requirements.txt

# Configure/Install Python Packages
RUN pip3 install wheel setuptools && \
    pip3 install -r /requirements.txt && \
    ansible-galaxy install -r /requirements.yml
USER ansible
ENTRYPOINT [ "/bin/bash" ]
