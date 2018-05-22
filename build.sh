#!/usr/bin/env bash

set -ex

[ "${DOCKER_SINK}" ] && {
  docker pull "${DOCKER_SINK}/centos:7"
  docker tag  "${DOCKER_SINK}/centos:7" "centos:7"
}

set -u

docker build -t "final/dind" -f "Dockerfile" .
