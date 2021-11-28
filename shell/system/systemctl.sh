# https://www.tecmint.com/list-all-running-services-under-systemd-in-linux/
systemctl list-units --type=service --state=active
systemctl --type=service --state=active

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
#   =multi-user.target