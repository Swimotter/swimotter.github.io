# Node & TypeScript
FROM mcr.microsoft.com/devcontainers/typescript-node:4.0.1-24-bookworm

# Dependencies

RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-pip \
        python3-venv \
        gnupg2 \
        curl \
        git-lfs \
        # LaTeX
        texlive-latex-base \
        texlive-latex-recommended \
        texlive-latex-extra \
        texlive-fonts-recommended \
        texlive-fonts-extra \
        latexmk \
    && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Python deps
COPY requirements-dev.txt /tmp/pip-tmp/
RUN pip install --break-system-packages -r /tmp/pip-tmp/requirements-dev.txt && \
    rm -rf /tmp/pip-tmp

# Pre-commit
COPY .pre-commit-config.yaml .
RUN git init . && pre-commit install-hooks

WORKDIR /workspaces/swimotter.github.io
