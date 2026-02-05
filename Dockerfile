# 允许从外部传入 Alpine 版本，默认为 3.23.3
ARG ALPINE_VER=3.23.3
FROM alpine:${ALPINE_VER}

RUN apk add --no-cache iperf3

# 这一步是为了方便在 Action 中提取 iperf3 的精确版本
RUN iperf3 -v | head -n 1 | awk '{print $2}' > /iperf3_version

EXPOSE 5201
ENTRYPOINT ["iperf3"]
