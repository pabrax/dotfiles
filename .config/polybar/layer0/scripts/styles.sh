#!/usr/bin/env bash

# Archivo de configuración de colores
PFILE="$HOME/.config/polybar/layer0/colors.ini"
RFILE="$HOME/.config/polybar/layer0/scripts/rofi/colors.rasi"
I3CONFIG_FILE="$HOME/.config/i3/config"
VS_CODE_SETTINGS="$HOME/.config/Code/User/settings.json"
KITTY_THEME="$HOME/.config/kitty/colors.conf"
DUNST_FILE="$HOME/.config/dunst/dunstrc" 

# Función para cambiar los colores en el archivo colors.ini
change_color() {
	# Colores de polybar
    sed -i -e "s/^background = #.*/background = $BG/" $PFILE
    sed -i -e "s/^foreground = #.*/foreground = $FG/" $PFILE
    sed -i -e "s/^sep = #.*/sep = $SEP/" $PFILE
    sed -i -e "s/^white = #.*/white = $WHITE/" $PFILE
    sed -i -e "s/^black = #.*/black = $BLACK/" $PFILE
    sed -i -e "s/^red = #.*/red = $RED/" $PFILE
    sed -i -e "s/^pink = #.*/pink = $PINK/" $PFILE
    sed -i -e "s/^purple = #.*/purple = $PURPLE/" $PFILE
    sed -i -e "s/^blue = #.*/blue = $BLUE/" $PFILE
    sed -i -e "s/^cyan = #.*/cyan = $CYAN/" $PFILE
    sed -i -e "s/^teal = #.*/teal = $TEAL/" $PFILE
    sed -i -e "s/^green = #.*/green = $GREEN/" $PFILE
    sed -i -e "s/^lime = #.*/lime = $LIME/" $PFILE
    sed -i -e "s/^yellow = #.*/yellow = $YELLOW/" $PFILE
    sed -i -e "s/^amber = #.*/amber = $AMBER/" $PFILE
    sed -i -e "s/^orange = #.*/orange = $ORANGE/" $PFILE
    sed -i -e "s/^brown = #.*/brown = $BROWN/" $PFILE
    sed -i -e "s/^indigo = #.*/indigo = $INDIGO/" $PFILE
    sed -i -e "s/^gray = #.*/gray = $GRAY/" $PFILE
    sed -i -e "s/^blue-gray = #.*/blue-gray = $BLUE_GRAY/" $PFILE


	# rofi
	cat > $RFILE <<- EOF
	/* colors */

	* {
	  al:   #00000000;
	  bg:   ${BG}FF;
	  bga:  ${BGA}FF;
	  fg:   ${FG}FF;
	  ac:   ${AC}FF;
	  se:   ${SE}FF;
	}
	EOF
	
	polybar-msg cmd restart


	# cambiar esquema de color de i3

	sed -i -e "s/^set \$inactive_bg_color .*/set \$inactive_bg_color $BG/" $I3CONFIG_FILE
	sed -i -e "s/^set \$inactive_text_color .*/set \$inactive_text_color $FG/" $I3CONFIG_FILE
	sed -i -e "s/^set \$window_border .*/set \$window_border $SEP/" $I3CONFIG_FILE
	sed -i -e "s/^set \$urgent_bg_color .*/set \$urgent_bg_color $RED/" $I3CONFIG_FILE
	sed -i -e "s/^set \$active_window_color .*/set \$active_window_color $SE/" $I3CONFIG_FILE
	sed -i -e "s/^set \$active_text_color .*/set \$active_text_color $WHITE/" $I3CONFIG_FILE

	# reiniciar i3
	i3-msg restart


	# cambiar tema de kitty

	sed -i -e "s/^background .*/background $BG/" $KITTY_THEME
	sed -i -e "s/^foreground .*/foreground $FG/" $KITTY_THEME
	sed -i -e "s/^cursor .*/cursor $WHITE/" $KITTY_THEME
	sed -i -e "s/^selection_background .*/selection_background $BGA/" $KITTY_THEME
	sed -i -e "s/^color0 .*/color0 $BLACK/" $KITTY_THEME
	sed -i -e "s/^color8 .*/color8 $GRAY/" $KITTY_THEME
	sed -i -e "s/^color1 .*/color1 $RED/" $KITTY_THEME
	sed -i -e "s/^color9 .*/color9 $RED/" $KITTY_THEME
	sed -i -e "s/^color2 .*/color2 $GREEN/" $KITTY_THEME
	sed -i -e "s/^color10 .*/color10 $GREEN/" $KITTY_THEME
	sed -i -e "s/^color3 .*/color3 $YELLOW/" $KITTY_THEME
	sed -i -e "s/^color11 .*/color11 $YELLOW/" $KITTY_THEME
	sed -i -e "s/^color4 .*/color4 $BLUE/" $KITTY_THEME
	sed -i -e "s/^color12 .*/color12 $BLUE/" $KITTY_THEME
	sed -i -e "s/^color5 .*/color5 $PURPLE/" $KITTY_THEME
	sed -i -e "s/^color13 .*/color13 $PURPLE/" $KITTY_THEME
	sed -i -e "s/^color6 .*/color6 $CYAN/" $KITTY_THEME
	sed -i -e "s/^color14 .*/color14 $CYAN/" $KITTY_THEME
	sed -i -e "s/^color7 .*/color7 $WHITE/" $KITTY_THEME
	sed -i -e "s/^color15 .*/color15 $GRAY/" $KITTY_THEME
	sed -i -e "s/^selection_foreground .*/selection_foreground $FG/" $KITTY_THEME

	# recargar kitty cuando se cambia el tema cuando la terminal estra abierta pkill
	pkill -USR1 -x kitty	

	# cambiar tema de vscode
	sed -i -e "s/\"workbench.colorTheme\": \".*\"/\"workbench.colorTheme\": \"$vscode_theme\"/" $VS_CODE_SETTINGS


	# dunst
    sed -i -e "s/^frame_color = .*/frame_color = \"$AC\"/" $DUNST_FILE
    sed -i -e "s/^separator_color=.*/separator_color = frame/" $DUNST_FILE
    sed -i -e "s/^highlight = .*/highlight = \"$AC\"/" $DUNST_FILE

    # urgencies
    sed -i -e "/\[urgency_low\]/,/^\[/ s/^background = .*/background = \"$BG\"/" $DUNST_FILE
    sed -i -e "/\[urgency_low\]/,/^\[/ s/^foreground = .*/foreground = \"$FG\"/" $DUNST_FILE

    sed -i -e "/\[urgency_normal\]/,/^\[/ s/^background = .*/background = \"$BG\"/" $DUNST_FILE
    sed -i -e "/\[urgency_normal\]/,/^\[/ s/^foreground = .*/foreground = \"$FG\"/" $DUNST_FILE

    sed -i -e "/\[urgency_critical\]/,/^\[/ s/^background = .*/background = \"$BG\"/" $DUNST_FILE
    sed -i -e "/\[urgency_critical\]/,/^\[/ s/^foreground = .*/foreground = \"$FG\"/" $DUNST_FILE
    sed -i -e "/\[urgency_critical\]/,/^\[/ s/^frame_color = .*/frame_color = \"$RED\"/" $DUNST_FILE

    # reiniciar dunst
    pkill dunst && dunst &

}

# Temas disponibles y sus colores
if [[ $1 = "--blue" ]]; then
	BG="#021D32"
	FG="#E0F2FE"
	BGA="#0C355B"
	SEP="#01070E"
	AC="#18629C"
	SE="#103D68"
	WHITE="#FFFFFF"
	BLACK="#000000"
	RED="#BF4D4D"
	PINK="#E57373"
	PURPLE="#9575CD"
	BLUE="#18629C"
	CYAN="#4DD0E1"
	TEAL="#00A8C5"
	GREEN="#5CB85C"
	LIME="#A3D3A1"
	YELLOW="#FFEB3B"
	AMBER="#FFC107"
	ORANGE="#FF9800"
	BROWN="#8D6E63"
	INDIGO="#3F51B5"
	GRAY="#B0BEC5"
	BLUE_GRAY="#103D68"
	BORDERCOLOR="$SE"
	vscode_theme="Night Owl"

	change_color
elif [[ $1 = "--console" ]]; then
	BG="#000000"
	FG="#00FF00"
	BGA="#121212"
	SEP="#1A1A1A"
	AC="#00FF00"
	SE="#00AA00"
	WHITE="#FFFFFF"
	BLACK="#000000"
	RED="#FF3333"
	PINK="#FF66A3"
	PURPLE="#9B59B6"
	BLUE="#3399FF"
	CYAN="#00FFFF"
	TEAL="#00CC99"
	GREEN="#00FF00"
	LIME="#CCFF33"
	YELLOW="#FFFF00"
	AMBER="#FFB733"
	ORANGE="#FF8000"
	BROWN="#704214"
	INDIGO="#5A5AFF"
	GRAY="#A9A9A9"
	BLUE_GRAY="#808080"
	BORDERCOLOR="$SE"
	vscode_theme="Black"

	change_color
elif [[ $1 = "--dark" ]]; then
	BG="#141414"
	FG="#B0B0B0"
	BGA="#1C1C1C"
	SEP="#2C2C2C"
	AC="#FF5555"
	SE="#50FA7B"
	WHITE="#FFFFFF"
	BLACK="#000000"
	RED="#EC7875"
	PINK="#EC407A"
	PURPLE="#BA68C8"
	BLUE="#42A5F5"
	CYAN="#4DD0E1"
	TEAL="#00B19F"
	GREEN="#61C766"
	LIME="#B9C244"
	YELLOW="#FDD835"
	AMBER="#FBC02D"
	ORANGE="#E57C46"
	BROWN="#AC8476"
	INDIGO="#6C77BB"
	GRAY="#9E9E9E"
	BLUE_GRAY="#6D8895"
	BORDERCOLOR="$BLUE"
	vscode_theme="One Dark Pro Darker"


	change_color
elif [[ $1 = "--synthwave" ]]; then
	BG="#2A2139"
	FG="#E3DFFF"
	BGA="#372D4D"
	SEP="#574B7C"
	AC="#FF79C6"
	SE="#8BE9FD"
	WHITE="#FFFFFF"
	BLACK="#000000"
	RED="#FF6F61"
	PINK="#FF79C6"
	PURPLE="#BD93F9"
	BLUE="#6272A4"
	CYAN="#8BE9FD"
	TEAL="#50FA7B"
	GREEN="#69F0AE"
	LIME="#CCFF90"
	YELLOW="#FFD700"
	AMBER="#FFCA28"
	ORANGE="#FF8C42"
	BROWN="#A67C52"
	INDIGO="#4B0082"
	GRAY="#B0A9C4"
	BLUE_GRAY="#372D4D"
	BORDERCOLOR="$AC"
	vscode_theme="Catppuccin Macchiato"

	change_color

elif [[ $1 = "--gruvbox" ]]; then
    BG="#282828"
    FG="#EBDBB2"
    BGA="#3C3836"
    SEP="#504945"
    AC="#FB4934"
    SE="#8EC07C"
    WHITE="#FFFFFF"
    BLACK="#000000"
    RED="#FB4934"
    PINK="#D75F5F"
    PURPLE="#B16286"
    BLUE="#83A598"
    CYAN="#8EC07C"
    TEAL="#8EC07C"
    GREEN="#A9B665"
    LIME="#B8BB26"
    YELLOW="#FABD2F"
    AMBER="#FE8019"
    ORANGE="#FF8800"
    BROWN="#D79921"
    INDIGO="#5F66A2"
    GRAY="#A89984"
    BLUE_GRAY="#3C3836"
    BORDERCOLOR="$AC"
    vscode_theme="Gruvbox Material Dark"

    change_color

elif [[ $1 = "--ayu" ]]; then
    BG="#0A0E14"
    FG="#D0D0D0"
    BGA="#1D2228"
    SEP="#5B6268"
    AC="#F5A97B"
    SE="#7FB1B3"
    WHITE="#FFFFFF"
    BLACK="#000000"
    RED="#F7768E"
    PINK="#F5A97B"
    PURPLE="#BB80B3"
    BLUE="#7AA2F7"
    CYAN="#7FB1B3"
    TEAL="#7FB1B3"
    GREEN="#9BBF76"
    LIME="#A9D8A1"
    YELLOW="#E1D76E"
    AMBER="#F59C42"
    ORANGE="#F5A97B"
    BROWN="#E5C07B"
    INDIGO="#5A5F99"
    GRAY="#4D545C"
    BLUE_GRAY="#1D2228"
    BORDERCOLOR="$AC"
    vscode_theme="Ayu Dark"

    change_color

elif [[ $1 = "--windows" ]]; then
	BG="#0D1117"         # Fondo principal oscuro
	FG="#D1D5DA"         # Texto claro neutro
	BGA="#161B22"        # Fondo alternativo oscuro
	SEP="#21262D"        # Separadores azul-grisáceos
	AC="#1F6FEB"         # Accent azul vibrante tipo Fluent
	SE="#0A84FF"         
	WHITE="#FFFFFF"
	BLACK="#000000"
	RED="#F85149"        # Error / alerta
	PINK="#FF7EDB"       # Rosa fluido brillante
	PURPLE="#A371F7"     # Morado suave moderno
	BLUE="#0A84FF"       # Azul más brillante que el acento
	CYAN="#76E4F7"       # Cian claro estilo Fluent
	TEAL="#2B8EAD"       # Verde azulado oscuro
	GREEN="#2EA043"      # Verde tipo success moderno
	LIME="#B5E853"       # Verde lima neón sutil
	YELLOW="#F2CC60"     # Amarillo cálido para alertas
	AMBER="#E9A63A"      # Ámbar suave fluido
	ORANGE="#F0883E"     # Naranja brillante estilo Fluent
	BROWN="#7A5C3E"      # Marrón oscuro fluido
	INDIGO="#3B5CCC"     # Azul índigo fuerte
	GRAY="#8B949E"       # Gris medio para textos secundarios
	BLUE_GRAY="#2D333B"  # Gris azulado profundo
	BORDERCOLOR="$BLUE"

	vscode_theme="Visual Studio Dark"

	change_color
else
	echo "No option specified, Available options:"
	echo "--blue    --console    --dark    --synthwave   --gruvbox    --ayu   --windows"
fi

