#!/bin/bash

set -x
#DRYRUN=echo

DOCKER_USER=$(docker info | grep Username: | awk '{print $2}')
[ -n "${DOCKER_USER}" ] && DOCKER_USER=${DOCKER_USER}/

for dir in $(find . -type f -name Dockerfile); do
  dir=${dir#./}
  dir=${dir%/Dockerfile}
  echo "#### ${dir} ####"

  suite=${dir%%/*}
  target_arch=${dir#${suite}/}
  host_arch=${target_arch%/*}
  target_arch=${target_arch#${host_arch}/}
  #echo "suite=${suite}, host_arch=${host_arch}, target_arch=${target_arch}"
  ${DRYRUN} docker build --no-cache=true -t ${DOCKER_USER}ubuntu-sdk:${suite}-${host_arch}_${target_arch} ${dir}
done
