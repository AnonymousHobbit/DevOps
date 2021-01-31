#!/bin/bash
cd /app
git <REPO> /app/dir
docker login -u <USERNAME>
docker build -t <USERNAME>/<DOCKER REPO NAME>:<TAG> /app/dir
docker push <USERNAME>/<DOCKER REPO NAME>:<TAG>
