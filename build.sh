#!/usr/bin/env bash

#docker build --build-arg USERID=$(id -u) --build-arg GROUPID=$(id -g) -f Dockerfile.cpp -t docdokuplm/openjdk8-gcc . && \
mvn clean install && \
docker build -f Dockerfile.jvm -t docdoku/docdoku-plm-conversion-service .
