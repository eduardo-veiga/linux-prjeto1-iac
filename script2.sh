#bin/bash

echo "atualizando dependencias"

apt-get update
apt-get upgrade -y

echo "instalando apache "

apt install apache2 -y

echo "instalando unzip"

apt install unzip -y

echo "dependencias atualizadas e instaladas"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip 
rm -rf /var/www/html/*
cd /tmp/linux-site-dio-main/

cp -R * /var/www/html/

service apache2 restart

