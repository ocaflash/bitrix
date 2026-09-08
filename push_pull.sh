cat /dev/urandom |tr -dc A-Za-z0-9 | head -c 128

GROUP=web1-client0
SECURITY_KEY="kv2UTopYxfLSW9PMOFjyOamQQD5WU7NMPlsM7FelBf9QBIxBbYztNFapClXpf3Gp9i7XptX72rU2nFyNcBhUtQCgODqmzmQmfdXXPcHA98lkOUY3NyqCYNKocXmw5EAw"
RUN_DIR=/tmp/push-server
REDIS_SOCK=/run/redis/redis.sock
