#!/bin/sh
# postCreateCommand.sh

echo "START Install"
sudo chown -R vscode:vscode .

# setup python env
poetry config virtualenvs.in-project true
poetry run pip install pip poetry wheel setuptools 
poetry run pip install litellm

VENV=`poetry env info -p`
echo "source ${VENV}/bin/activate" >> ~/.bashrc

source ~/.bashrc


echo "FINISH Install"