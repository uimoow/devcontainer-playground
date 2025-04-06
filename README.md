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
■ Note:
By default, make test runs pytest inside the app container using docker compose exec.
In CI environments, the -T option is automatically used to disable pseudo-TTY allocation (for smoother automated runs).
If you're running this locally and want to run interactively, you can add the -it option like this:

```bash
make test EXEC_OPTS="-it"
```

### 4. Run lint check

```bash
make lint
```

### 5. Stop the app

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

This project uses **GitHub Actions** to run tests and lint checks automatically.

### CI Steps:

1. **MySQL** service is started using Docker.
2. A `.env` file is created from GitHub Secrets.
3. Docker containers are built and started.
4. Tests are run using `pytest`.
5. Lint checks are performed using `flake8`.
6. Containers are stopped after tests and lint checks.

### Trigger:

- Push to `feature/ci_linter` or `feature/ci` branches
- Or run manually from GitHub (`workflow_dispatch`)

### CI Workflow file: `.github/workflows/ci.yaml`（pytest）

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

### CI Workflow file: `.github/workflows/lint.yaml` (Lint Check - `flake8`)

```yaml
on:
  push:
    branches:
      - feature/ci_linter
    paths:
      - '**.py'
  pull_request:
    paths:
      - '**.py'
  workflow_dispatch:
```

The job runs these steps:

```bash
make build
make lint
```