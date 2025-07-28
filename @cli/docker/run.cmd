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

echo https://medium.com/@hiivaibhav1/to-run-the-mysql-5-7-image-using-docker-and-access-it-from-your-rails-project-3be4bb8fa178
docker run --name mysql-container -e MYSQL_ROOT_PASSWORD=your_password -p 3306:3306 -d mysql:5.7

echo https://stackoverflow.com/questions/45993591/mount-volumes-for-mysql-container
sudo docker run -e MYSQL_ROOT_PASSWORD=root -p 3397:3306 -v /tmp/mysql/:/var/lib/mysql -d mysql:5.7