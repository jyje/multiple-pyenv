FROM docker.io/library/ubuntu:20.04

RUN apt-get update --fix-missing
RUN apt-get full-upgrade -y 
RUN apt-get install -y \
        curl git vim \
        build-essential zlib1g-dev libssl-dev \
        libreadline-dev libsqlite3-dev \
        libffi-dev libbz2-dev liblzma-dev

RUN curl https://pyenv.run | bash && \
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $HOME/.bashrc && \
    echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> $HOME/.bashrc && \
    echo 'eval "$(pyenv init -)"' >> $HOME/.bashrc

WORKDIR /app

COPY . .
RUN chmod -R 0700 .

RUN cd pyenv-1 && bash ./set-env.sh
RUN cd pyenv-2 && bash ./set-env.sh
RUN cd pyenv-3 && bash ./set-env.sh
