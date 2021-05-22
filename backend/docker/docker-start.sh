PYRO_DB=`docker ps -aq --filter ancestor=pyrodb:1.0`

docker stop $PYRO_DB

docker rm $PYRO_DB

docker rmi pyrodb:1.0

docker build --platform linux/x86_64  --tag pyrodb:1.0 .

docker run -d -p 12345:3306 --name=pyrodb pyrodb:1.0
