#!/bin/sh
nproc=$1
output_dir=$2
echo $nproc
echo $output_dir

python -m torch.distributed.run --nproc_per_node=$nproc pretrain.py \
 --config ./configs/pretrain.yaml \
 --output_dir $output_dir \