ARG binary=hello2

FROM nuclio/uhttpc:0.0.1-amd64 as uhttpc
FROM nuclio/processor:0.7.1-amd64 as builder
FROM ubuntu:18.04

COPY --from=builder /home/nuclio/bin/processor /usr/local/bin/processor
COPY --from=uhttpc /home/nuclio/bin/uhttpc /usr/local/bin/uhttpc
COPY ${binary} /usr/local/bin/${binary}
# COPY platform.yaml  /etc/nuclio/configs/platform/platform.yaml

# Readiness probe
HEALTHCHECK --interval=1s --timeout=3s CMD /usr/local/bin/uhttpc --url http://127.0.0.1:8082/ready || exit 1

# Run processor with configuration and platform configuration
CMD [ "processor" ]
