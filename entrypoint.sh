#!/bin/bash

set -e

echo "root:${LOCAL_PASS}" | chpasswd
mkdir -p /root/.ssh/
echo "${SSH_KEY}" > /root/.ssh/id_rsa
chmod 0400 /root/.ssh/id_rsa
/usr/sbin/sshd -D &

while true 
do
	ssh -o StrictHostKeyChecking=no -N -R \
		${REMOTE_PORT}:localhost:22 ${REMOTE_USER}@${REMOTE_HOST}
	sleep 15
done