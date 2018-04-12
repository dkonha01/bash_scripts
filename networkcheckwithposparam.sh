#!/bin/bash

if [ $# -ne 1 ]
then 
	echo "Please enter site name"
else
	MYSITE=$1
fi
ping -c 3 $MYSITE > /dev/null

if [ $? != 0 ]
then
	echo `date +%F`
	echo "Your site seems to be down"
fi
