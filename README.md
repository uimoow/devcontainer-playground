# devcondevcontainer-playground

## add lint

This branch focuses on integrating linting into the Continuous Integration (CI) process.  
The main additions include:

- **Makefile**: Added a make lint command to run linting checks on the project files.
- **GitHub Actions**: Introduced a new lint.yml workflow to trigger linting checks during the CI process.

These changes aim to automate code quality checks and enforce consistent coding standards across the project.  
The Devcontainer named `playground-ci-lint`.

### CI Overview (with Linting)

- Uses `flake8` to run linting checks on the code
- Triggered on:
  - `push` or `pull_request` to `feature/ci_linter`
- CI workflow is defined in `.github/workflows/lint.yml`

### Makefile Commands

A `Makefile` was added to streamline development commands.

| Command        | Description                    |
|----------------|--------------------------------|
| `make build`   | Build containers               |
| `make up`      | Start containers               |
| `make test`    | Run tests with `pytest`        |
| `make down`    | Stop and remove containers     |
| `make lint`    | Run linting checks             |

#### Note:
By default, make test runs pytest inside the app container using docker compose exec.  
In CI environments, the -T option is automatically used to disable pseudo-TTY allocation (for smoother automated runs).  
If you're running this locally and want to run interactively, you can add the -it option like this:

```bash
make test EXEC_OPTS="-it"
```

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
