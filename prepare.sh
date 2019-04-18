#!/bin/bash

# create nfs mount
mkdir -p /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE-$STACK_VERSION/html
mkdir -p /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE-$STACK_VERSION/data/mysql
mkdir -p /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE-$STACK_VERSION/src

# write data
cp -a ./src/$STACK_SERVICE/* /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE-$STACK_VERSION/html
#cp -a ./src/* /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE-$STACK_VERSION/src
