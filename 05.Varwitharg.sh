#!/bin/bash
echo "Variables with arguments"
person1=$1
person2=$2
person3=$3
echo "The name of the Person1 is : $person1"
echo "The name of the Person2 is : $person2"
echo "The name of the Person3 is : $person3"
echo "All variables passed : $@"
echo "Number of variables : $#"
echo "Script Name : $0"
echo "$user running the script $0"
echo "Process ID of script $0 is: $$"