#!/bin/bash

docker rm $(docker ps -a | grep Exited | awk '{print $1}')
docker rmi $(docker images | grep '<none>' | awk '{print $3}')

resp="registry.cn-shanghai.aliyuncs.com/fengfenghuo/server-nginx"

docker build -t $resp .

docker push $resp