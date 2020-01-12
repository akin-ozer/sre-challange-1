#!/usr/bin/env bash

docker build -t flaskapp .
docker tag flaskapp:latest eu.gcr.io/core-depth-264814/flaskapp
docker push eu.gcr.io/core-depth-264814/flaskapp