#!/bin/bash

THEMES_DIR="$HOME/.config/bspwm/themes"
WALLPAPERS_DIR="$HOME/.config/bspwm/wpps"


if [[ ! -d "$THEMES_DIR" ]]; then
    echo "El directorio de temas no existe: $THEMES_DIR"
    exit 1
fi

for theme_dir in "$THEMES_DIR"/*; do
    if [[ -d "$theme_dir" ]]; then
        theme_name=$(basename "$theme_dir")
        wallpaper_link="$theme_dir/wallpaper"

        case $theme_name in
        black_metal)
            wallpaper_source="$WALLPAPERS_DIR/crow.png"
            ;;
        catppuccin)
            wallpaper_source="$WALLPAPERS_DIR/catppuccin.png"
            ;;
        dark_forest)
            wallpaper_source="$WALLPAPERS_DIR/dark_forest.jpg"
            ;;
        dark_horizon)
            wallpaper_source="$WALLPAPERS_DIR/forest.png"
            ;;
        everforest)
            wallpaper_source="$WALLPAPERS_DIR/everforest.jpg"
            ;;
        onedark)
            wallpaper_source="$WALLPAPERS_DIR/onedark.jpeg"
            ;;
        *)
            echo "Tema no reconocido: $theme_name"
            continue
            ;;
    esac

        if [[ -f "$wallpaper_source" ]]; then
            ln -sf "$wallpaper_source" "$wallpaper_link"
            echo "Enlace creado: $wallpaper_link -> $wallpaper_source"
        else
            echo "no se encontro el wallpaper para el tema $theme_name"
        fi
    fi
done

echo "proceso completado"