#!/bin/bash

# Remove previous Docker installations
sudo yum remove -y docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

# Install necessary packages
sudo yum install -y yum-utils

# Add Docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker
sudo yum install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Start and enable Docker service
sudo systemctl start docker
sudo systemctl enable docker

然后，在目标机器上，你可以使用以下命令来下载并运行该脚本：

wget -O install_docker.sh https://raw.githubusercontent.com/{YOUR_USERNAME}/repository/main/install_docker.sh
chmod +x install_docker.sh
sudo ./install_docker.sh

# use
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/h1code2/install_script/main/install_docker.sh)"