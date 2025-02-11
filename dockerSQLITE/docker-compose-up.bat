docker container stop pyscada nginx
docker system prune -a -f
docker builder prune -a -f
docker volume prune -a -f
docker pull python
docker pull nginx
docker compose up -d