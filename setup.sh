#!/bin/bash

# Update the package list
sudo apt-get update

# Install Python 3 and pip
sudo apt-get install -y python3 python3-pip

# Download Miniconda installer script
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh

# Install Miniconda
bash miniconda.sh -b -p $HOME/miniconda

# Clean up the installer script
rm miniconda.sh

# Initialize Conda
~/miniconda/bin/conda init

# Activate conda environment
source ~/miniconda/bin/activate

# Add the conda-forge channel
conda config --add channels conda-forge

conda install -y scikit-learn ipykernel pandas matplotlib seaborn tensorflow keras

echo "Installation complete. Please restart your shell for the changes to take effect."
