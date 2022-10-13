#!/bin/bash

echo "Atualizando lista de pacotes disponíveis para instalação/atualização"
apt-get update

echo "Atualizando sistema operacional"
apt-get upgrade -y

echo "Instalando Apache"
apt-get install apache2 -y

echo "Instalando unzip"
apt-get install unzip -y

echo "Fazendo download do sistema web"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando sistema web"
unzip main.zip

echo "Entrando no diretório descompactado"
cd linux-site-dio

echo "Copiando todos os arquivos para o Apache"
cp -R * /var/www/html
