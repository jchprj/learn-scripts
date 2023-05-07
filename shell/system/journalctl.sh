# https://unix.stackexchange.com/questions/225401/how-to-see-full-log-from-systemctl-status-service

journalctl -u cron

journalctl -u cron -b

journalctl --since "2018-08-30 14:10:10"

journalctl --until "2018-09-02 12:05:50"

# similar to tail -f
journalctl -xefu cron


# https://askubuntu.com/questions/1238214/big-var-log-journal

sudo journalctl --vacuum-size=100M
sudo journalctl --vacuum-time=10d