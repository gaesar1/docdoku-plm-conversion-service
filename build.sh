#!/usr/bin/env bash

IMAGE_NAME=docdoku/docdoku-plm-conversion-service
VERSION=$(mvn -q -N org.codehaus.mojo:exec-maven-plugin:3.0.0:exec \
    -Dexec.executable='echo' \
    -Dexec.args='${project.version}')

mvn clean install && \
docker build -f Dockerfile.jvm -t $IMAGE_NAME:latest .
docker tag $IMAGE_NAME:latest $IMAGE_NAME:$VERSION
