#!/bin/bash

printf "Verificando o docker.\n"
sleep 1

command -v docker &>/dev/null

if [ $? -ne 0 ];then

	printf "Docker ausente.\n"
	sleep 1
	printf "Adicionando Repositório.\n"
	sleep 1

	. /etc/os-release

	apt-get update &>/dev/null
	apt-get install curl ca-certificates -y &>/dev/null
	install -m 0755 -d /etc/apt/keyrings
	curl -fsSL https://download.docker.com/linux/${ID}/gpg -o /etc/apt/keyrings/docker.asc &>/dev/null
	chmod a+r /etc/apt/keyrings/docker.asc
	
	cat > /etc/apt/sources.list.d/docker.sources << EOF
Types: deb
URIs: https://download.docker.com/linux/${ID}
Suites: ${VERSION_CODENAME}
Components: stable
Architecture: $( dpkg --print-architecture )  
Signed-by: /etc/apt/keyrings/docker.asc
EOF

	printf "Atualizando lista de pacotes.\n"
	apt-get update &>/dev/null
	printf "Instalando pacotes.\n"
	apt-get install docker-ce docker-ce-cli -y &>/dev/null

	printf "Docker instalado.\n"
else
	printf "Docker presente.\n"
fi
systemctl enable --now  docker.service
	
