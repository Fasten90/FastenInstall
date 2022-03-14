FROM ubuntu

COPY . .

RUN ./ansible_install.sh

RUN bash
