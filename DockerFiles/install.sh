#!/bin/bash

# GENERAL LINUX
apt-get update
apt-get upgrade -y
# installs system tools
apt-get install -y bzip2 gcc git htop screen vim wget
apt-get upgrade -y bash
apt-get clean

# INSTALL MINICONDA
echo "Installing Miniconda..."
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda.sh
bash Miniconda.sh -b
rm -rf Miniconda.sh
export PATH="/root/miniconda3/bin:$PATH"  # prepends the new path

# INSTALL PYTHON LIBRARIES
conda update -y conda python
echo "Installing IPython and pandas..."
conda install -y ipython pandas

# Verify installations
echo "Verifying IPython installation..."
which ipython
echo "Verifying pandas installation..."
python -c "import pandas; print(pandas.__version__)"