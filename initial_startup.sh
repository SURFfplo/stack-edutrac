

echo -e "${yellow}
# Initialize etis container
#############################################################################${nc}"
containerid="$(docker container ps -q -f 'name=etsis')"
echo $containerid
docker exec -i -w /var/www/html "$(docker container ps -q -f 'name=etsis')" chmod 755 config.php
docker exec -i -w /var/www/html "$(docker container ps -q -f 'name=etsis')" chmod 755 phinx.php
docker exec -i "$(docker container ps -q -f 'name=etsis')" chown -R apache:apache /var/www/html
docker exec -i -w /var/www/html "$(docker container ps -q -f 'name=etsis')" ./etsis core migrate
# ./fillcontainer.sh
echo -e "${green}Done....${nc}"

