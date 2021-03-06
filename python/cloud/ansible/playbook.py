# https://stackoverflow.com/questions/27590039/running-ansible-playbook-using-python-api
# https://stackoverflow.com/questions/48293226/how-to-run-playbook-api-in-ansible-with-vault
# https://www.programcreek.com/python/example/106311/ansible.vars.VariableManager

# https://stackoverflow.com/questions/34860131/running-an-ansible-playbook-using-python-api-2-0-0-1
from ansible_display import AnsibleDisplay
display = AnsibleDisplay(verbosity=0)

from ansible import context
from ansible.cli import CLI
from ansible.module_utils.common.collections import ImmutableDict
from ansible.executor.playbook_executor import PlaybookExecutor
from ansible.parsing.dataloader import DataLoader
from ansible.inventory.manager import InventoryManager
from ansible.vars.manager import VariableManager
from ansible.module_utils._text import to_bytes
from ansible.parsing.vault import VaultSecret

code_path = "../../.."

loader = DataLoader()
loader.set_vault_secrets([('default',VaultSecret(_bytes=to_bytes('123456')))])

context.CLIARGS = ImmutableDict(tags={}, listtags=False, listtasks=False, listhosts=False, syntax=False, 
                    module_path=None, forks=100, private_key_file=None, start_at_task=None)

inventory = InventoryManager(loader=loader, sources=[code_path + '/ansible/inventory'])

variable_manager = VariableManager(loader=loader, inventory=inventory, version_info=CLI.version_info(gitinfo=False))
variable_manager._extra_vars = {'firstvar': False}

pbex = PlaybookExecutor(playbooks=[code_path + '/ansible/variables.yml'], inventory=inventory, variable_manager=variable_manager, loader=loader, passwords = {})

results = pbex.run()

print(results)