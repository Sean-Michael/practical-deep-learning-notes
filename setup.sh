#!/bin/bash

# install uv
uv --version || curl -LsSf https://astral.sh/uv/install.sh | sh

# create project
uv init
uv add fastai jupyter ipykernel torch torchvision

# register kernel for jupyter
uv run python -m ipykernel install --user --name fastai-notes