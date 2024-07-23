#!/bin/bash

echo "Stopping Spring Boot application..."

# 애플리케이션이 실행 중이면 중지
if pgrep -f backend-0.0.1-SNAPSHOT.jar > /dev/null
then
    pkill -f backend-0.0.1-SNAPSHOT.jar
    echo "Application stopped successfully."
else
    echo "No application running."
fi
