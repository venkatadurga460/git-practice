#!/bin/bash

USERID=$( id -u )
#echo user is $USERID

if [ $USERID -ne 0 ]
then 
echo "you don't have root previllage, please exit"
exit 1
else
echo "you have root access please procedd further"
fi

dnf list installed git

if [ $? -ne 0 ]
then 
echo "Git is not installed please go head and install"
else 
echo "Git is installed, no need to perform"
fi