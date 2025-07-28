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

# https://tecadmin.net/clear-systemd-journal-logs/#:~:text=Now%2C%20Systemd%20will%20automatically%20clean,journalctl%20%E2%80%93disk%2Dusage%20command.
# sudo nano /etc/systemd/journald.conf
# # Set the maximum size of the journal logs in bytes
# SystemMaxUse=200M
# # Set the number of days after which logs will be deleted
# MaxRetentionSec=7d
# sudo systemctl restart systemd-journald
journalctl --disk-usage


# https://unix.stackexchange.com/questions/225401/how-to-see-full-log-from-systemctl-status-service
journalctl -u service-name.service
journalctl -u service-name.service -b
journalctl -u service-name
journalctl --no-pager
journalctl --since "2018-08-30 14:10:10" --until "2018-09-02 12:05:50"
