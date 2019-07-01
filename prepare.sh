#!/bin/bash

# clean mounts
rm -rf /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/html
rm -rf /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/conf
rm -rf /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/src
rm -rf /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/tmp

# create nfs mount
mkdir -p /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/html
mkdir -p /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/conf
mkdir -p /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/src
mkdir -p /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/tmp
mkdir -p /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/data/mysql

# write data
cp -a ./src/$STACK_SERVICE/* /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/html
cp -a ./src/* /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/src
cp -a ./startup.sh /mnt/nfs/nfsdlo/$STACK_NETWORK/$STACK_SERVICE/$STACK_VERSION/tmp
