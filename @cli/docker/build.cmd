docker build --force-rm -t temp_test:latest dockerfile

echo https://stackoverflow.com/questions/17466699/how-do-i-build-a-dockerfile-if-the-name-of-the-dockerfile-isnt-dockerfile
docker build -t temp_test:latest -f dockerfile/dockerfile dockerfile