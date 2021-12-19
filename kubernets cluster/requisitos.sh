#!/bin/bash

# Verifica o sistema operativo onde a script vai correr
unameOut="$(uname -s)"

# Fazer as instalações dos pre-requisitos consoante o sistema operativo
case "${unameOut}" in
    Linux*)
        machine=Linux

        sudo dpkg --configure -a
    
        # Instalar ansible
        sudo apt install ansible

        # Alterar permissões da pasta com o projecto ansible
        
        ;;
    Darwin*)
        machine=Mac
        echo "Instalação do ansible em sistema macOs!"
        #Instalar homebrew

        # Instalar ansible a partir do Homebrew
        brew install ansible

        # Verificar que o ansible foi instalado em macOS
        ansible --version;;

    CYGWIN*)
        machine=Cygwin;;
    MINGW*)
        machine=MinGw;;
    *)
        machine="UNKNOWN:${unameOut}"
esac

# Verificar o sistema onde está a correr a script
# echo ${machine}

