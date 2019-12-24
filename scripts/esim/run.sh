#!/bin/bash

DATA_DIR=../../data/ubuntu_data_concat

CUDA_VISIBLE_DEVICES=0 python -u main.py \
--train_file=$DATA_DIR/train.txt \
--valid_file=$DATA_DIR/dev.txt \
--test_file=$DATA_DIR/test.txt \
--vocab_file=$DATA_DIR/vocab.txt \
--output_dir=result \
--embedding_file=../../data/embedding_w2v_d300.txt \
--maxlen_1=300 \
--maxlen_2=50 \
--hidden_size=300 \
--train_batch_size=16 \
--valid_batch_size=8 \
--test_batch_size=8 \
--fix_embedding=False \
--patience=1 \
> log.txt 2>&1 &

