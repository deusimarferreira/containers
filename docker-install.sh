#!/bin/bash

# Referência
# https://docs.docker.com/v17.09/engine/installation/linux/docker-ce/ubuntu/#install-using-the-repository
sudo apt update
sudo apt -y upgrade

sudo apt install apt-transport-https ca-certificates curl software-properties-common net-tools gnupg-agent

# Recomendo executar esse comando as root
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable" 

sudo apt update

sudo apt -y install docker-ce
