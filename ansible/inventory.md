# Inventory

[python - Ansible multiple hosts with port forwarding - Stack Overflow](https://stackoverflow.com/questions/26527458/ansible-multiple-hosts-with-port-forwarding)

```
host3 ansible_ssh_port=20003 ansible_ssh_host=10.80.238.11
host1 ansible_ssh_port=20001 ansible_ssh_host=10.80.238.11
host7 ansible_ssh_port=20007 ansible_ssh_host=10.80.238.11
host9 ansible_ssh_port=20009 ansible_ssh_host=10.80.238.11
```