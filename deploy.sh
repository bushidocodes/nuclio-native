#!/bin/bash

# First Param: binary that we want to copy
binary=$1
# Second Param: Default Attributes we want to execute with
arguments=$2

runtimeAttrs='{"arguments": "'$arguments'"}'
docker build --build-arg binary=$binary -t $binary .   
nuctl deploy $binary --run-image $binary:latest \
--runtime shell \
--handler $binary \
--runtime-attrs "$runtimeAttrs"