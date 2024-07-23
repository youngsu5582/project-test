#!/bin/bash

# 업데이트 패키지 리스트 및 필수 패키지 설치 (예: curl, unzip)
yum update -y
yum install -y java-17-openjdk

echo "Dependencies installed successfully."
