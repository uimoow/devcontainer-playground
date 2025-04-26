# devcontainer-playground

This repository is focused on learning environment setup and optimization using devcontainer and Docker.  
The steps are taken progressively, with each branch representing a specific task or goal.   
Detailed instructions and processes are documented in the README for each branch.

| Branch Name | Purpose | Overview |
| --- | --- | --- |
| [**feature/minimal**](https://github.com/uimoow/devcontainer-playground/tree/feature/minimal) | Setup devcontainer with minimal configuration | Create an initial Docker container environment and run a basic application. |
| [**feature/dockerfile**](https://github.com/uimoow/devcontainer-playground/tree/feature/dockerfile) | Create a Dockerfile for containerizing the application | Create a Dockerfile for the application and learn the basics of containerization. |
| [**feature/dockerfile-flask**](https://github.com/uimoow/devcontainer-playground/tree/feature/dockerfile-flask) | Create a Dockerfile for a Flask application | Build a Dockerfile for a Flask application and run it within a container. |
| [**feature/compose-flask-mysql**](https://github.com/uimoow/devcontainer-playground/tree/feature/compose-flask-mysql) | Set up a Flask and MySQL environment using Docker Compose  | Use Docker Compose to integrate a Flask app with a MySQL database. |
| [**feature/dockerfile-optimize**](https://github.com/uimoow/devcontainer-playground/tree/feature/dockerfile-optimize) | Optimize the Dockerfile | Optimize the Dockerfile to reduce build time and image size. |
| [**feature/ci**](https://github.com/uimoow/devcontainer-playground/tree/feature/ci) | Set up Continuous Integration (CI) for automated testing with GitHub Actions | Configure GitHub Actions to run automated tests in a CI pipeline. |
| [**feature/ci_linter**](https://github.com/uimoow/devcontainer-playground/tree/feature/ci_linter) | Integrate a linter for static code analysis | Integrate flake8 into CI for static code analysis and maintaining code quality. |

## Environment

This repository has been tested in the following environment:

- **WSL**: Ubuntu 22.04.5 LTS
- **Docker**: Docker version 28.0.1
- **Dev Container**: Visual Studio Code (VSCode) with the Remote-Containers extension
- **Make**: GNU Make version 4.3
