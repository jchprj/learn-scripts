from ansible.constants import DEFAULT_VAULT_ID_MATCH
from ansible.parsing.vault import VaultLib
from ansible.parsing.vault import VaultSecret

vault = VaultLib([(DEFAULT_VAULT_ID_MATCH, VaultSecret(str.encode('123456')))])
contents = vault.decrypt(open('../../../ansible/vault/vault.yml').read())

print(contents.decode())