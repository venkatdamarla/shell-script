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
installation_validate()
{
    if [ $1 -ne 0 ]
    then
        echo "$2 installation ..... FAILURE"
        exit 1  
    else
        echo "$2 installation ..... SUCCESS"
    fi
}
dnf list installed mysql
if [ $? -ne 0 ]
then
    dnf install mysql -y
    installation_validate $? "My SQL"
    
else
    echo "My SQL already installed"
fi

dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    installation_validate $? "GIT"
else
     echo "GIT already installed"
fi

