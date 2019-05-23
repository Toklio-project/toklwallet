#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

url="https://github.com/Toklio-project/Toklio"
version="release-v0.14.0-toklwallet"

if [ ! -d "Toklio" ]; then
  git clone ${url} -b ${version}
  cd Toklio
  git submodule update --recursive --init
else
  cd Toklio
  git checkout ${version}
  git pull
  git submodule update --recursive --init
fi
