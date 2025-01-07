#!/bin/bash
echo "The written script to archive the logs"
echo "======================================"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
Source_Directory=$1
Dest_Directory=$2
Days=${3: -14}
Logs_Folder="/var/log/shellscript-logs"
echo $Logs_Folder
Log_File=$(echo $0 | cut -d "." -f 1)
echo $Log_File
Timestamp=$(date +%Y-%m-%d-%H-%M-%S)
echo $Timestamp
Log_File_Name="$Logs_Folder/$Log_File-$Timestamp.log"
echo $Log_File_Name
Usage()
{
    echo "Usage :: sh backup.sh <Source-Directory> <Dest-Directory> <No of Days(Optional>"
    exit 1
}
echo -e "$G The script execution started at :$Timestamp $N" &>>$Log_File_Name

if [ $# -lt 2 ]
then
    Usage
fi



