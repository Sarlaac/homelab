#!/bin/bash

sudo apt install ssh python3 python3-pip python3-venv git -y
python3 -m venv env --prompt homelab --upgrade-deps
source env/bin/activate
python3 -m pip install ansible ansible-lint requests
ssh-keygen -t ed25519

git clone https://github.com/Sarlaac/homelab.git
