#!/bin/bash

printf "Criando usuário.\n"
sleep 1
groupadd sftp_group
useradd -m -s /bin/false -g sftp_group ${USER_NAME}
passwd -s ${USER_PASS}
mkdir /opt/SFTP-SERVER
chown root:root /opt/SFTP-SERVER
chmod 0755
mkdir /opt/SFTP-SERVER/DADOS
chown ${USER_NAME}:sftp_group /opt/SFTP-SERVER/DADOS


