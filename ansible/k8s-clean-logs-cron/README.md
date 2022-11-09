# Ansible for Crontab for log truncation 

How to run?

```
ansible-playbook playbook.yml -i <inventory file> -u <your user to login on remote server> -K
```

Example `inventory` file 

```
[kubernetes]
192.168.2.55
192.168.2.56
```

Inside kubernetes must be a list of servers into which this playbook will be run into
