echo -i, --interactive                    Keep STDIN open even if not attached
echo -t, --tty                            Allocate a pseudo-TTY
echo -d, --detach                         Run container in background and print container ID
echo     --name string                    Assign a name to the container
echo -e, --env list                       Set environment variables
echo     --rm                             Automatically remove the container when it exits


echo Run with environment variables and remove after finished
docker run --rm -it -p 8080:8080/tcp -e HTTP_PROXY=http://ip:port -e HTTPS_PROXY=http://ip:port temp_test:latest

echo Run with name
docker run --name temp_test temp_test:latest
echo Run with name and enter terminal but stop container when exit
docker run --name temp_test -it temp_test:latest /bin/sh
echo Run with name and keep in background(detached mode)
docker run --name temp_test -d -it temp_test:latest /bin/sh

echo Run in detached mode
docker run -d -p 8000:8000 temp_test:latest

echo https://stackoverflow.com/questions/28212380/why-docker-container-exits-immediately
echo force the image to hang around
docker run -it --entrypoint=/bin/bash myimagename