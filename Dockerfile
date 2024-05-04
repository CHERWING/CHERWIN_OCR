# 使用更小的python基础镜像
FROM python:3.10-slim

# 设置工作目录
WORKDIR /app

# 将代码添加到镜像中
COPY . /app

# 设置 pip 源为阿里云 删除下方#号开启
# RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/

# 安装所需的包，然后清理缓存
RUN pip install --no-cache-dir flask ddddocr

# 暴露端口
EXPOSE 3721

# 设置启动命令
CMD ["python", "ocr_server.py"]
