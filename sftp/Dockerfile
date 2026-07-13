FROM	alpine:latest

RUN	apk update && apk add --no-cache openssh bash shadow

COPY	init.sh /init.sh
COPY	sftp-group.conf /etc/ssh/sshd_config.d/sftp-group.conf

RUN	chmod +x /init.sh
RUN	ssh-keygen -A
EXPOSE	22

ENTRYPOINT ["/init.sh"]

CMD ["sh"]
