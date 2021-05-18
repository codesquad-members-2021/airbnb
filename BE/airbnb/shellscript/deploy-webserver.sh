#!bin/bash

# real deploy script

IP=`curl -s 169.254.169.254/latest/meta-data/public-ipv4`

REPOSITORY=/home/ubuntu/airbnb

CK=`aws s3 ls s3://shion-codesquad/airbnb.jar`

if [[ ! $CK ]]; then
	echo "S3 버킷에 올라온 빌드 파일을 확인할 수 없으므로 종료합니다."
	exit 0
fi

echo "> Local에서 새로 빌드된 프로젝트를 감지했습니다."

DETECT=":cloud: 로컬에서 새로 빌드된 프로젝트를 감지했습니다."

curl -X POST --data-urlencode "payload={\"text\": \"$DETECT\"}" https://hooks.slack.com/services/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

echo "> S3에 업로드된 빌드 파일 다운로드 시작"

aws s3 cp s3://shion-codesquad/airbnb.jar $REPOSITORY/

echo "> 빌드 파일 다운로드 완료"

echo "> 현재 구동중인 애플리케이션 pid 확인"

CURRENT_PID=$(pgrep -f airbnb)

echo "$CURRENT_PID"

if [ -z $CURRENT_PID ]; then
	echo "> 현재 구동중인 애플리케이션이 없으므로 종료하지 않습니다."
else
	echo "> kill -2 $CURRENT_PID"
	kill -2 $CUREENT_PID
	sleep 5
fi

echo "> 배포를 시작합니다. `date`"

START=":mostly_sunny: $IP 자동 배포를 시작합니다."

curl -X POST --data-urlencode "payload={\"text\": \"$START\"}" https://hooks.slack.com/services/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

JAR_NAME=$(ls $REPOSITORY/ | grep 'airbnb' | tail -n 1)

nohup java -jar $REPOSITORY/$JAR_NAME &

aws s3 rm s3://shion-codesquad/airbnb.jar

echo "> 배포를 완료했습니다. `date`"

END=":sunny: 성공적으로 배포되었습니다! http://$IP/"

curl -X POST --data-urlencode "payload={\"text\": \"$END\"}" https://hooks.slack.com/services/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
