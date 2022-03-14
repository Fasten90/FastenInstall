# https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html


apt-get update
apt-get install python3 python3-pip git libffi-dev libssl-dev -y

python3 -m pip install ansible pywinrm
