#!/usr/bin/env bash
pacman -Syu --noconfirm
xargs pacman -S --noconfirm < pacman_packages.list
