#!/usr/bin/bash

# This script gives a shortcut to toggle and untoggle redshift
# without using any interface / systray.
# Also comes handy to bind this script to a keyboard shortcut.
#
# Configure your lat, lng as needed.

pid_file='.redshift.pid'
if [ -f "$pid_file" ]
then
    echo "Killing existing redshift session"
    PID=`cat $pid_file`
    kill $PID
    echo "Waiting"
    while [ -e /proc/$PID ]; do sleep 0.1; done
    echo "Removing"
    rm $pid_file
else
    eval "/usr/bin/redshift -l <lat>:<lng> &"
    PID=$!
    echo "$PID" > $pid_file
fi

