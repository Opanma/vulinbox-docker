# 使用 Alpine 作为基础镜像
FROM alpine:latest

# 安装 ping, ifconfig 和 bash 所需的包
RUN apk update && apk add iputils net-tools bash

# 设置工作目录
WORKDIR /opt

# 将本地的 vulinbox_linux_amd64 文件复制到容器内的 /opt 目录
COPY vulinbox_linux_amd64 /opt/

# 给 vulinbox_linux_amd64 文件赋予执行权限
RUN chmod +x /opt/vulinbox_linux_amd64

# 设置容器启动时执行的命令
CMD ["/opt/vulinbox_linux_amd64", "--nohttps", "--host", "0.0.0.0", "--port", "8787"]

