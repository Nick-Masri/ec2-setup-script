#!/bin/bash

# Update the package list
sudo apt-get update

# Install Python 3 and pip
sudo apt-get install -y python3 python3-pip

# Install Jupyter and IPython
pip3 install jupyter ipython

# Download Miniconda installer script
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh

# Install Miniconda
bash miniconda.sh -b -p $HOME/miniconda

# Clean up the installer script
rm miniconda.sh

# Initialize Conda
~/miniconda/bin/conda init

echo "Installation complete. Please restart your shell for the changes to take effect."
