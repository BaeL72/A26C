#!/usr/bin/bash

# output=$(nmcli -t -f IN-USE,SIGNAL,SSID dev wifi | grep '*' | tr '\*:' ' ')
output=$(nmcli -f IN-USE,SIGNAL dev wifi | grep "*" | tr '\*' ' ')

# read -ra parts <<< "$output"
# 
# echo "${parts[0]}"
# echo "${parts[1]}"

echo "$output"
