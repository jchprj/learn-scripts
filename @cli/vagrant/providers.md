# Providers


## Hyper-V

[Cannot use vagrant with hyperv inside WSL1 · Issue #11701 · hashicorp/vagrant · GitHub](https://github.com/hashicorp/vagrant/issues/11701)

    setting VAGRANT_DOTFILE_PATH to a path under the windows filesystem fixes the problem but you have to make sure to set it to a different path otherwise VMs overwrite each other

[GitHub - deluxebrain/wsl-vagrant-hyperv-setup: Vagrant via Hyper-V within WSL](https://github.com/deluxebrain/wsl-vagrant-hyperv-setup)

    VAGRANT_DEFAULT_PROVIDER=hyperv
    VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
    Set the VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH environment variable to your Windows user home folder
    Run WSL as administrator

[Enable Hyper-V on Windows 10 | Microsoft Docs](https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v)

    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

[How to Install Hyper-V PowerShell Module](https://www.altaro.com/hyper-v/install-hyper-v-powershell-module/)

    Get-WindowsOptionalFeature -Online -FeatureName *hyper-v* | select DisplayName, FeatureName



