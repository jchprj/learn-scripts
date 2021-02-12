docker images

echo https://stackoverflow.com/questions/23935141/how-to-copy-docker-images-from-one-host-to-another-without-using-a-repository
docker save -o temp_test.tar hello-world:latest
docker load -i temp_test.tar