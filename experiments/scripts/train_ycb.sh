#!/bin/bash

set -x
set -e

export PYTHONPATH=/home/robotics/github/DenseFusion:$PYTHONPATH

export PYTHONUNBUFFERED="True"
export CUDA_VISIBLE_DEVICES=0

python3 ./tools/train.py --dataset ycb\
  --dataset_root ./datasets/ycb/YCB_Video_Dataset
