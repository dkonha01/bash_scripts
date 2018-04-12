#!/bin/bash
logfile1=/var/log/messages
logfile2=/var/log/secure
mydatexpr=`date +%b\ %d`

for log in $logfile{1,2}
do
echo $log BEGIN
egrep "$mydatexpr" $log
echo $log END
done
