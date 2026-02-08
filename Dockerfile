FROM alpine

RUN apk add --no-cache iperf3

EXPOSE 5201

ENTRYPOINT ["iperf3"]
