# devcondevcontainer-playground

## CI with GitHub Actions & Makefile

This branch introduces **Continuous Integration (CI)** using GitHub Actions, and simplifies command-line operations with a `Makefile`.  
The Devcontainer named `playground-ci`.

### CI Overview

- Uses `pytest` to run unit tests inside a container
- Triggered on:
  - `push` or `pull_request` to any branch
- CI workflow is defined in `.github/workflows/ci.yaml`

### Makefile Commands

A `Makefile` was added to streamline development commands.

| Command        | Description                    |
|----------------|--------------------------------|
| `make build`   | Build containers               |
| `make up`      | Start containers               |
| `make test`    | Run tests with `pytest`        |
| `make down`    | Stop and remove containers     |

#### Optional Make Commands

These are helpful for debugging.

| Command       | Description                       |
|---------------|-----------------------------------|
| `make logs`   | Show container logs               |
| `make ps`     | Show container status             |

#### Why It Matters

- Ensures tests always run in a consistent environment (container-based)
- Detects issues before merging code
- Saves time and reduces manual steps
