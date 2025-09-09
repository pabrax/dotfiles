#!/usr/bin/env bash

## Author  : Adapted from original script
## Purpose : Switch keyboard layout using rofi

# Define the theme directory (adjust if needed)
dir="~/.config/polybar/layer0/scripts/rofi/"
rofi_command="rofi -no-config -theme $dir/powermenu.rasi"
# Options for keyboard layouts
layout_us="  English (US)"
layout_es="  Español (ES)"

# Options list
options="$layout_us\n$layout_es"

# Show rofi menu and store the selected option
chosen=$(echo -e "$options" | $rofi_command -p "Choose Layout:" -dmenu -selected-row 0)

# Handle the selected option
case "$chosen" in
    $layout_us)
        # Switch to English (US) layout
        setxkbmap us
        ;;
    $layout_es)
        # Switch to Spanish layout
        setxkbmap es
        ;;
    *)
        # Do nothing if no valid option is selected
        exit 0
        ;;
esac
