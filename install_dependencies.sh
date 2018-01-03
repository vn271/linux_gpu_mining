#!/bin/bash

#sudo add-apt-repository ppa:graphics-drivers/ppa
#sudo apt-get update 
#sudo apt -y full-upgrade
#sudo apt-get install nvidia-384 nvidia-libopencl1-384 nvidia-opencl-icd-384

sudo apt-get install -y libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.44-1_amd64.deb
dpkg -i cuda-repo-ubuntu1604_8.0.44-1_amd64.deb
apt-get update
sudo apt install -y nvidia-cuda-toolkit
sudo apt-get install -y cuda-8.0
sudo ln -s /usr/lib/libOpenCL.so.1 /usr/lib/libOpenCL.so

sudo apt-get install -y screen
sudo apt-get install -y npm
sudo apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_9.x | sudo bash -
sudo apt-get install -y nodejs
sudo apt-get install -y nodejs-legacy
cd /home/cash/linux_gpu_mining
npm install forever -g
npm install gulp -g
npm install -g shelljs
npm install -g sleep
sudo apt-get install  -y openssh-server
