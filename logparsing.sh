#!/bin/bash
logfile=/var/log/messages
mydatexpr=`date +%b\ %d`

for log in $logfile
do
egrep "$mydatexpr" $log
done
