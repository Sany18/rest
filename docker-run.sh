docker build -t rest-image .
docker rmi $(docker images -f dangling=true -q) -f || true
docker stop rest-container || true
docker run -dp 3000:3000 --name rest-container rest-image
