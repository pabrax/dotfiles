# ------------------------------------------------------------------------------
# Copyright (C) 2020-2024 Aditya Shakya <adi1090x@gmail.com>
#
# Hack Theme
# ------------------------------------------------------------------------------

# Colors
background='#070707'
foreground='#ffffff'
color0='#01161b'
color1='#ff5959'
color2='#71c64e'
color3='#ffeb7a'
color4='#04acb5'
color5='#313033'
color6='#4ac5e8'
color7='#a3b5b8'
color8='#878f91'
color9='#ff5959'
color10='#01161b'
color11='#71c64e'
color12='#ffeb7a'
color13='#04acb5'
color14='#b04ae8'
color15='#cecece'

accent='#cecece'
color_red='#ff5959'
color_green='#abff77'
color_yellow='#00ffed'

light_value='0.05'
dark_value='0.30'

# Wallpaper
wdir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
wallpaper="$wdir/wallpaper"

# Polybar
polybar_font='CodeNewRoman Nerd Font:size=10;3'

# Rofi
rofi_font='Iosevka Nerd Font 11'
rofi_icon='Papirus-Apps'

# Terminal
terminal_font_name='JetBrainsMono Nerd Font'
terminal_font_size='10'

# vscode
vscode_theme='Aura Dark (Soft Text)'

# Geany
geany_colors='hack.conf'
geany_font='JetBrains Mono 10'

# Appearance
gtk_font='Hack Nerd Font 9'
gtk_theme='Material-Black-Pistachio'
icon_theme='Tela-black'
cursor_theme='Qogirr'

# Dunst
dunst_width='300'
dunst_height='80'
dunst_offset='10x36'
dunst_origin='top-right'
dunst_font='Iosevka 10'
dunst_border='1'
dunst_separator='1'

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
bspwm_fbc="$accent"
bspwm_nbc="$background"
bspwm_abc="$color5"
bspwm_pfc="$color2"
bspwm_border='1'
bspwm_gap='10'
bspwm_sratio='0.50'
