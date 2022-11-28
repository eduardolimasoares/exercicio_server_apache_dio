#!bin/bash

echo "Atualizando servidor..."


apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "baixando e copiando os arquivos da aplicação"
cd /tpm

wget https://github/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip
cd linux-site-dio
cp -R * /var/www/html/
