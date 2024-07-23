#!/bin/bash

# 애플리케이션이 실행 중이면 중지 (이미 실행 중인 경우 방지)
if pgrep -f backend-0.0.1-SNAPSHOT.jar > /dev/null
then
    echo "Stopping existing application..."
    pkill -f backend-0.0.1-SNAPSHOT.jar
    sleep 5
fi

# 애플리케이션 시작
echo "Starting Spring Boot application..."
nohup java -jar /build/libs/backend-0.0.1-SNAPSHOT.jar > /deploy/application.log 2>&1 &

echo "Application started successfully."
