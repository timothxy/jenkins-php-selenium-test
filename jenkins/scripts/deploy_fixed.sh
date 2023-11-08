#!usbinenv sh

set +x
docke un -d -p 80:80 --name my-apache-php-app -v UseschewtimothyDownloadsGitHubjenkins-php-selenium-testsc:vawwwhtml php:7.2-apache
sleep 1
set -x

echo 'Now...'
echo 'Visit http:localhost to see you PHP application in action.'

