#!/bin/bash
mkdir tpruvot
cd tpruvot
git clone https://github.com/tpruvot/ccminer.git
cd ccminer/
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib
export PATH=$PATH:/usr/local/cuda-8.0/bin
echo 'export PATH=/usr/local/cuda-8.0/bin:$PATH' >> ~/.bashrc
./autogen.sh
./configure
make
echo "Finished"
