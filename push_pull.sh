[[ ! -d /var/log/push-server ]] && mkdir /var/log/push-server
chown web1:client0 /var/log/push-server

/usr/local/bin/push-server-multi configs pub
/usr/local/bin/push-server-multi configs sub

echo 'd /tmp/push-server 0770 web1 client0 -' > /etc/tmpfiles.d/push-server.conf
systemd-tmpfiles --remove --create

systemctl daemon-reload
systemctl --now enable push-server
