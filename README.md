# 镜像仓库使用方法

[**images.txt**](https://github.com/fuzhengwei/docker-image-pusher/blob/main/images.txt)

```java
mysql:8.0.32
phpmyadmin:5.2.1
redis:6.2
redis-commander:0.8.0
rabbitmq:3.12.9
rocketmq:5.1.0
skywalking-oap-server:9.3.0
skywalking-ui:9.3.0
rocketmq:5.1.0
nginx:1.25.1
prometheus:2.47.2
grafana:10.2.0
canal-server:v1.1.7
canal-adapter:v1.1.6
elasticsearch:7.17.14
kibana:7.17.14
zookeeper:3.9.0
xxl-job-aarch64:2.4.0
xxl-job-admin:2.4.0
nacos-server:v2.2.3-slim
kafka:3.7.0
kafka-eagle:3.0.2
logstash:7.14.2
registry:latest
portainer:latest
```

1. 在 `images.txt` 添加你需要的镜像（PR方式提交），你可以从 [https://hub.docker.com/](https://hub.docker.com/) 搜索需要的镜像后添加。
2. 新添加镜像，需要等待1分钟同步。之后通过命令 `docker pull registry.cn-hangzhou.aliyuncs.com/xfg-studio/mysql` 拉取你需要的镜像，如果有版本号，可以添加。如；`mysql:8.0.32`

---

- 参考仓库 [@tech-shrimp/docker_image_pusher](https://github.com/tech-shrimp/docker_image_pusher)

## 解决需要使用域名的问题

需求: 有些地方使用域名全路径去拉取镜像太麻烦了, 写死到各个地方也不太好

通过执行脚本将镜像拉取到本地并打标好, 实现解耦, 减少维护成本

[脚本内容](./shells/pull_and_tag.sh)

```shell
## 执行脚本, 按提示操作
bash pull_and_tag.sh
```
