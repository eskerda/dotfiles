#!/bin/bash
VALUE=`cat /proc/acpi/ibm/light | grep "status:" | awk '{print $2}'`
if [[ $VALUE == "on" ]]
then
    echo "3"
else
    echo ""
fi
