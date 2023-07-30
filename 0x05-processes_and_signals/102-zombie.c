#!/usr/bin/env bash
# manages arguments start, stop and restart arguments
if [ "$1" == "start" ];
then
    ./manage_my_process &
    echo "$!" > /var/run/my_process.pid
    echo "manage_my_process started"
elif [ "$1" == "stop" ];
then
    kill "$(cat /var/run/my_process.pid)"
    rm -f /var/run/my_process.pid
    echo "manage_my_process stopped"
elif [ "$1" == "restart" ];
then
    kill "$(cat /var/run/my_process.pid)"
    rm -f /var/run/my_process.pid
    ./manage_my_process &
    echo "$!" > /var/run/my_process.pid
    echo "manage_my_process restarted"
else
    echo "Usage: manage_my_process {start|stop|restart}"
fi
