#!/bin/bash

echo "Criando diretórios...."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupo de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd Bruno -m -s /bin/bash -p $(openssl passwd -cypt Senha123) -G GRP_ADM
useradd Maria -m -s /bin/bash -p $(openssl passwd -cypt Senha123) -G GRP_ADM
useradd Joao -m -s /bin/bash -p $(openssl passwd -cypt Senha123) -G GRP_ADM

useradd Debora -m -s /bin/bash -p $(openssl passwd -cypt Senha123) -G GRP_VEN
useradd Sebastiana -m -s /bin/bash -p $(openssl passwd -cypt Senha123) -G GRP_VEN
useradd Roberto -m -s /bin/bash -p $(openssl passwd -cypt Senha123) -G GRP_VEN

useradd Josefina -m -s /bin/bash -p $(openssl passwd -cypt Senha123) -GRP_SEC
useradd Amanda -m -s /bin/bash -p $(openssl passwd -cypt Senha123) -G GRP_SEC
useradd Rogerio -m -s /bin/bash -p $(openssl passwd -cypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizando criação de pastas, usuários e permissões..."
 
