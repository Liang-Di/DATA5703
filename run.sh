#!/bin/sh
nproc=$1
output_dir=$2
pth_file=$3
echo $nproc
echo $output_dir
echo $pth_file

python -m torch.distributed.run --nproc_per_node=$nproc pretrain.py \
 --config ./configs/pretrain.yaml \
 --output_dir $output_dir \
 --checkpoint $pth_file