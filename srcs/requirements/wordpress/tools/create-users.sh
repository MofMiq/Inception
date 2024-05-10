#!/bin/sh

if [ ! -f "/usr/local/bin/wp" ]; then

wget -O /usr/local/bin/wp https://github.com/wp-cli/builds/raw/gh-pages/phar/wp-cli-release.phar

chmod +x /usr/local/bin/wp

wp core install --allow-root --url=$DOMAIN_NAME --title="Marirodr site" --admin_user=$DB_USER --admin_password=$DB_PASS --admin_email="marina.rodriguez1357@gmail.com" --path="/var/www/html"

wp user create $WP_USER guest@example.com --role=author --user_pass=$WP_PASS --allow-root

#wp core install --allow-root --url=marirodr.42.fr --title="Marirodr site" --admin_user=marirodr --admin_password=wpass --admin_email="marina.rodriguez1357@gmail.com" --path="/var/www/html"

#wp user create guest guest@example.com --role=author --user_pass=1234 --allow-root

#wp option update siteurl $DOMAIN_NAME --allow-root --path=/var/www/html/
#wp option update home $DOMAIN_NAME --allow-root --path=/var/www/html/

#wp core language install en_US --allow-root
#wp site switch-language en_US --allow-root

fi

/usr/sbin/php-fpm82 -F
