#docker swarm init
#docker network create monitor -d overlay --attachable
#docker stack deploy -c docker-compose.yml monitor --with-registry-auth --resolve-image always
docker-compose down
docker-compose up -d

