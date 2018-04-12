#!/bin/bash
  
if [ $# -ne 1 ]
then
        MYSITE=www.google.com
else
        MYSITE=$1
fi
ping -c 3 $MYSITE > /dev/null

if [ $? != 0 ]
then
        echo `date +%F`
        echo "Your site seems to be down"
        mail -s "Your $MYSITE seems to be down" user@gmail.com
fi
