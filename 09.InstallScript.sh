#!/bin/bash
USERID=$(id -u)
echo "The UserID value is: $USERID"
if [ $USERID -eq 0 ] 
then
   echo "The user has the sudo access and he can install the softwares"
else
   echo "The user doesn't have the root access and he can't install the softwares"
   exit 1
fi