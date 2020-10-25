#!/bin/bash

COMPOSE="/home/ec2-user/td-site/docker-compose --no-ansi"
DOCKER="/usr/bin/docker"

cd /home/ec2-user/td-site/
$COMPOSE run certbot renew --dry-run && $COMPOSE kill -s SIGHUP nginx
$DOCKER system prune -af
