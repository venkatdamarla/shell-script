#!/bin/bash
echo "The written script to archive the logs"
echo "======================================"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
#Source_Directory="/home/ec2-user/source_logs"
#Dest_Directory="/home/ec2-user/dest_logs"
Source_Directory=$1
Dest_Directory=$2
Days=${3:-14}
Logs_Folder="/var/log/shellscript-logs"
Log_File=$(echo $0 | cut -d "." -f 1)
Timestamp=$(date +%Y-%m-%d-%H-%M-%S)
Log_File_Name="$Logs_Folder/$Log_File-$Timestamp.log"

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
if [ ! -d $Source_Directory ]
then
   echo " The Source directory not exits"
fi
if [ ! -d $Dest_Directory ]
then
  echo "The Destination directory not exists"
fi
echo $Days

Files=$(find $Source_Directory -name "*.log" -mtime +$Days)

if [ -n "$Files" ]
then
   echo "Files are : $Files"
   Zip_File="$Dest_Directory/Source_Logs-$Timestamp.zip"
   echo $Zip_File
   find $Source_Directory -name "*.log" -mtime +$Days | zip -@ "$Zip_File"   
else
    echo "No files found older than $DAYS"
fi