#!/bin/sh

mkdir -p guac/postgres
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --postgres > guac/initdb.sql
wget https://raw.githubusercontent.com/5ym/guacamole-traefik-swarm/main/compose.guac.yml
vim compose.guac.yml
docker stack deploy --with-registry-auth -c compose.guac.yml guac
