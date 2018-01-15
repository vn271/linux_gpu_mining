#!/bin/bash
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update 

-wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -		
-sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

sudo apt-get install -y curl screen libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential
curl -sL https://deb.nodesource.com/setup_9.x | sudo bash -
sudo apt-get update && apt-get upgrade -y && apt-get -y full-upgrade && apt-get autoremove && apt-get autoclean
#sudo apt-get install -y nvidia-384 nvidia-libopencl1-384 nvidia-opencl-icd-384
#sudo ln -s /usr/lib/libOpenCL.so.1 /usr/lib/libOpenCL.so

sudo apt-get install -y nodejs 
apt install -y nodejs-legacy npm
npm install -g forever
npm install -g gulp
npm install -g shelljs
