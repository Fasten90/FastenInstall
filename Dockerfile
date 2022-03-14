FROM ubuntu

COPY . .

#RUN ./ansible_install.sh
#####
RUN apt-get update
RUN apt-get install python3 python3-pip git libffi-dev libssl-dev -y

RUN python3 -m pip install ansible "ansible-lint" pywinrm

#####

COPY ./hosts /etc/ansible/hosts

CMD /bin/bash
