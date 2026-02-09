#!/bin/env bash

echo "###########################"
echo "MONTANDO O SISTEMA"
echo "###########################"

ROOT_PAHT="/home/$(whoami)"

build_download_structure(){
    echo "Mudando para o diretorio de downloads"
    cd $ROOT_PAHT/Downloads

    DOWNLOAD_FOLDERS_STRUCTURE=("temas_zip_tar" "arquivos_deb" "arquivos_iso")

    for directory in "${DOWNLOAD_FOLDERS_STRUCTURE[@]}"; do
        mkdir $directory
    done
}
build_download_structure
