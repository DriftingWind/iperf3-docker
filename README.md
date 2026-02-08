iPerf3 使用 Alpine 打包的 Docker 映像

给不便于安装和运行 binary 的系统（例如群晖 DSM）使用

版本 3.19 (3.19.1-r1 2025-10-18 08:34:04)
```bash
sudo docker pull ghcr.io/driftingwind/iperf3
```
版本 3.20 (3.20-r0 2026-02-05 21:45:58)
```bash
sudo docker pull ghcr.io/driftingwind/iperf3:edge
```
服务端参考 `docker-compose.yml`
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

服务端参考命令行
```
sudo docker run --rm -p 5201:5201 -p 5201:5201/udp -it ghcr.io/driftingwind/iperf3 -s 
```

客户端参考命令行
```
sudo docker run --rm -it ghcr.io/driftingwind/iperf3 -c <host>
```