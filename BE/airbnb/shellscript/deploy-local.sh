#!bin/bash

PROJECT=airbnb/BE/airbnb

REPOSITORY=/Users/shion/git/$PROJECT

cd $REPOSITORY/

echo "> Local에서 build를 시작합니다"

./gradlew build --exclude-task test

echo ">Build가 완료되었습니다. jar파일을 S3에 업로드 합니다."

aws s3 cp $REPOSITORY/build/libs/airbnb-0.0.1-SNAPSHOT.jar s3://shion-codesquad/airbnb.jar

echo "S3에 업로드 완료"
