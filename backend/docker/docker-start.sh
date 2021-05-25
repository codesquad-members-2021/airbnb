PYRO_DB=`docker ps -aq --filter ancestor=pyrodb:1.0`

docker stop $PYRO_DB

docker rm $PYRO_DB

docker rmi pyrodb:1.0

docker-compose up --build

docker-compose up -d
