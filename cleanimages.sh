echo "Cleaning ghost docker containers..."
docker ps -a | grep -v "CONTAINER ID" | grep Exited | tr -s " " | cut -d " " -f1 | xargs docker rm

echo "Cleaning docker images with no tags"
docker images | grep-v "REPOSITORY" | grep "$1"  | tr -s " " " " | cut -d " " -f3 | xargs docker rmi
