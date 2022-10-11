# tuic-docker

基于tuic开源项目 [tuic](https://github.com/EAimTY/tuic) 构建的镜像

具体用法和说明文档可以参考[tuic官方文档](https://github.com/EAimTY/tuic/blob/dev/README.md)

DockerHub地址: [monkeyray/tuic](https://hub.docker.com/r/monkeyray/tuic)

---

## 构建状态

[![构建状态](https://monkeyray.coding.net/badges/github/job/1556032/main/build.svg)](https://monkeyray.coding.net/p/github/ci/job)

---

## 使用方法

1.安装docker-ce和docker-compose

2.根据[tuic官方文档](https://github.com/EAimTY/tuic/blob/dev/README.md)说明编写并修改config.json

3.下载docker-compose.yaml文件

```bash
curl -OL https://github.com/MR-MonkeyRay/tuic-docker/blob/main/docker-compose.yaml
```

4.修改docker-compose.yaml中volumes部分的文件路径
#### 冒号(:)左侧为宿主机路径,右侧为容器内部路径
#### 如果你还是不懂,那就两边都写和config.json中配置一样的路径

5.启动服务

```bash
docker-compose up -d
```

6.使用客户端连接并观察日志输出是否正常

```bash
docker-compose logs -f
```
或者
```bash
docker logs tuic -f
```