FROM python:alpine3.16 

RUN python3 -m pip install --user ansible 
RUN apk add --no-cache openssh
RUN mkdir -p /root/.ssh && echo "StrictHostKeyChecking no" > /root/.ssh/config

ENTRYPOINT ["/root/.local/bin/ansible-playbook"]
