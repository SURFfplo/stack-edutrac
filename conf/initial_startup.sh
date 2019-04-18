#!/bin/bash

# Initialize etis container
cd /var/www/html
chmod 755 config.php
chmod 755 phinx.php
chown -R apache:apache *
./etsis core migrate

