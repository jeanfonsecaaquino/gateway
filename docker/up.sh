docker build -t gateway -f docker/Dockerfile .
docker-compose -f docker/docker-compose.yml -p gateway up -d