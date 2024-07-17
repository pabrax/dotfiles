# my dots

![bspwm](.screenshots/bsprofi.png)
![bspwm](.screenshots/bspterm.png)
![bspwm](.screenshots/bspcode.png)

### ***content***

- [my dots](#my-dots)
    - [***content***](#content)
- [Resumen](#resumen)
- [bspwm](#bspwm)
  - [keymaps](#keymaps)
    - [Terminal (kitty)](#terminal-kitty)
    - [Rofi Launcher \& Menus](#rofi-launcher--menus)
    - [Applications](#applications)
    - [System Keys](#system-keys)
    - [Bspwm](#bspwm-1)
- [themes](#themes)
  - [current theme](#current-theme)
  - [Black Metal](#black-metal)
  - [Catppuccin](#catppuccin)
  - [Dark Forest](#dark-forest)
  - [Everforest](#everforest)
  - [One Dark](#one-dark)
  - [Tokyo Night](#tokyo-night)
  

# Resumen
Esta es una recopilacion de mis archivos de configuracion de mi entorno de desarrollo actual, Esta basado en una instalacion limpia de [archcraft](https://archcraft.io) que ya trae preconfigurado lo necesario para el correcto funcionamiento de este setup.

este entorno hace uso de BSPWM como manejador de ventanas y shxkd para la gestion de las teclas.

Este repositorio contiene los archivos de configuración de mi entorno de desarrollo personalizado. Está diseñado para funcionar sobre una instalación limpia de Archcraft, una distribución de Linux basada en Arch que viene preconfigurada con herramientas y ajustes optimizados.

El entorno utiliza BSPWM (Binary Space Partitioning Window Manager) como gestor de ventanas, proporcionando un manejo eficiente y personalizable de las ventanas en el escritorio. Para la gestión de atajos de teclado, se utiliza SXHKD (Simple X Hot Key Daemon), que permite una configuración flexible y rápida de los atajos para mejorar la productividad.

> Estos dotfiles incluyen configuraciones específicas para:

**BSPWM**: Reglas de ventana, atajos de teclado, y ajustes visuales.

**SXHKD**: Mapeo de teclas para una navegación eficiente y control del entorno.

**KITTY**: configuracion de temas, fuentes y configuraciones de la terminal.

**VSCODE**: configuracion del editor vscode (***settings.json***).

**ZSH**: mapeo de alias y temas especificos.


Con esta configuración, busco crear un entorno de desarrollo ágil, minimalista y altamente eficiente, optimizado para mis necesidades y preferencias.

Dentro de estos dotfiles tambien Se encuentran mis wallpapers y mis configuraciones de aplicaciones de windows


# bspwm

## keymaps

### Terminal (kitty)

| Keybinding | Action |
|------------|--------|
| `super + Return` | `bspterm` |
| `super + shift + Return` | `bspterm --float` |
| `super + alt + Return` | `bspterm --full` |

### Rofi Launcher & Menus

| Keybinding | Action |
|------------|--------|
| `alt + F1` | `rofi_launcher` |
| `alt + F2` | `rofi_runner` |
| `super + {m,n,r,s,t,w,x}` | `{rofi_music,nmd,rofi_asroot,rofi_screenshot,rofi_themes,rofi_windows,rofi_powermenu}` |

### Applications

| Keybinding | Action |
|------------|--------|
| `super + shift + {e,b,c}` | `{pcmanfm,brave,code}` |
| `ctrl + alt + {v,r,h}` | `kitty -e {vim,ranger,htop}` |
| `super + p` | `bspcolorpicker` |
| `ctrl + alt + m` | `bspmusic` |
| `ctrl + alt + l` | `betterlockscreen --lock` |

### System Keys

| Keybinding | Action |
|------------|--------|
| `super + space` | `bsplayout` |
| `Print` | `bspscreenshot --now` |
| `alt + Print` | `bspscreenshot --in5` |
| `ctrl + Print` | `bspscreenshot --win` |
| `super + Print` | `bspscreenshot --area` |
| `XF86MonBrightness{Up,Down}` | `bspbrightness{ --inc, --dec}` |
| `XF86Audio{RaiseVolume,LowerVolume}` | `bspvolume{ --inc, --dec}` |
| `XF86Audio{Mute,MicMute}` | `bspvolume{ --toggle, --toggle-mic}` |
| `XF86Audio{Next,Prev,Play,Stop}` | `mpc {next,prev,toggle,stop}` |

### Bspwm

| Keybinding | Action |
|------------|--------|
| `super + shift + h` | `bspwinmask` |
| `super + {_,shift + }q` | `bspc node -{c,k}` |
| `ctrl + alt + Escape` | `xkill` |
| `ctrl + shift + {q,r}` | `bspc {quit,wm -r}` |
| `super + Escape` | `pkill -USR1 -x sxhkd` |
| `ctrl + alt + {Left,Right}` | `bspc desktop -f {prev.local,next.local}` |
| `super + {_,shift + }{1-8}` | `bspc {desktop -f,node -d} '^{1-8}' '--follow'` |
| `super + ctrl + shift + {Left,Right}` | `bspc node -d {prev,next} '--follow'` |
| `super + {_,shift + }{Left,Down,Up,Right}` | `bspc node -{f,s} {west,south,north,east}` |
| `super + alt + shift + {Left,Down,Up,Right}` | `bspc node -v {-20 0,0 20,0 -20,20 0}` |
| `super + control + {Left,Right,Up,Down}` | `bspc node -z {left -20 0,right 20 0,top 0 -20,bottom 0 20}` |
| `super + alt + {Left,Right,Up,Down}` | `bspc node -z {left 20 0,right -20 0,top 0 20,bottom 0 -20}` |
| `super + {h,v,c}` | `bspc node -p {east,south,cancel}` |
| `super + ctrl + {1-9}` | `bspc node -o 0.{1-9}` |
| `super + l` | `bspc desktop -l next` |
| `super + f` | `bspc node -t "~"fullscreen` |
| `super + z` | `bspc node -t "~"{floating,tiled}` |
| `super + shift + z` | `bspc node -t "~"{pseudo_tiled,tiled}` |
| `super + ctrl + {m,x,y,z}` | `bspc node -g {marked,locked,sticky,private}` |
| `alt + {_,shift + }Tab` | `bspc node -f {next.local,prev.local}` |
| `super + {Tab,grave}` | `bspc {node,desktop} -f last` |

# themes

## current theme
![current theme](.screenshots/bspterm.png)

## Black Metal
![Black Metal](.screenshots/black_metal.png)

## Catppuccin
![Catppuccin](.screenshots/catppuccin.png)

## Dark Forest
![Dark Forest](.screenshots/dark_forest.png)

## Everforest
![One Dark](.screenshots/everforest.png)

## One Dark
![One Dark](.screenshots/onedark.png)

## Tokyo Night
![Tokyo Night](.screenshots/tokyo_night.png)

