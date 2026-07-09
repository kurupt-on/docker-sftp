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

printf "Inicializando o container.\n"
echo

docker compose up -d

echo
