[[ ! -d /var/log/push-server ]] && mkdir /var/log/push-server
chown web1:client0 /var/log/push-server

/usr/local/bin/push-server-multi configs pub
/usr/local/bin/push-server-multi configs sub

echo 'd /tmp/push-server 0770 web1 client0 -' > /etc/tmpfiles.d/push-server.conf
systemd-tmpfiles --remove --create

systemctl daemon-reload
systemctl --now enable push-server

kv2UTopYxfLSW9PMOFjyOamQQD5WU7NMPlsM7FelBf9QBIxBbYztNFapClXpf3Gp9i7XptX72rU2nFyNcBhUtQCgODqmzmQmfdXXPcHA98lkOUY3NyqCYNKocXmw5EAw
