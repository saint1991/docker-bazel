#!/bin/bash

DIR="$( cd "$( dirname "$0" )" && pwd )"

VERSIONS=(
    '0.14.1'
    '0.14.0'
    '0.13.1'
    '0.12.0'
    '0.11.1'
    '0.10.1'
    '0.9.0'
    '0.8.1'
    '0.7.0'
    '0.6.1'
    '0.5.4'
)

for version in ${VERSIONS[@]}; do
    version_dir="${DIR}/${version}"
    mkdir -p ${version_dir}
    sed -e "s/%version/$version/g" Dockerfile.template > "${version_dir}/Dockerfile"
done