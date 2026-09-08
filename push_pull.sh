ln -sf /opt/node_modules/push-server/etc/push-server /etc/push-server
cd /opt/node_modules/push-server
cp /etc/init.d/push-server-multi /usr/local/bin/push-server-multi
mkdir /etc/sysconfig
cp /etc/sysconfig/push-server-multi  /etc/sysconfig/push-server-multi
cp /etc/push-server/push-server.service  /etc/systemd/system/
ln -sf /opt/node_modules/push-server /opt/push-server
