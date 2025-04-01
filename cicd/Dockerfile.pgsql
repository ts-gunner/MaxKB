FROM swr.cn-north-4.myhuaweicloud.com/ddn-k8s/docker.io/postgres:16.4

# 安装 pgvector
RUN apt-get update && \
    apt-get install -y postgresql-16-pgvector && \
    rm -rf /var/lib/apt/lists/*

# 设置启动命令
CMD ["postgres"]
