#!/bin/bash

# Common
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

# Python
pyenv install -s 3.12.1
pyenv virtualenv 3.12.1 pyenv-3
pyenv local pyenv-3

# Pip
pip upgrade pip
pip install -r requirements.txt
