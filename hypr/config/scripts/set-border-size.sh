#!/usr/bin/bash
current=$(grep -Eo "[0-1]" ../variables.conf)
if [[ $current -eq 1 ]]; then
	echo '$border_size = 0' > ../variables.conf
else
	echo '$border_size = 1' > ../variables.conf
fi
