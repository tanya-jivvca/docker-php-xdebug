docker build -t foo .
docker run -d -p 80:80 foo

docker exec -i -t ${container_id} bash