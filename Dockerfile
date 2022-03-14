FROM ubuntu

COPY . .

RUN ./ansible_install.sh

COPY ./hosts /etc/ansible/hosts

RUN [/bin/bash]
