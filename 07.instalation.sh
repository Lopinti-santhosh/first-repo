#!/bin/bash

userid=$(id -u)
 
if [ $userid -eq 0 ]
then
   echo " you are not a root user"
   exit 1
else
echo " you are root user"

fi

dnf install mysql -y

if [ $? -eq 0]

then 
   echo " sql is installed"
else 
   echo " sql is not installed"

fi 


