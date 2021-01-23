# Ansible Base Container

## zollo/ansible

This Ansible base container is based on VMware's PhotonOS 3 base image and presents an easy way to get started with a project.

## Structure

All Ansible content is installed to the root user's folder (/root/.ansible) so that it will be accessible from anywhere in the container.

## Content: Ansible Collections

* ansible.netcommon
* ansible.posix
* ansible.windows
* community.network
* community.windows
* community.vmware
* community.aws
* community.general
* vmware.vmware_rest
* f5networks.f5_modules
* device42.d42
* cloud.common

## Content: Ansible Roles

* geerlingguy.docker
* geerlingguy.java
* geerlingguy.pip
* geerlingguy.repo-epel
* geerlingguy.git
* geerlingguy.awx
* geerlingguy.nodejs
* geerlingguy.ansible
* geerlingguy.certbot
* geerlingguy.redis
* geerlingguy.nfs

## Content: Python Modules

* docker
* pywinrm + kerberos/credssp
* ipaddress
* boto, boto3, botocore
* pyvmomi, vsphere-automation-sdk-python
* urllib3
* future
