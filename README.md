# devcontainer-playground

## Minimal Devcontainer Setup

The goal of this branch is to set up a minimal Devcontainer environment using the latest Python Devcontainer image.  
This is a starting point for further exploration and configuration.

### Configuration

This branch includes a very basic configuration to get started with Devcontainer.  
It uses the following configuration settings:

- **Name**: The Devcontainer is named `playground-min`.
- **Image**: The container is based on the latest Python image provided by Microsoft for Devcontainers.

### How to Open in Devcontainer (VS Code)

1. Open the repository folder in VS Code.
2. Make sure you have the **Dev Containers** extension installed.
3. Press `F1` (or `Cmd+Shift+P` / `Ctrl+Shift+P`) to open the command palette.
4. Select:  
   **"Dev Containers: Reopen in Container"**
5. VS Code will build the container using `.devcontainer/devcontainer.json` and open the project inside the container.
