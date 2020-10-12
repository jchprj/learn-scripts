Running playbook in Python scripts, those Windows modules contain `Ansible.Basic` will throw exception:

```
The full traceback is:
Exception calling "Create" with "2" argument(s): "Object reference not set to an instance of an object."
At line:28 char:1
+ $module = [Ansible.Basic.AnsibleModule]::Create($args, $spec)
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (:) [], ParentContainsErrorRecordException
    + FullyQualifiedErrorId : NullReferenceException
```

To find modules using `Ansible.Basic`, by running such command:

```
grep -e Basic /usr/local/lib/python3.6/site-packages/ansible/modules/windows/*
```
These modules are using `Ansible.Basic`:

- win_certificate_store.ps1
- win_chocolatey.ps1
- win_credential.ps1
- win_defrag.ps1
- win_dns_record.ps1
- win_dsc.ps1
- win_environment.ps1
- win_format.ps1
- win_get_url.ps1
- win_hosts.ps1
- win_http_proxy.ps1
- win_mapped_drive.ps1
- win_netbios.ps1
- win_optional_feature.ps1
- win_package.ps1
- win_partition.ps1
- win_ping.ps1
- win_power_plan.ps1
- win_product_facts.ps1
- win_psexec.ps1
- win_say.ps1
- win_shortcut.ps1
- win_stat.ps1
- win_tempfile.ps1
- win_uri.ps1
- win_user_profile.ps1
- win_wait_for_process.ps1
- win_wakeonlan.ps1
