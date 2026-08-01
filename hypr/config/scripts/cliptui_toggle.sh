#!/usr/bin/bash

isActive=$(pgrep -f '^cliptui$')
if [[ -z "$isActive" ]]; then
	kitty --class cliptui -o background_opacity=1.0 -e cliptui
else
	kill "$isActive"
fi
