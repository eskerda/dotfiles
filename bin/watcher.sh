#!/bin/bash
FILENAME=$1
while true
do
   ATIME=`stat -c %Z $1`

   if [[ "$ATIME" != "$LTIME" ]]
   then
       date=`date`
       echo "----- $date ------"
       echo "> File changed"
       echo "> Running: $2"
       $2
       echo "-----           Done!              ------"
       LTIME=$ATIME
   fi
   sleep 1
done
