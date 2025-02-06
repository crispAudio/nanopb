#!/bin/bash
docker build --tag "nanopb-build" ./docker
docker run --user=${MY_UID}:${MY_GID} --volume=./config:/tmp/config --volume=./generator/:/tmp/generator "nanopb-build" /tmp/start.sh
