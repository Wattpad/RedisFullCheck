#!/usr/bin/env bash
set -o errexit


docker build -t full-check-builder .
docker run -ti --rm -v `pwd`:`pwd` -w `pwd` full-check-builder ./build.sh
