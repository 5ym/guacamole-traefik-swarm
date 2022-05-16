#!/bin/sh

mkdir -p guac/postgres
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --postgres > guac/initdb.sql
wget https://raw.githubusercontent.com/5ym/guacamole-traefik-swarm/main/guac-compose.yml
vim guac-compose.yml
docker stack deploy --with-registry-auth -c guac-compose.yml guac
