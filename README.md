# docker-mirror-render
version: '3'
services:
  docker-mirror:
    image: registry:2
    ports:
      - "80:5000"
    environment:
      # 核心配置：指向 Docker Hub 官方仓库
      REGISTRY_PROXY_REMOTEURL: https://registry-1.docker.io
      # 允许删除过期镜像，防止存储占满
      REGISTRY_STORAGE_DELETE_ENABLED: "true"
      # 缓存超时时间（默认24小时）
      REGISTRY_PROXY_TIMEOUT: "86400"
    volumes:
      # Render 免费实例提供临时存储，持久化需升级付费，个人使用临时存储足够
      - ./registry-data:/var/lib/registry
    restart: always