#!/bin/bash

# First Param: binary that we want to copy
binary=$1
# Second Param: Default Attributes we want to execute with. Note this is just one work, so super sloppy right now
arguments=$2
# Third Param: Content Type
contentType=$3

runtimeAttrs='{"arguments": "'$arguments'", "responseHeaders": {"content-type": "'$contentType'"}}'
docker build --build-arg binary=$binary -t $binary .   

nuctl deploy $binary \
--run-image $binary:latest \
--runtime shell \
--handler $binary \
--triggers '{ "http": { "maxWorkers": 16, "kind": "http", "workerAvailabilityTimeoutMilliseconds": 100000, "attributes": {"port": 1338} } }' \
--runtime-attrs "$runtimeAttrs" \
--platform-config '{"kind":"local","webAdmin":{"enabled":false,"listenAddress":":8081"},"healthCheck":{"enabled":true,"listenAddress":":8082"},"logger":{"sinks":{"stdout":{"kind":"stdout"}},"system":[{"level":"debug","sink":"stdout"}],"functions":[{"level":"debug","sink":"stdout"}]},"metrics":{}}'