FROM	alpine:latest

COPY	init.sh /init.sh

COPY	sftp-group.conf /etc/ssh/sshd-conf.d/sftp-group.conf

RUN	chmod +x /init.sh

ENTRYPOINT ["/init.sh"]

CMD ["sh"]
