#!/bin/bash
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update 
sudo apt -y full-upgrade
sudo apt-get install nvidia-384 nvidia-libopencl1-384 nvidia-opencl-icd-384
sudo ln -s /usr/lib/libOpenCL.so.1 /usr/lib/libOpenCL.so
 sudo apt install nvidia-cuda-toolkit

sudo apt-get install screen
sudo apt-get install npm
sudo apt-get install -y curl
curl -sL https://deb.nodesource.com/setup_9.x | sudo bash -
sudo apt-get install -y nodejs
sudo apt-get install nodejs-legacy
cd /home/cash/linux_gpu_mining
npm install forever -g
npm install gulp -g
npm install -g shelljs
npm install -g sleep
sudo apt-get install openssh-server
