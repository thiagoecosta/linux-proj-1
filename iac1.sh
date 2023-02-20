#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /financeiro
mkdir /marketing
mkdir /diretoria

echo "Criando grupos de usuários..."

groupadd GP_FIN
groupadd GP_MKT
groupadd GP_DIR

echo "Criando usuários..."

useradd thiago -m -s /bin/bash -c "Thiago Espunier Costa" -p SPN@123 -G GP_FIN
useradd helisa -m -s /bin/bash -c "Helisa Karla da Silva" -p SPN@123 -G GP_MKT
useradd samuel -m -s /bin/bash -c "Samuel da Silva" -p SPN@123 -G GP_DIR

echo "Atribuindo permissões aos diretórios..."

chown root:GP_FIN /financeiro
chown root:GP_MKT /marketing
chown root:GP_DIR /diretoria

chmod 777 /publico 
chmod 770 /financeiro
chmod 770 /marketing
chmod 770 /diretoria

echo "Script executado com sucesso"



