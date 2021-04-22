#!/bin/bash

# ************************************
# **     Instalacion de Bitnami     **
# ************************************

set -x

# Actualizamos e instalamos la lista de paquetes
apt update && apt upgrade -y

# Descargamos el instalador ejecutable de Bitnami
wget https://bitnami.com/redirect/to/1448613/bitnami-wordpress-5.7.1-0-linux-x64-installer.run

# Cambiamos los permisos
chmod a+x bitnami-wordpress-5.7.1-0-linux-x64-installer.run

# Instalamos las librerias que necesitamos para la instalación
apt-get install libncurses5 -y

# Ejecutamos el instalador
./bitnami-wordpress-5.7.1-0-linux-x64-installer.run