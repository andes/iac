FROM python:alpine3.16 

RUN python3 -m pip install --user ansible 

ENTRYPOINT ["/root/.local/bin/ansible-playbook"]
