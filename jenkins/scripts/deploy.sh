#!/usr/bin/env sh

set +x
docker run -d -p 80:80 --name my-apache-php-app -v /Users/chewtimothy/Downloads/GitHub/jenkins-php-selenium-test\\src:/var/www/html php:7.2-apache
sleep 1

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'

