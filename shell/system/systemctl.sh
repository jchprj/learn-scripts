# https://www.tecmint.com/list-all-running-services-under-systemd-in-linux/
systemctl list-units --type=service --state=active
systemctl --type=service --state=active

# https://askubuntu.com/questions/867927/how-can-i-find-out-which-service-started-a-process-so-i-can-disable-that-service
# On Ubuntu 16.04 and newer
systemctl status <PID>

# https://www.digitalocean.com/community/tutorials/how-to-use-systemctl-to-manage-systemd-services-and-units
systemctl status cron.service
systemctl status cron
systemctl cat cron
systemctl list-dependencies cron
systemctl show cron

systemctl enable cron
systemctl disable cron

systemctl start cron
systemctl stop cron
systemctl restart cron
systemctl reload cron

systemctl is-active cron
systemctl is-enabled cron
systemctl is-failed cron

systemctl list-units
systemctl list-unit-files




# https://www.freedesktop.org/software/systemd/man/systemd.directives.html
# https://www.freedesktop.org/software/systemd/man/systemd.unit.html#Specifiers
# https://www.freedesktop.org/software/systemd/man/systemd.exec.html#User=
systemctl daemon-reload

# [Unit]
# Description=Foo

# [Service]
# ExecStart=/usr/sbin/foo-daemon
# User = %i

# [Install]
# WantedBy=multi-user.target


# https://www.unixsysadmin.com/systemd-user-services/
# systemctl --user status myapp.service
# systemctl --user start myapp.service
# systemctl --user edit myapp.service



# https://askubuntu.com/questions/1792/how-can-i-suspend-hibernate-from-command-line
systemctl suspend
systemctl hibernate