echo https://stackoverflow.com/questions/36666246/docker-look-at-the-log-of-an-exited-container
echo It also works for stopped containers and captures the entire STDOUT and STDERR streams of the container's main process
docker logs temp_test


echo for the last fifty lines
docker logs --tail=50 temp_test 