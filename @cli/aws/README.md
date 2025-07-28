[How to install awscli version 2 on raspberry pi](https://stackoverflow.com/questions/63030641/how-to-install-awscli-version-2-on-raspberry-pi)

    $ sudo apt install cmake
    $ git clone https://github.com/aws/aws-cli.git
    $ cd aws-cli && git checkout v2
    $ pip3 install -r requirements.txt
    $ pip3 install .