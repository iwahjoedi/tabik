FROM gitpod/workspace-full

USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/

ENV LANG=en_US.UTF-8

ARG NODE_VER=12.8.1
ARG NPM_VER=6


# install Spacevim
RUN curl -sLf https://spacevim.org/install.sh | bash

COPY init.toml $HOME/.Spacevim.d/init.toml

# install Firebase CLI
RUN npm install -g firebase-tools

