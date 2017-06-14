#!/bin/bash
HOSTNAME=dyndnsdomain
LOGFILE=/var/log/dinhost.log
Current_IP=$(host $HOSTNAME | head -n1 | cut -f4 -d ' ')

if [ ! -f $LOGFILE ]; then
    /usr/sbin/ufw allow from $Current_IP
    echo $Current_IP > $LOGFILE
else

    Old_IP=$(cat $LOGFILE)
    if [ "$Current_IP" = "$Old_IP" ] ; then
        echo IP address has not changed
    else
        /usr/sbin/ufw delete allow from $Old_IP
        /usr/sbin/ufw allow from $Current_IP
        echo $Current_IP > $LOGFILE
        echo iptables have been updated
        sed -i 's/'$Old_IP'/'$Current_IP'/g' /etc/nginx/sites-enabled/*.vhost
        echo Nginx vhost have been updated
	service nginx reload
    fi
fi
