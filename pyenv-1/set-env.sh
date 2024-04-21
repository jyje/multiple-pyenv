#!/bin/bash

# Common
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

# Python
pyenv install -s 3.9.11
pyenv virtualenv 3.9.11 pyenv-1
pyenv local pyenv-1

# Pip
pip upgrade pip
pip install -r requirements.txt
