#!/bin/bash

echo autotrain llm --train --project_name "llama2-openassistant" --model NousResearch/Llama-2-7b-hf --data_path /home/jinl/data/openassistant-guanaco --text_column text --use_peft --learning_rate 2e-4 --train_batch_size 2 --num_train_epochs 3 --trainer sft --model_max_length 2048 --block_size 2048 --fp16 
autotrain llm --train --project_name "llama2-openassistant" --model NousResearch/Llama-2-7b-hf --data_path /home/jinl/data/openassistant-guanaco --text_column text --use_peft --learning_rate 2e-4 --train_batch_size 2 --num_train_epochs 3 --trainer sft --model_max_length 2048 --block_size 2048 --fp16 > training.log &
tail -f training.log
