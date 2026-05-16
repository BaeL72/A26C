#!/usr/bin/bash

isActive=$(pgrep -f '^cliptui$')
if [[ -z "$isActive" ]]; then
	kitty --class cliptui -e cliptui
else
	kill "$isActive"
fi
