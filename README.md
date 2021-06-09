# guacamole-swarm

compose file of guacamole for docker swarm(use traefik)
## How to use

1. generate init data
```sh
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --postgres > guac/initdb.sql
```
2. deploy swarm
```sh
docker stack deploy --with-registry-auth -c guac-compose.yml guac
```
