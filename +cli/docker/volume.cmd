echo How to access files outside a Docker container
echo https://flaviocopes.com/docker-access-files-outside-container/
echo Bind Mounts and Volumes
echo using the -v (same as --volume) flag when you run the container with docker run

docker volume create temp_test
docker volume ls
docker volume inspect temp_test
docker volume rm temp_test

echo Remove all
echo docker volume prune
echo docker system prune --volumes