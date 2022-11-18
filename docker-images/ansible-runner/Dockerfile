FROM python:alpine3.16 

RUN python3 -m pip install --user ansible 
RUN apk add --no-cache openssh
RUN mkdir -p /root/.ssh && echo "StrictHostKeyChecking no" > /root/.ssh/config && touch /root/.ssh/id_rsa

ENTRYPOINT "chmod 600 /root/.ssh/id_rsa && /root/.local/bin/ansible-playbook"
