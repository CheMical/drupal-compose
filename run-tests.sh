#!/bin/bash

cd $(dirname $0)

## Execute script for running test as user www-data and append parameters
docker-compose exec -T -u www-data drupal bash -c "php /var/www/html/scripts/run-tests.sh $*"
