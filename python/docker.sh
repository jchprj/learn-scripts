# https://hub.docker.com/_/python

docker run -it -d --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp python:3
docker exec -it my-running-script pip install requests
docker exec -it my-running-script python HelloWorld.py