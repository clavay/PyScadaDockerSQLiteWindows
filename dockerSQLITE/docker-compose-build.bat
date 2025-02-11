docker container stop pyscada nginx
docker system prune -a -f
docker builder prune -a -f
docker volume prune -a -f
docker compose build --progress=plain