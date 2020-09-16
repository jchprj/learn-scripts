# https://stackoverflow.com/questions/44142208/how-to-view-decrypt-ansible-vault-credentials-files-from-within-a-python-script

from ansible.constants import DEFAULT_VAULT_ID_MATCH
from ansible.parsing.vault import VaultLib
from ansible.parsing.vault import VaultSecret

vault = VaultLib([(DEFAULT_VAULT_ID_MATCH, VaultSecret(str.encode('123456')))])
contents_bytes = vault.decrypt(open('../../../ansible/vault/vault.yml').read())
contents = contents_bytes.decode()
print(contents)


# https://linuxhint.com/read_write_ini_conf_python/#:~:text=Configuration%20file%20parser%20or%20ConfigParser,ini%E2%80%9D%20%2F%20%E2%80%9C.
import configparser

config = configparser.ConfigParser()
config.read_string("[default]\n" + contents)
print(config["default"]["ansible_become_pass"])