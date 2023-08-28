# jupyter-container

Running JupyterLab inside a container.

## Usage

Build and run the image using podman (or docker):

```bash
podman build -t jupyter .
podman run --name jupyter-container -p 8888:8888 localhost/jupyter:latest
```

Make the script executable (don't forget to add it to PATH) and use it:

```bash
chmod +x jupyter
jupyter # Firefox (flatpak) will open with JupyterLab running
```
