#!/bin/sh

podman build -t mylinbpq:latest .

# need capabilities
#CAP_NET_ADMIN=ep CAP_NET_RAW=ep CAP_NET_BIND_SERVICE=ep
podman run --cap-add=CAP_NET_ADMIN --cap-add=CAP_NET_RAW --cap-add=CAP_NET_BIND_SERVICE -it -v ./bpq:/linbpq/ mylinbpq:latest


