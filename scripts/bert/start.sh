#coding:utf-8
###################################################
# File Name: start.sh
# Author: Meng Zhao
# mail: @
# Created Time: 2019年10月31日 星期四 16时48分31秒
#=============================================================
source activate tensorflow_new_3.6
export MODEL_DIR=/root/zhaomeng/google-BERT/chinese_L-12_H-768_A-12
#export MODEL_DIR=/root/zhaomeng/baidu_ERNIE/pad_to_tf/checkpoints
#export MODEL_DIR=/home/zhaomeng/roBerta_model/HIT


python run_classifier.py --task_name=test \
                         --output_dir=./output \
                         --data_dir=./data \
                         --init_checkpoint=$MODEL_DIR/bert_model.ckpt \
                         --bert_config_file=$MODEL_DIR/bert_config.json \
                         --vocab_file=$MODEL_DIR/vocab.txt \
                         --max_seq_length=400  \
                         --num_train_epochs=5 \
                         --learning_rate=5e-4  \
                         --train_batch_size=8 \
                         --do_train=true \

