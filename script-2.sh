#!/bin/bash

echo "Atualizar o servidor"
apt-get update
apt-get upgrade -y

echo "Instalar o apche e unzip"
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixar e copiar arquivos"
cd/tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
