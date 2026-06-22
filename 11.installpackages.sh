#!/bin/bash

userid=$(id -u)

timestamp=$(date +%f-%h-%m-%s)
scriptname=$(echo $0 | cut -d "/" -f1)
logfile=/tmp/${scriptname}_${timestamp}.log

R="\e[31m"
g="\e[32m"
Y="\e[33m"
n="\e[0m"



validate(){
    if [ $1 -ne 0 ]
    then
      echo -e "${R}its failure $2${N}"
        exit 1
    else
        echo -e "${g}its success $2${N}"
    fi
}
if [ $userid -eq 0 ]
then
    echo "you are not super user"
else
   echo " you are  super user"
fi

dnf install mysql gcc fail2ban git -y
validate $? "Installation of mysql gcc fail2ban git success"



