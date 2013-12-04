#!/bin/bash
MAXVALUE=7
VALUE=`cat /proc/acpi/ibm/brightness | grep "level:" | awk '{print $2}'`
echo $(( $VALUE * 100 / $MAXVALUE))
