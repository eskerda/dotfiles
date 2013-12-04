#!/bin/bash
DATA=`acpi -b`
STAT=`echo $DATA | awk '{print $3}' | sed 's/,//'`
PERC=`echo $DATA | awk '{print $4}' | sed 's/%,//'`
if [ "$STAT" == "Discharging" ]
then
    if [ $PERC -lt 25 ]
    then
        echo n
    elif [ $PERC -lt 50 ]
    then
        echo o
    elif [ $PERC -lt 75 ]
    then
        echo p
    else
        echo q
    fi
else
    echo r
fi
