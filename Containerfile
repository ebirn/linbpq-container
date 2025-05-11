
FROM debian:bookworm-slim


# ADD linbpq linbpq

RUN  apt update && apt install -y make gcc libconfig-dev libminiupnpc-dev miniupnpc libpcap-dev libz-dev libjansson-dev libpaho-mqtt-dev sudo libcap2-bin

# yeah, this should be pinned to a tag or whatever
RUN git clone git://vps1.g8bpq.net/linbpq
 

WORKDIR linbpq
RUN make -j


