# Ansible Base Container

## zollo/ansible

This Ansible base container is based on VMware's PhotonOS 3 base image and presents an easy way to get started with a project.

## Structure

All Ansible content is installed to the root user's folder (/root/.ansible) so that it will be accessible from anywhere in the container.

## Content: Ansible Collections

* Ansible 4.x Package
* Ansible Roles (docker, java, redis, nfs, etc.)
* Python Modules (pywinrm, boto, pyvmomi, etc.)
