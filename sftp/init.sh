#!/bin/bash

groupadd -g 10000 sftp_group
useradd -d /DADOS -M -s /bin/false -g sftp_group -u 10000 "${USER_NAME}"
echo "${USER_NAME}:${USER_PASS}" | chpasswd
mkdir -p /opt/SFTP-SERVER/DADOS
chown root:root /opt/SFTP-SERVER
chmod 0755 /opt/SFTP-SERVER
chown ${USER_NAME}:sftp_group /opt/SFTP-SERVER/DADOS
chmod 0770 /opt/SFTP-SERVER/DADOS

exec /usr/sbin/sshd -D
