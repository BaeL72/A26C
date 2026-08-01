#!/usr/bin/env fish 
cat ~/git_options_presets/$argv[1].preset | string replace -r ".*: " ""
