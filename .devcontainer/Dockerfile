# Node & TypeScript
FROM mcr.microsoft.com/devcontainers/typescript-node:4.0.1-24-bookworm

# Python3
RUN apt-get update && \
    apt-get install -y python3 python3-pip python3-venv && \
    apt-get install -y gnupg2 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | bash && \
    apt-get install -y git-lfs


COPY requirements-dev.txt /tmp/pip-tmp/
RUN pip install --break-system-packages -r /tmp/pip-tmp/requirements-dev.txt && \
    rm -rf /tmp/pip-tmp

COPY .pre-commit-config.yaml .
RUN git init . && pre-commit install-hooks

WORKDIR /workspaces/swimotter.github.io
