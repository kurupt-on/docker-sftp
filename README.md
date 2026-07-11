# docker-sftp

Script simples para implementar um servidor **sftp** via  **Docker**.

## Pré-requisitos

- Debian (11) ou Ubuntu (22.04)
- Docker: `docker-ce` e `docker-ce-cli`
- Pacote: `openssh-client`

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

### Alguns comandos

- **?**       -> Lista comados;
- **ls**      -> Lista arquivos;
- **get**     -> Baixa arquivos do servidor;
- **put**     -> Envia arquivos ao servidor;
- **exit**    -> Sai do ambiente ;

## Licença

Este projeto está sob a licença MIT.
