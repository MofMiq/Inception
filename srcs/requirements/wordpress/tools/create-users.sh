#!/bin/sh

if [ ! -f "/usr/local/bin/wp" ]; then

wget -O /usr/local/bin/wp https://github.com/wp-cli/builds/raw/gh-pages/phar/wp-cli-release.phar

chmod +x /usr/local/bin/wp

wp core install --allow-root --url=$DOMAIN_NAME --title="Marirodr site" --admin_user=$DB_USER --admin_password=$DB_PASS --admin_email="marina.rodriguez1357@gmail.com" --path="/var/www/html"

wp user create $WP_USER guest@example.com --role=author --user_pass=$WP_PASS --allow-root


fi

/usr/sbin/php-fpm82 -F
