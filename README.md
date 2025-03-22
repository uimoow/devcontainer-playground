# Dockerfile Optimization: Steps & Checkpoints

## 1. How to Optimize Dockerfile

### 1.1 Reduce Unnecessary Layers
Combine multiple RUN commands into one. This makes fewer image layers and reduces image size.

```dockerfile
RUN apt-get update && apt-get install -y \
    package1 \
    package2 \
    package3
```

### 1.2 Use Cache Effectively
Place commands that change frequently (like COPY . .) at the end of the Dockerfile. This helps Docker cache earlier steps and speeds up builds.

### 1.3 Use Multi-Stage Build
Build your app in one stage and copy only what you need to the final image. This makes the image smaller and cleaner.

```dockerfile
# Build stage
FROM python:3.11 AS build
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt

# Final image
FROM python:3.11-slim
WORKDIR /app
COPY --from=build /app /app
CMD ["python", "app.py"]
```

## 2. Try the Optimized Dockerfile

### 2.1 Build Docker Images
Build the images before and after optimization.

```bash
$ docker build -t flask_app:before -f Dockerfile.before ..
$ docker build -t flask_app:after -f Dockerfile.after ..
```

Or, you can build and test images by switching between Git branches.

- Before optimization branch: feature/compose-flask-mysql
- After optimization branch: feature/flask_mysql_optimize

Example Steps:
```bash
$ cd .devcontainer/
$ git checkout feature/compose-flask-mysql
$ docker build -t flask_app:before -f Dockerfile ..

$ git checkout feature/flask_mysql_optimize
$ docker build -t flask_app:after -f Dockerfile ..
```

## 3. How to Check the Optimization Results

### 3.1 Check Image Size

Use docker images to compare image sizes before and after optimization.

```bash
$ docker images flask_app

REPOSITORY       TAG       IMAGE ID       CREATED          SIZE
flask_app        before    6d1e104f7809   2025-03-22       1.58GB
flask_app        after     2e363d04d47b   2025-03-22       331MB
```

### 3.2 Check Image Layers
Use docker inspect and jq to see the layers in the image. Fewer layers usually mean a simpler image.

```bash
$ docker inspect flask_app:before | jq '.[0].RootFS.Layers'
$ docker inspect flask_app:after | jq '.[0].RootFS.Layers'
```

Before Sample: 20 layers
```json
[
  "sha256:01c9a2a5f237...",
  "sha256:f8217d7865d2...",
  "sha256:4b017a36fd9c...",
  "sha256:d4a8a80ff53d...",
  "... more layers ...",
  "sha256:aa903d14fe74..."
]
```

After Sample: 9 layers
```json
[
  "sha256:1287fbecdfcc...",
  "sha256:e2f88fe30c9c...",
  "... more layers ...",
  "sha256:c0fe499df8e8..."
]
```