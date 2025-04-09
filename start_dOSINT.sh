#!/bin/sh
 
# Función para verificar si Docker está instalado
check_docker() {
    if command -v docker &>/dev/null; then
        echo "Docker ya está instalado."
        docker --version
    else
        echo "Docker no está instalado. Procediendo con la instalación..."
        install_docker
    fi
}

# Función para instalar Docker
install_docker() {
    echo "Actualizando los repositorios..."
    sudo apt-get update

    echo "Instalando las dependencias necesarias..."
    sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

    echo "Añadiendo la clave GPG oficial de Docker..."
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

    echo "Añadiendo el repositorio de Docker..."
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

    echo "Actualizando los repositorios nuevamente..."
    sudo apt-get update

    echo "Instalando Docker..."
    sudo apt-get install -y docker-ce docker-ce-cli containerd.io

    echo "Docker instalado correctamente."

    # Verificar instalación
    docker --version
}

# Ejecutamos la función
check_docker
 
docker compose down
echo "Starting dOSINT..."
docker compose up --build -d
echo "Dropping into a shell inside de dOSINT"
docker compose run --rm dosint /bin/bash
docker compose up --remove-orphans -d