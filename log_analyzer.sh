#!/bin/bash

LOG_FILE="/home/ubuntu/sample_auth.log"

echo "...........LOG ANALYSER.............."

echo
 
echo "FAILED ATTEMPT "
grep "Failed password " $LOG_FILE | wc -l 

echo

echo "Accepted publickey: "
grep "Accepted publickey" $LOG_FILE | wc -l

echo

echo "Top 5 IP Addresses: "
grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' $LOG_FILE | sort | uniq -c | sort -nr | head -5
