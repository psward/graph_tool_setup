#!/bin/bash

clear

conda create --name "graph2" --file "env_setup.txt"
source activate "graph2"
wget "https://downloads.skewed.de/graph-tool/graph-tool-2.26.tar.bz2"
tar -xvjf "graph-tool-2.26.tar.bz2"
cd graph-tool-2.26/
./configure --prefix=$HOME"/anaconda3/envs/graph/" --disable-cairomake
make -j$(nproc-1)
make install
git clone "https://github.com/gerrymandr/RunDMCMC.git"
