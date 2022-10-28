#!/bin/bash
echo "###Bootcamp DIO - Project 1 - IaC###"
echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos     -c "Carlos"     -m -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'Senha123') -G GRP_ADM
useradd maria      -c "Maria"      -m -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'Senha123') -G GRP_ADM
useradd joao       -c "Joao"       -m -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'Senha123') -G GRP_ADM

useradd debora     -c "Debora"     -m -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'Senha123') -G GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'Senha123') -G GRP_VEN
useradd roberto    -c "Roberto"    -m -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'Senha123') -G GRP_VEN

useradd Josefina   -c "Josefina"   -m -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'Senha123') -G GRP_SEC
useradd Amanda     -c "Amanda"     -m -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'Senha123') -G GRP_SEC
useradd Rogerio    -c "Rogerio"    -m -s /bin/bash -p $(perl -e 'print crypt($ARGV[0], "password")' 'Senha123') -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim!"
