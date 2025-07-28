
# Commands

```
vagrant up --provider virtualbox|hyperv
```

Commands ([Command-Line Interface | Vagrant by HashiCorp](https://www.vagrantup.com/docs/cli)):
    - init
    - up
    - provision
    - upload
    - halt
    - destroy
    - status
    - ssh
    - rdp
    - ...

Use different Vagranfile: use environment variable VAGRANT_VAGRANTFILE


## Package


[vagrant package - Command-Line Interface | Vagrant by HashiCorp](https://www.vagrantup.com/docs/cli/package)

    vagrant package
    This packages a currently running VirtualBox or Hyper-V environment into a re-usable box.

[Creating a Base Box - VirtualBox Provider | Vagrant by HashiCorp](https://www.vagrantup.com/docs/providers/virtualbox/boxes)


[Creating a Base Box - Hyper-V Provider | Vagrant by HashiCorp](https://www.vagrantup.com/docs/providers/hyperv/boxes)


[Using existing virtual machines with Vagrant | Vagrant Virtual Development Environment Cookbook](https://subscription.packtpub.com/book/cloud-and-networking/9781784393748/1/ch01lvl1sec14/using-existing-virtual-machines-with-vagrant)


## box

[vagrant box - Command-Line Interface | Vagrant by HashiCorp](https://www.vagrantup.com/docs/cli/box)

    vagrant box


[Building Custom Vagrant box. Building custom Vagrant box is not a… | by Deepanshu | Medium](https://medium.com/@gajbhiyedeepanshu/building-custom-vagrant-box-e6a846b6baca)

    vagrant box add linuxmint-19-xfce-32bit package.box
    vagrant init linuxmint-19-xfce-32bit
    (Vagrantfile will be generated)
    vagrant up


