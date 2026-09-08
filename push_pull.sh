cat /dev/urandom |tr -dc A-Za-z0-9 | head -c 128

В /etc/sysconfig/push-server-multi ставим:

USER=web1
GROUP=client0
SECURITY_KEY="kv2UTopYxfLSW9PMOFjyOamQQD5WU7NMPlsM7FelBf9QBIxBbYztNFapClXpf3Gp9i7XptX72rU2nFyNcBhUtQCgODqmzmQmfdXXPcHA98lkOUY3NyqCYNKocXmw5EAw"
RUN_DIR=/tmp/push-server
REDIS_SOCK=/run/redis/redis.sock

А в /etc/systemd/system/push-server.service:

[Service]
User=web1
Group=client0
ExecStart=/usr/local/bin/push-server-multi systemd_start
ExecStop=/usr/local/bin/push-server-multi stop
