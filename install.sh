#!/bin/bash

cd $(dirname $0)

## Installation Drupal
docker-compose run drush drush -y si --db-url=mysql://root:example@mariadb:3306/test

## Enable simpletest module 
docker-compose run drush drush -y en simpletest

## Enable writing for sites/default/files due to use of Apache webserver
docker-compose exec drupal bash -c "chmod a+w /var/www/html/sites/default/files"
