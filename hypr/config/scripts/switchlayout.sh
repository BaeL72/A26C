#!/usr/bin/bash
mv ~/.config/hypr/config/*_input.conf ~/.config/hypr/config/temp
mv ~/.config/hypr/config/input/*_input.conf ~/.config/hypr/config
mv ~/.config/hypr/config/temp/*_input.conf ~/.config/hypr/config/input
hyprctl reload
