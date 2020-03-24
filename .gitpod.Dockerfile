#FROM gitpod/workspace-mysql
FROM alpine:3.11 

#USER gitpod

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN sudo apt-get -q update && #     sudo apt-get install -yq bastet && #     sudo rm -rf /var/lib/apt/lists/*
#
# More information: https://www.gitpod.io/docs/config-docker/

#RUN sudo apt-get -q update
RUN apk --no-cache add \
    bash \
    curl \
    neovim \
    git \
    tig 
    nodejs \
    npm \
    python \
    python-dev \
    py-pip \
    build-base \
    asciidoctor
    && pip install virtualenv 

ENV LANG=en_US.UTF-8
    
RUN curl -sLf https://spacevim.org/install.sh | bash


RUN 
