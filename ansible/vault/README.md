## How To Use Vault to Protect Sensitive Ansible Data on Ubuntu 16.04

From [https://www.digitalocean.com/community/tutorials/how-to-use-vault-to-protect-sensitive-ansible-data-on-ubuntu-16-04](https://www.digitalocean.com/community/tutorials/how-to-use-vault-to-protect-sensitive-ansible-data-on-ubuntu-16-04)


```
ansible-vault create vault.yml
ansible-vault encrypt vault.yml
ansible-vault view vault.yml
ansible-vault edit vault.yml
ansible-vault decrypt vault.yml
ansible-vault rekey vault.yml
ansible --ask-vault-pass …
ansible --vault-password-file=.vault\_pass …
```


## Reading the Password from an Environment Variable

From [https://www.digitalocean.com/community/tutorials/how-to-use-vault-to-protect-sensitive-ansible-data-on-ubuntu-16-04](https://www.digitalocean.com/community/tutorials/how-to-use-vault-to-protect-sensitive-ansible-data-on-ubuntu-16-04)

.
├── . . .
├── group\_vars/
│   └── database/
│   ├── vars
│   └── vault
└── . . .