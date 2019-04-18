#!/bin/bash

export STACK_NETWORK=dev-net
export STACK_SERVICE=sis
export STACK_VERSION=0.1
export STACK_REPOSITORY=eduTrac-SIS

# init
./init.sh

# prepare
./prepare.sh

# go
docker stack deploy -c docker-compose.yml $STACK_SERVICE

