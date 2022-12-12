#!/usr/bin/env bash
now=$(date "+%F-%T")
now+=.txt
echo "$now"
top -n 1 > $now
df -h >> $now