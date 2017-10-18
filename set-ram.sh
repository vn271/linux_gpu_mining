#!/bin/sh
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo echo "vm.swappiness=10" >> /etc/sysctl.conf
sudo echo "vm.vfs_cache_pressure = 50" >> /etc/sysctl.conf
free -m
