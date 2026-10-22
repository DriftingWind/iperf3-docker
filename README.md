## iPerf3 使用 Alpine 打包的 Docker 映像

给不便于安装和运行二进制文件的系统（例如群晖 DSM）或想通过 Docker 部署服务端后台运行使用

同步推送到 [GHCR](https://github.com/DriftingWind/iperf3-docker/pkgs/container/iperf3) 和 [Docker Hub](https://hub.docker.com/r/driftingwind/iperf3)

增加 Gitea 工作流，推送到自托管 Container Registry

- stable 版本通常较旧 [(Package details)](https://pkgs.alpinelinux.org/package/v3.24/main/x86_64/iperf3)
```bash
sudo docker pull ghcr.io/driftingwind/iperf3:latest
```
或
```bash
sudo docker pull ghcr.io/driftingwind/iperf3:stable
```
- edge 版本通常跟随官方 [(Package details)](https://pkgs.alpinelinux.org/package/edge/main/x86_64/iperf3)
```bash
sudo docker pull ghcr.io/driftingwind/iperf3:edge
```
- 服务端参考 `docker-compose.yml`
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

- 服务端参考命令行
```bash
sudo docker run --rm -p 5201:5201 -p 5201:5201/udp -it ghcr.io/driftingwind/iperf3 -s 
```

- 客户端参考命令行
```bash
sudo docker run --rm -it ghcr.io/driftingwind/iperf3 -c <host>
```
## 链接
- iPerf.fr (https://iperf.fr/)
- ESnet (https://software.es.net/iperf/)
- 官方仓库 (https://github.com/esnet/iperf)
