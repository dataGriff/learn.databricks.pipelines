# trunk-ignore-all(hadolint/DL3007)
# trunk-ignore(checkov/CKV_DOCKER_7)
FROM gitpod/workspace-python-3.10:latest

# Add HEALTHCHECK instruction
HEALTHCHECK --interval=30s --timeout=5s CMD curl --fail http://localhost:24000/ || exit 1

USER gitpod

# Install Homebrew
RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc

RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && \
    brew update && \
    brew install azure-cli  && \
    ## Install Databricks CLI
    brew tap databricks/tap && \
    brew install databricks && \
    brew install pulumi

RUN  curl https://get.trunk.io -fsSL | bash -s -- -y
