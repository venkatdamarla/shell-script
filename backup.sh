#!/bin/bash
echo "The written script to archive the logs"
echo "======================================"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGS-FOLDER="/var/log/shellscript-logs"
LOG-FILE=$( echo $0 | cut -d "." -f1) 
TIMESTAMP=$( date +%Y-%m-%d-%H-%M-%S)
LOG-FILE-NAME="$LOGS-FOLDER/$LOG-FILE-$TIMESTAMP.log"
echo "Script started executing at: $TIMESTAMP" &>>LOG-FILE-NAME
