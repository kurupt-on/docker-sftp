#!/bin/bash

clear

read -p "Porta no Host: " HP
read -p "Nome do Container: " CN
read -p "Nome de Usuário: " UN
read -p "Senha do Usuário: " UP

cat > ".env" << EOF
HOST_PORT=$HP
CONT_NAME=$CN
USER_NAME=$UN
USER_PASS=$UP
EOF

clear
printf "Criando o container.\n"
echo

docker compose up -d

echo
clear
printf "Container criado.\n"
echo
printf "Acesse: sftp -p ${HP} ${UN}@localhost\n"
echo
