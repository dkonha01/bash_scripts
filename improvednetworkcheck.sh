#!/bin/bash

MYSITE=www.google.com
ping -c 3 $MYSITE > /dev/null

if [ $? != 0 ]
then
echo `date +%F`
echo "Your site seems to be down"
fi
