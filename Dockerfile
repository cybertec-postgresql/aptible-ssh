FROM debian:buster

RUN set -eux; \
	apt-get update -y && apt-get install -y openssh-client openssh-server; \
	sed -i "/#PermitRootLogin/c\PermitRootLogin yes" /etc/ssh/sshd_config; \
	mkdir /run/sshd;

COPY entrypoint.sh /

CMD ["sh", "-c", "/entrypoint.sh"]