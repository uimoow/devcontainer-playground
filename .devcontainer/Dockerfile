FROM mcr.microsoft.com/devcontainers/python:latest
WORKDIR /workspace

COPY .devcontainer/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ ./src

EXPOSE 5000
ENV FLASK_APP=src/app.py
ENV FLASK_ENV=development
