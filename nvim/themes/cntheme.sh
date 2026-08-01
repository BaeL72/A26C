#!/usr/bin/bash

themes_dir=~/.config/nvim/themes
plugins_dir=~/.config/nvim/lua/plugins
log_file=~/.config/nvim/themes/latest.log

exec 2>$log_file

set -x

active_tmp=$(ls $plugins_dir | grep -E "*theme.lua")
active=${active_tmp:?'null'}

inactive_tmp=$(ls $themes_dir | grep -w $1)
inactive=${inactive_tmp:?'null'}

mv $plugins_dir/$active $themes_dir && mv $themes_dir/$1 $plugins_dir && echo "$1 Moved Successfully"
