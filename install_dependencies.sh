#!/bin/bash

#sudo add-apt-repository ppa:graphics-drivers/ppa
#sudo apt-get update 

#sudo apt-get install nvidia-384 nvidia-libopencl1-384 nvidia-opencl-icd-384

sudo apt-get install -y curl screen libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
curl -sL https://deb.nodesource.com/setup_9.x | sudo bash -
wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/cuda-repo-ubuntu1604_8.0.44-1_amd64.deb
dpkg -i cuda-repo-ubuntu1604_8.0.44-1_amd64.deb
sudo apt-get update && apt-get upgrade -y && apt-get -y full-upgrade && apt-get autoremove && apt-get autoclean

sudo apt install -y nvidia-cuda-toolkit
sudo apt-get install -y cuda-8.0
sudo ln -s /usr/lib/libOpenCL.so.1 /usr/lib/libOpenCL.so
sudo apt-get install -y nodejs nodejs-legacy npm
cd /home/cash/linux_gpu_mining
npm install forever -g
npm install gulp -g
npm install -g shelljs
npm install -g sleep
sudo apt-get install  -y openssh-server
