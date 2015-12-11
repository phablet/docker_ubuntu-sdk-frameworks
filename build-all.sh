#!/bin/bash

set -x

cd $(dirname ${BASH_SOURCE})

#DRYRUN=echo

for dir in $(find . -type f -name Dockerfile); do
  dir=${dir#./}
  dir=${dir%/Dockerfile}
  echo "#### ${dir} ####"

  suite=${dir%%/*}
  target_arch=${dir#${suite}/}
  host_arch=${target_arch%/*}
  target_arch=${target_arch#${host_arch}/}
  #echo "suite=${suite}, host_arch=${host_arch}, target_arch=${target_arch}"

  img_prefix=phablet/ubuntu-sdk-frameworks:${suite}
  img=${img_prefix}-${host_arch}-${target_arch}
  ${DRYRUN} docker build --no-cache=true -t ${img} ${dir} && \
    (
      if [ "${target_arch}" = "${host_arch}" ]; then
        ${DRYRUN} docker tag ${img} ${img_prefix}-${host_arch}
        if [ "${host_arch}" = amd64 ]; then
          ${DRYRUN} docker tag ${img} ${img_prefix}
        fi
      fi
    )
done
