# 基于官方 registry 镜像构建（保留其原生启动逻辑）
FROM registry:2

# 暴露 registry 默认端口（Render 会自动映射）
EXPOSE 5000

# 无需自定义 CMD/ENTRYPOINT，复用官方镜像的启动逻辑
# 官方 registry:2 镜像已内置 /entrypoint.sh 启动脚本，无需手动指定