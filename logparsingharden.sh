#!/bin/bash
logfile1=/var/log/messages
logfile2=/var/log/notexist
mydatexpr=`date +%b\ %d`

for log in $logfile{1,2}
  do
  if [ -e $log ]
  then
  echo $log BEGIN
  egrep "$mydatexpr" $log
  echo $log END
  else
  echo "$log file doesn't exist"
  fi
done
