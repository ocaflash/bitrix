sudo apt update && sudo apt upgrade -y
apt install -y php8.4-ldap php8.4-memcached memcached
systemctl restart php8.4-fpm
