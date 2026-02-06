iPerf3 使用 Alpine 打包的 Docker 映像

给不便于安装和运行 binary 的系统（例如群晖 DSM）使用

```bash
sudo docker pull ghcr.io/driftingwind/iperf3
```

```yaml
services:
  iperf3:
    image: ghcr.io/driftingwind/iperf3
    container_name: iperf3
    restart: unless-stopped
    ports:
      - 5201:5201
      - 5201:5201/udp
    command: -s
```
