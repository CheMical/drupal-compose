#!/bin/bash

cd $(dirname $0)

docker-compose exec -u www-data drupal bash -c "php /var/www/html/scripts/run-tests.sh $*"
