docker stop pyrodb

docker rm pyrodb

if [[ "$(docker images -q pyrodb:1.0)" == "" ]]; then
    docker build --tag pyrodb:1.0 .
fi

docker run -d -p 12345:3306 --name=pyrodb pyrodb:1.0
