# Dockerfile for mirai-api-http v2

[Mirai](https://github.com/mamoe/mirai) 与 [mirai-api-http](https://github.com/mamoe/mirai) 的 Dockerfile

使用了 [Eclipse OpenJ9 JVM](https://www.eclipse.org/openj9/) 以减少内存占用。

## 使用方法

```bash
docker run --name mirai --restart=always -it -p <主机端口号>:8080 zhaozuohong/mah
```

连按 `Ctrl-P` `Ctrl-Q`，将容器转为后台运行。可通过 `docker logs mirai` 查看输出，或使用 `docker attach mirai` 再次连接容器。
