# 使用官方 registry 基础镜像
FROM registry:2

# 可选：添加自定义配置文件（如果需要）
# COPY config.yml /etc/docker/registry/config.yml

# 暴露默认端口
EXPOSE 5000