#!/bin/bash

set -e

## Las fuentes se instalan en la carpeta del usuario

FONTS_DIR = "$HOME/.local/share/fonts"
ZIP_DIR = "$(dirname "$0")/fonts"

echo "Instalando fuentes..."
mkdir -p "$FONTS_DIR"

for zip in "$ZIP_DIR"/*.zip; do
  if [ -f "$zip" ]; then
    echo "Instalando $(basename "$zip")..."
    unzip -o "$zip" -d "$FONTS_DIR" > /dev/null
  fi
done

echo "Actualizando cache de fuentes..."
fc-cache -fv "$FONTS_DIR"

echo "Fuentes instaladas correctamente."
