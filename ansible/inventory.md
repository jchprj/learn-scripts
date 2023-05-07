# Inventory

[Ansible with multiple inventory files | Allan Denot](https://allandenot.com/devops/2015/01/16/ansible-with-multiple-inventory-files.html)

    Inventory as a folder
    ansible-playbook -i inventory my_playbook.yml 


[python - Ansible multiple hosts with port forwarding - Stack Overflow](https://stackoverflow.com/questions/26527458/ansible-multiple-hosts-with-port-forwarding)

    host3 ansible_ssh_port=20003 ansible_ssh_host=10.80.238.11
    host1 ansible_ssh_port=20001 ansible_ssh_host=10.80.238.11
    host7 ansible_ssh_port=20007 ansible_ssh_host=10.80.238.11
    host9 ansible_ssh_port=20009 ansible_ssh_host=10.80.238.11


[Missing sudo password in Ansible - Stack Overflow](https://stackoverflow.com/questions/25582740/missing-sudo-password-in-ansible)

    ansible_sudo_pass=yourPassword
    ansible_user=user
    ansible_pass=yourPassword


[Configuration file — Ansible Documentation](https://docs.ansible.com/ansible/2.4/intro_configuration.html#control-path)

[Ansible: set ssh arguments using group variables - Stack Overflow](https://stackoverflow.com/questions/39746379/ansible-set-ssh-arguments-using-group-variables)

    host ansible_ssh_common_args="-o ControlPath=~/.ssh/%h"


[Ansible: how to skip a specific host or group in a playbook – Velenux Home Page](https://velenux.wordpress.com/2017/07/31/ansible-how-to-skip-a-specific-host-or-group-in-a-playbook/)

```
---
- name: check on which hosts this would run
  remote_user: root
  hosts: all !bastion
  tasks:
  - name: say hello
    debug:
      msg: "hello {{ ansible_hostname }}"
```

[linux - Ansible: sudo without password - Stack Overflow](https://stackoverflow.com/questions/37434598/ansible-sudo-without-password)

    Make sure that sudo is allowed for the user ansible is using without password.


# Dynamic
[Creating custom dynamic inventories for Ansible | Jeff Geerling](https://www.jeffgeerling.com/blog/creating-custom-dynamic-inventories-ansible)

Ansible expects sample:
```
{
    "group": {
        "hosts": [
            "192.168.28.71",
            "192.168.28.72"
        ],
        "vars": {
            "ansible_ssh_user": "johndoe",
            "ansible_ssh_private_key_file": "~/.ssh/mykey",
            "example_variable": "value"
        }
    },
    "_meta": {
        "hostvars": {
            "192.168.28.71": {
                "host_specific_var": "bar"
            },
            "192.168.28.72": {
                "host_specific_var": "foo"
            }
        }
    }
}
```

Sample dynamic shell script:
```
#!/usr/bin/env bash

echo '{"group": {"hosts": ["localhost"], "vars":{}}}'
```

Usage:
```
ansible all -i dynamic -m ping
```

Could use any executable as long as the output is the JSON struct


[python - Pass a parameter to Ansible's dynamic inventory - Stack Overflow](https://stackoverflow.com/questions/33920530/pass-a-parameter-to-ansibles-dynamic-inventory)

    import os
    print os.environ['ENV']

    export ENV=dev
    ansible -i my_custom_inv.py all --list-host