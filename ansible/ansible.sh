# https://docs.ansible.com/ansible/latest/user_guide/intro_adhoc.html
# $ ansible [pattern] -m [module] -a "[module options]"

# https://serversforhackers.com/c/an-ansible-tutorial
ansible localhost -m ping

ansible localhost -m shell -a "ls"

ansible localhost -s -m shell -a 'apt update'

ansible localhost -a "echo Hello World"  # --ask-become-pass # -K

ansible localhost -m shell -a 'echo $TERM'

ansible localhost -m copy -a "src=ansible.sh dest=temp_test.sh"

ansible localhost -m file -a "dest=temp_test.sh mode=600"

ansible localhost -m file -a "dest=temp_test mode=755 state=directory"

ansible localhost -m file -a "dest=temp_test state=absent"      # recursively

ansible localhost -m setup

# command used to shutdown all boxes, boxes are defined in folder inventory
# ansible -i inventory/ --vault-password-file vault_pass.txt -m raw -a "Stop-Computer -Force" boxes

# Understanding privilege escalation: become — Ansible Documentation
# https://docs.ansible.com/ansible/latest/user_guide/become.html