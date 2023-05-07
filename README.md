# pytorch-cuda-container-with-poetry
Example repository for pytorch cuda container with poetry.
When you install new packages not related to pytorch, add pyproject.toml.
Otherwise, Add installation command to Dockerfile as RUN command.

Additionaly, how to mount the container with VS Code devcontainer is described in this readme.

# Docker Commands
## build

```
docker build -t pytorch-cuda-with-poetry .
```


## run
```
docker run --gpus all -it pytorch-cuda-with-poetry
```

## Mount With VS Code devcontainer
The devcontainer setting is located on `.devcontainer`.
This setting uses the docker-compose.yaml to run container.
