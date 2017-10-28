#!/bin/bash
sudo add-apt-repository ppa:graphics-drivers/ppa
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update 
sudo apt -y full-upgrade
sudo apt-get install google-chrome-stable
sudo apt-get install nvidia-384 nvidia-libopencl1-384 nvidia-opencl-icd-384
sudo ln -s /usr/lib/libOpenCL.so.1 /usr/lib/libOpenCL.so
sudo apt-get install screen
sudo apt-get install npm
sudo apt-get install nodejs-legacy
cd /home/cash/linux_gpu_mining
npm install --save shelljs
npm install --save sleep
sudo apt-get install openssh-server
