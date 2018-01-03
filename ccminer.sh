#!/bin/bash
mkdir ccminer
cd ccminer
git clone https://github.com/tpruvot/ccminer.git
cd ccminer/
./build.sh
cp ccminer ../ 
rm -R ccminer 
echo "Finished"
