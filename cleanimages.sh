echo "Cleaning ghost docker containers..."
docker ps -a | grep Exited | tr -s " " | cut -d " " -f1 | xargs docker rm

echo "Cleaning docker images with no tags"
docker images | grep "$1"  | tr -s " " " " | cut -d " " -f3 | xargs docker rmi
