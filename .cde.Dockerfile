FROM gitpod/workspace-full

# USER gitpod

# RUN pyenv install 3.11 \
#     && pyenv global 3.11 \
#     && pip install pyspark \
#     && pip install ipykernel 

# # Install Homebrew
# RUN /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
#     echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc

# Update Homebrew, Install Terraform & Azure CLI
# RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)" && \
#     brew update && \
