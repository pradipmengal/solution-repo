#!/bin/bash

echo "------- Server Performance ----"

echo "=== Cpu Uses ==="
top -bn1 | grep "Cpu(s)" | awk '{print "Cpu Uses: " $8}'

echo "===== Memory Usages ====="
free | grep "Mem" | awk '{print "Used Memory :"  $3 "\nFREE : " $4}'

echo "===== Disk Usages ======"
df -h | grep "/dev/sda1" | awk '{ print "Free :" $4 "\nUsed :" $3}'
