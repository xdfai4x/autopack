# 使用官方 Python 作为基础镜像
FROM python:3.9

# 设置工作目录
WORKDIR /app

# 复制依赖文件到工作目录
COPY requirements.txt ./

# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 复制项目文件到工作目录
COPY . .

# 暴露端口
EXPOSE 8000

# 启动 FastAPI 应用
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]