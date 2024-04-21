# multiple-pyenv

This is a simple script to install multiple versions of Python using pyenv.

## Usage

```bash
docker build -t multiple-pyenv:latest .
docker run --entrypoint bash -it --rm multiple-pyenv:latest

cd /app/pyenv-1
python main.py

cd /app/pyenv-2
python main.py

cd /app/pyenv-3
python main.py
```

## Features
There are some good features in this template:
- Minimal installation of python versions for each pyenv
- Easy to stack another python versions
- Easy to use

## Limitations
There are also some limitations in this template:
- All pyenvs have to share their apt packages
