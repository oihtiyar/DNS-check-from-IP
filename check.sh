#!/bin/bash

# File containing IP addresses
file="IP_Read_List.txt"

# Read the file line by line and run the `host` command
while IFS= read -r ip
do
  echo "IP: $ip"
  host "$ip"
  echo
done < "$file"

