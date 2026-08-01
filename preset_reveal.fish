#!/usr/bin/env fish 
cat ~/.config/git_options_presets/$argv[1].preset | string replace -r ".*: " ""
