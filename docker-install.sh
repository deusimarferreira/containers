#!/bin/bash

# Referência
# https://docs.docker.com/v17.09/engine/installation/linux/docker-ce/ubuntu/#install-using-the-repository
apt-get update

apt-get install apt-transport-https ca-certificates curl software-properties-common net-tools

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  $(lsb_release -cs)  stable" 

apt-get update

apt-get install docker-ce
