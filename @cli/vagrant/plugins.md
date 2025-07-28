[How to use vagrant in a proxy environment? - Stack Overflow](https://stackoverflow.com/questions/19872591/how-to-use-vagrant-in-a-proxy-environment)

    vagrant plugin install vagrant-proxyconf

    Configure your Vagrantfile:

    config.proxy.http     = "http://yourproxy:8080"
    config.proxy.https    = "http://yourproxy:8080"
    config.proxy.no_proxy = "localhost,127.0.0.1"


[invernizzi/vagrant-scp: Copy files to a Vagrant VM via SCP.](https://github.com/invernizzi/vagrant-scp)

    vagrant plugin install vagrant-scp

    vagrant scp <some_local_file_or_dir> [vm_name]:<somewhere_on_the_vm>
    vagrant scp [vm_name]:<somewhere_on_the_vm> <some_local_file_or_dir>

    Vagrant v1.7 or newer