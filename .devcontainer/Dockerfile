FROM python:3.11-slim AS build

WORKDIR /workspace/src

COPY requirements.txt ./
RUN apt-get update && apt-get install -y \
    gcc \
    pkg-config \
    default-libmysqlclient-dev \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir -r requirements.txt

FROM python:3.11-slim

WORKDIR /workspace

RUN apt-get update && apt-get install -y \
    default-libmysqlclient-dev \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

COPY --from=build /usr/local/lib/python3.11/site-packages/ /usr/local/lib/python3.11/site-packages/
COPY --from=build /usr/local/bin/ /usr/local/bin/
COPY --from=build /workspace/src ./src

RUN useradd -m vscode && \
    chown -R vscode:vscode /workspace
USER vscode

WORKDIR /workspace/src
EXPOSE 5000
