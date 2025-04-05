## Env Setup (with Makefile)

You can use `make` commands to start the app, run tests, and stop the containers.

### 1. Build Docker containers

```bash
make build
```

### 2. Start the app (Flask + MySQL)

```bash
make up
```

### 3. Run tests

```bash
make test
```

### 4. Stop the app

```bash
make down
```

### Optional Make Commands

These are helpful for debugging.

#### Check container logs

```bash
make logs
```

#### Show container status

```bash
make ps
```

## CI Setup (GitHub Actions)

This project uses **GitHub Actions** to run tests automatically when you push to the `feature/ci` branch.

### CI Steps:

1. **MySQL** service is started using Docker.
2. A `.env` file is created from GitHub Secrets.
3. Docker containers are built and started.
4. Tests are run using `pytest`.
5. Containers are stopped after tests.

### Trigger:

- Push to `feature/ci`
- Or run manually from GitHub (`workflow_dispatch`)

### CI Workflow file: `.github/workflows/ci.yaml`

```yaml
on:
  push:
    branches:
      - feature/ci
  workflow_dispatch:
```

The job runs these steps:

```bash
make build
make up
make test
make down
```