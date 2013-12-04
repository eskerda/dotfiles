#!/bin/bash
MAXVALUE=14
DATA=`cat /proc/acpi/ibm/volume`
VOLUME=`echo $DATA | awk '{print $2}'`
MUTE=`echo $DATA | awk '{print $4}'`
if [ "$MUTE" != "off" ]
then
    echo 0
else
    echo $((VOLUME*100/MAXVALUE))
fi
