#!/usr/bin/env bash
yay -Syu
xargs yay -S < aur_packages.list
