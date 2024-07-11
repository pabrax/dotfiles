#!/bin/bash
xrandr --output HDMI-A-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DVI-D-0 --mode 1366x768 --pos 1920x312 --rotate normal --output HDMI-A-1 --off --output HDMI-A-2 --off
archcraft-reload-theme
