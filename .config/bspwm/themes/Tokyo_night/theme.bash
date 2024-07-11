# ------------------------------------------------------------------------------
# Copyright (C) 2020-2024 Aditya Shakya <adi1090x@gmail.com>
#
# Manhattan Theme
# ------------------------------------------------------------------------------

# Colors
background='#1a1b26'
foreground='#f1fcf9'
color0='#20262c'
color1='#bb9af7'
color2='#74dd91'
color3='#e0af68'
color4='#9ece6a'
color5='#7aa2f7'
color6='#b4f9f8'
color7='#f1fcf9'
color8='#414868'
color9='#bb9af7'
color10='#4bc66d'
color11='#db695b'
color12='#3dbac2'
color13='#bb9af7'
color14='#62cdcd'
color15='#e0e5e5'

element_bg='#24283b'
element_fg='#F0FBF8'
element_hl='#7aa2f7'

light_value='0.05'
dark_value='0.30'

# Wallpaper
wdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
wallpaper="$wdir/wallpaper"

# Polybar
polybar_font='Iosevka Nerd Font:size=10;3'

# Rofi
rofi_font='Iosevka 10'
rofi_icon='Papirus-Apps'

# Terminal
terminal_font_name='JetBrainsMono Nerd Font'
terminal_font_size='10'

# vscode
vscode_theme='Tokyo Night'

# Geany
geany_colors='manhattan.conf'
geany_font='JetBrains Mono 10'

# Appearance
gtk_font='Noto Sans 9'
gtk_theme='Manhattan'
icon_theme='Luv-Folders-Dark'
cursor_theme='Vimix-Dark'

# Dunst
dunst_width='300'
dunst_height='80'
dunst_offset='20x20'
dunst_origin='top-right'
dunst_font='Iosevka Custom 9'
dunst_border='2'
dunst_separator='2'

# Picom
picom_backend='glx'
picom_corner='0'
picom_shadow_r='14'
picom_shadow_o='0.30'
picom_shadow_x='-12'
picom_shadow_y='-12'
picom_blur_method='none'
picom_blur_strength='0'

# Bspwm
bspwm_fbc="$element_hl"
bspwm_nbc="$background"
bspwm_abc="$color5"
bspwm_pfc="$color2"
bspwm_border='2'
bspwm_gap='10'
bspwm_sratio='0.50'
