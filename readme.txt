docker build -t foo .
docker run -d -p 80:80 -p 10000:10000 foo

docker exec -i -t ${container_id} bash