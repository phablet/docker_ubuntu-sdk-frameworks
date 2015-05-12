#!/bin/bash

set -x

cd $(dirname ${BASH_SOURCE})

#DRYRUN=echo

DOCKER_USER=$(docker info | grep Username: | awk '{print $2}')
[ -n "${DOCKER_USER}" ] && DOCKER_USER=${DOCKER_USER}/

for suite in `ls -d -1 *`; do
  echo "#### ${suite} ####"

  ${DRYRUN} docker build --no-cache=true -t ${DOCKER_USER}ubuntu-sdk:${suite} ${suite}
done
