FROM golang:1.11

# I think we don't need to copy code to our repo because we need only image with exporter
# so let's clone it and build inside the image
WORKDIR /go/src/github.com/percona/mongodb_exporter
RUN git clone https://github.com/percona/mongodb_exporter.git && mv mongodb_exporter/* . && make build

# use busybox because promnetheus uses it for itself
# https://github.com/coreos/prometheus-operator/issues/2909
FROM quay.io/prometheus/busybox:latest
COPY --from=0 /go/src/github.com/percona/mongodb_exporter/bin/mongodb_exporter /bin/mongodb_exporter

EXPOSE 9216

ENTRYPOINT [ "/bin/mongodb_exporter" ]
