#!/bin/bash
number=$1
# -lt, -gt, -eq, -ge, -le
if [ $number -gt 100]
  echo "The given number $number is greater than 100"
  else
  echo "The given number $number is less than 100"
fi