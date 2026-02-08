FROM alpine

RUN apk add --no-cache iperf3

EXPOSE 5201 5201/udp

ENTRYPOINT ["iperf3"]
