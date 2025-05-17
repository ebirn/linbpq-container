
FROM debian:bookworm-slim


# ADD linbpq linbpq

RUN  apt update && apt install -y make gcc libconfig-dev libminiupnpc-dev miniupnpc libpcap-dev libz-dev libjansson-dev libpaho-mqtt-dev sudo libcap2-bin git

# yeah, this should be pinned to a tag or whatever
# upstream repo might be slow or unavail
# RUN git clone https://vps1.g8bpq.net/linbpq
# github mirror
RUN git clone https://github.com/g8bpq/linbpq.git
 

WORKDIR linbpq
RUN make -j


