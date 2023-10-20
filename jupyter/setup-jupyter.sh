#!/bin/bash
# setup python environment for jupyter notebook
# ref: https://www.linuxcapable.com/how-to-install-jupyter-notebook-on-debian-linux/

sudo apt install python3 python3-dev python3-venv python3-pip -y
python3 -m venv ~/jupyter
. ~/jupyter/bin/activate
pip install --upgrade pip
pip install jupyter
