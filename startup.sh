#!/bin/sh

# Initialize etis container
cd /data
cp htaccess.txt .htaccess
chmod 755 config.php
chmod 755 phinx.php
#chown -R apache:apache *
#./etsis core migrate

