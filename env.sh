#!/bin/bash
set -e

# Env Setup.
apt update; apt install git-lfs -y; git lfs install

apt install python3.10-venv
python3.10 -m venv ".venv"
source .venv/bin/activate

echo "##############################"
python --version
echo "##############################"

pip install torch==2.6 tokenizers numpy tensorboard pandas pyarrow fastparquet safetensors

# download the dataset
git clone https://huggingface.co/datasets/Jiayi-Pan/Countdown-Tasks-3to4

# download the pretrained model
git clone https://huggingface.co/Qwen/Qwen2.5-3B-Instruct

git config --global user.email "cedricxie@gmail.com"
git config --global user.name "Yuesong.xie"
