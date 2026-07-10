# docker-sftp

Script simples para implementar um servidor **sftp** via  **Docker**.

## Pré-requisitos

- Debian (ao menos o 11)
- Docker: `docker-ce` e `docker-ce-cli`
- Pacotes: `openssh-client`

## Como usar

### Clonar

1. Clone o repositório:
```bash
git clone https://github.com/kurupt-on/docker-sftp.git
```
2. Entre do diretório:
```bash
cd docker-sftp
```

### Executar

1. Execute o script `setup.sh`:
```bash
./setup.sh
```
2. Informe os valores:
- **Porta do Host**       -> Porta no host associada à porta do serviço dentro container;
- **Nome do Container**   -> Nome para diferenciar o container;
- **Nome do Usuário**     -> Nome para acessar o servidor;
- **Senha do Usuário**    -> Senha para acessar o servidor;

3. Verifique o container:
```bash
docker ps
```
### Acessar

1. Execute: `sftp -P [PORT] [USER]@localhost`
2. Digite a senha escolhida.

## Comandos básicos

- **?**       -> lista comados;
- **ls**      -> lista arquivos;
- **get**     -> Pega arquivos do servidor;
- **put**     -> envia arquivos ao servidor; 


