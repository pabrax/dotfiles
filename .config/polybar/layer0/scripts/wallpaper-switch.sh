#!/bin/bash

wpp_dir="$HOME/.config/i3/wallpapers"
link_path="$HOME/.config/i3/wallpaper"

dark_wpp="$wpp_dir/dark.jpg"
blue_wpp="$wpp_dir/lain.png"
synthwave_wpp="$wpp_dir/pixel.jpg"
console_wpp="$wpp_dir/console2.png"
gruvbox_wpp="$wpp_dir/gruvbox.png"
ayu_dark_wpp="$wpp_dir/ayu-dark.png"
windows_wpp="$wpp_dir/Windows-11.jpg"

case $1 in
    --dark)
        current_theme="dark"
        ;;
    --blue)
        current_theme="blue"
        ;;
    --synthwave)
        current_theme="synthwave"
        ;;
    --console)
        current_theme="console"
        ;;
    --gruvbox)
        current_theme="gruvbox"
        ;;
    --ayu)
        current_theme="ayu"
        ;;
    --windows)
        current_theme="windows"
        ;;
    *)
        echo "Parámetro no reconocido: $1"
        exit 1
        ;;
esac

case $current_theme in
    "dark")
        ln -sf "$dark_wpp" "$link_path"
        feh --bg-fill "$dark_wpp"
        betterlockscreen -u "$dark_wpp"
        ;;
    "blue")
        ln -sf "$blue_wpp" "$link_path"
        feh --bg-fill "$blue_wpp"
        betterlockscreen -u "$blue_wpp"
        ;;
    "synthwave")
        ln -sf "$synthwave_wpp" "$link_path"
        feh --bg-fill "$synthwave_wpp"
        betterlockscreen -u "$synthwave_wpp"
        ;;
    "console")
        ln -sf "$console_wpp" "$link_path"
        feh --bg-fill "$console_wpp"
        betterlockscreen -u "$console_wpp"
        ;;
    "gruvbox")
        ln -sf "$gruvbox_wpp" "$link_path"
        feh --bg-fill "$gruvbox_wpp"
        betterlockscreen -u "$gruvbox_wpp"
        ;;
    "ayu")
        ln -sf "$ayu_dark_wpp" "$link_path"
        feh --bg-fill "$ayu_dark_wpp"
        betterlockscreen -u "$ayu_dark_wpp"
        ;;
    "windows")
        ln -sf "$windows_wpp" "$link_path" 
        feh --bg-fill "$windows_wpp"
        betterlockscreen -u "$windows_wpp"
        ;;
    *)
        echo "Tema no reconocido: $current_theme"
        ;;
esac
