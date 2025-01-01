#!/bin/bash
USERID=$(id -u)
echo "The UserID value is: $USERID"
if [ $USERID -eq 0 ] 
then
   echo "The user has the sudo access and he can install the softwares"
else
   echo "The user doesn't have the sudo access and he can't install the softwares"
   exit 1
fi
dnf install mysql -y
if [ $? -ne 0 ]
then
  echo "My sql installation ..... FAILURE"
  exit 1  
else
   echo "My sql installation ..... SUCCESS"
fi
dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "GIT installation ..... FAILURE"
        exit 1
    else
        echo "GIT installation ..... SUCCESS"
    fi
else
     echo "GIT already installed"
fi

