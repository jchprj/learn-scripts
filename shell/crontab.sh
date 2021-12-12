# https://unix.stackexchange.com/questions/52330/how-to-redirect-output-to-a-file-from-within-cron
# Change the redirection from &>> to 2>&1. So now crontab -e looks like
# */1 * * * * /home/ranveer/vimbackup.sh >> /home/ranveer/vimbackup.log 2>&1
# I believe the above works because by default cron is using sh to run the task instead of bash so &>> is not supported by sh.

crontab -l
crontab -e

# https://www.cyberciti.biz/faq/linux-execute-cron-job-after-system-reboot/
# @reboot echo start on reboot
# @reboot sleep 300 && echo start 300 seconds after reboot