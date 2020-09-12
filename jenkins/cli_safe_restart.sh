# http://localhost:8080/cli/
wget -nc http://localhost:8080/jnlpJars/jenkins-cli.jar
java -jar jenkins-cli.jar -s http://127.0.0.1:8080/ -webSocket safe-restart