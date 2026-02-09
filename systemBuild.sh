#!/bin/env bash

echo "###########################"
echo "MONTANDO O SISTEMA"
echo "###########################"
echo ""
ROOT_PAHT="/home/$(whoami)"

build_download_structure(){
    echo "Mudando para o diretorio de downloads"
    cd $ROOT_PAHT/Downloads

    DOWNLOAD_FOLDERS_STRUCTURE=("temas_zip_tar" "arquivos_deb" "arquivos_iso")

    for directory in "${DOWNLOAD_FOLDERS_STRUCTURE[@]}"; do
        mkdir $directory
    done

    echo "Fim da etapa de criação dos diretorios"
}
build_download_structure

echo "##########################"
echo ""
build_programing_folder_structure(){
    echo "Mudando para o diretorio Home"
    FOLDER_PROGRAMING_METERIALS="materias programacao"
    directory_folders_programing=("SOA" "BD")
    cd $ROOT_PAHT

    return_mkdir_command=$(mkdir $FOLDER_PROGRAMING_METERIALS 2>/dev/null)

    if [ -z "$return_mkdir_command" ]; then
        echo "Diretorio materias programacao já existente"
        return 0
    fi

    
    mkdir $FOLDER_PROGRAMING_METERIALS

    cd $FOLDER_PROGRAMING_METERIALS

    for directory in "${directory_folders_programing[@]}"; do
        mkdir $directory
    done
    
    echo "Etapa de Criação do diretorio de materias concluida"
}
build_programing_folder_structure

echo "##########################"
echo ""
build_pictures_folder_structure(){
    echo "Mudando para o diretorio de Imagens"
    cd $ROOT_PAHT/Pictures

    directory_pictures=("screenshots" "wallpapers")

    for directory in "${directory_pictures[@]}"; do
        mkdir $directory
    done


    echo "Etapa de Criação da estrutura do diretorio de imagens concluida"
}

build_pictures_folder_structure