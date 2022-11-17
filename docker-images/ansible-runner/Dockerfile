FROM python:alpine3.16 

RUN python3 -m pip install --user ansible 
RUN apk add --no-cache openssh

ENTRYPOINT ["/root/.local/bin/ansible-playbook"]
