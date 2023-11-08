#!/usr/bin/env sh

set +x
docker run -d -p 80:80 --network jenkins --name my-apache-php-app -v jenkins-data:/data -v /var/www/html:/var/www/html php:7.2-apache && docker exec -it my-apache-php-app ln -s var/jenkins-home/workspace/jenkins-php-selenium-test/src /var/www/html
sleep 1
set -x

echo 'Now...'
echo 'Visit http://192.168.68.106 to see your PHP application in action.'

