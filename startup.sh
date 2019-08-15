#!/bin/bash

# sleep
sleep 120

# Initialize etis container
cd /var/www/html
cp htaccess.txt .htaccess
chmod 755 config.php
chmod 755 phinx.php
chown -R apache:apache *
./etsis core migrate

