FROM mcr.microsoft.com/devcontainers/python:latest
WORKDIR /workspace

COPY .devcontainer/requirements.txt ./

RUN apt-get update && apt-get install -y \
    default-libmysqlclient-dev \
    build-essential \
    python3-dev \
    && apt-get clean \
    && pip install --no-cache-dir -r requirements.txt

EXPOSE 5000
