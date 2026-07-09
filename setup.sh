#!/bin/bash

clear

read -p "Porta no Host: " HP
read -p "Nome do Container: " CN
read -p "Nome de Usuário: " UN
read -p "Senha do Usuário: " UP

cat > ".env" << EOF
VSTP_PORT=$HP
CONT_NAME=$CN
USER_NAME=$UN
USER_PASS=$UP
EOF
