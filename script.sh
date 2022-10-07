#!/bin/bash


echo "criando diretorios"
mkdir /publico /adm /ven /sec
echo "diretorios criados" 


echo "criando grupos de permicao"

groupadd grp_adm
groupadd grp_ven
groupadd grp_sec

echo "grupos criados"

echo "alterando permissoes diretorios"
chmod 777 /publico
chmod 770 /adm
chown root:grp_adm /adm/ 
chmod 770 /ven
chown root:grp_ven /ven/
chmod 770 /sec
chown root:grp_sec /sec/
echo "permicoes atribuidas"

echo "Realizando criacao de usuarios"

useradd carlos	 -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_adm
useradd maria	 -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_adm
useradd joao	 -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_adm
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_ven
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_ven
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_ven
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_sec
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_sec
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G grp_sec
echo "usuarios criados"


