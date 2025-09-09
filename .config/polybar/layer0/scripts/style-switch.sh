#!/usr/bin/env bash

SDIR="$HOME/.config/polybar/layer0/scripts"

# Launch Rofi
MENU="$(rofi -no-config -no-lazy-grab -sep "|" -dmenu -i -p '' \
-theme $SDIR/rofi/styles.rasi \
<<< "Blue|Console|Dark|Synthwave|Gruvbox|Ayu|Windows|")"
			case "$MENU" in
				*Blue) 
					"$SDIR"/styles.sh --blue
					"$SDIR/wallpaper-switch.sh" --blue
					;;
				*Console) 
					"$SDIR"/styles.sh --console
					"$SDIR/wallpaper-switch.sh" --console
					;;
				*Dark) 
					"$SDIR"/styles.sh --dark
					"$SDIR/wallpaper-switch.sh" --dark
					;;
				*Synthwave) 
					"$SDIR"/styles.sh --synthwave
					"$SDIR/wallpaper-switch.sh" --synthwave
					;;
				*Gruvbox) 
					"$SDIR"/styles.sh --gruvbox
					"$SDIR/wallpaper-switch.sh" --gruvbox
					;;
				*Ayu)
					"$SDIR"/styles.sh --ayu
					"$SDIR/wallpaper-switch.sh" --ayu
					;;
				*Windows)
					"$SDIR"/styles.sh --windows
					"$SDIR/wallpaper-switch.sh" --windows
					;;
			esac
