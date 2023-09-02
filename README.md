# Ansible Container

## zollo/ansible

This Ansible container is based on the Python 3.11 Debian base image.

    docker pull ghcr.io/zollo/ansible:latest

## Structure

All Ansible content is installed to the root user's folder (/root/.ansible) so that it will be accessible from anywhere in the container.

## Content

* Ansible Community Distribution
* Ansible Roles Defined in `requirements.yml`
* Python Modules (pywinrm, boto, pyvmomi, etc.)
