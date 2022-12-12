#!/usr/bin/env bash

now=$(date "+%F-%T")
now+=.txt

top -n 1 > $now
df -h >> $now
