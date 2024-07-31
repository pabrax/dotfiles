#!/bin/bash

workdir="$HOME/fonts_download_directory" 
downloads_folder="$workdir/downloads"
unzip_folder="$workdir/fonts"


# create temp directory

prepare() {
    echo "creando directorio de trabajo..."
    mkdir -p "$workdir"
    mkdir -p "$downloads_folder" 
    mkdir -p "$unzip_folder"
}


# download Nerdfonts via wget
get_fonts() {
    echo "obteniendo fuentes..."

    urls=(
        "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Agave.zip"
        "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/CascadiaCode.zip"
        "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/CodeNewRoman.zip"
        "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/ComicShannsMono.zip"
        "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Hack.zip"
        "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Iosevka.zip"
        "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip"
        "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Mononoki.zip"
    )

    for url in "${urls[@]}"; do
        wget -P $downloads_folder "$url"
    done

    wait
}


# descomprimir  fuentes

extract_files() {
        
    echo "descomprimiendo fuentes"

    for file in "$downloads_folder"/*.zip; do
        unzip -o "$file" -d "$unzip_folder" 
    done

}

# instalando fuentes

install_fonts() {
    local font_path="/usr/share/fonts"

    sudo mv "$unzip_folder"/*.ttf "$font_path" && sudo mv "$unzip_folder"/*.otf "$font_path"

    sudo fc-cache -f -v
}

# eliminar carpeta de trabajo y .zips

finish() {
    echo "Eliminando directorio de trabajo..."
    
    rm -rf $workdir

    echo "Fuentes instaladas correctamente"
}


begin() {
    prepare
    get_fonts
    extract_files
    install_fonts
    finish
}

begin