# bash-docker-restart
Bash script that will automatically restart the docker container if exited


**How to run the script**

**Make it executable**
> chmod +x container-check.sh

**Create cron job that runs every minute**
> echo "* * * * * root /path/container-check.sh" >> /etc/cron.d/container-status-scheck

_Note: make sure to change the "path' to the actual path of the script_

**Restart crond**
> systemctl restart cron