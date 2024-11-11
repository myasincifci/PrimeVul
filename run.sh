cd os_expr;

PROJECT="primevul_cls"
TYPE="roberta"
MODEL="microsoft/unixcoder-base-nine"
TOKENIZER="microsoft/unixcoder-base-nine"
OUTPUT_DIR=../output/

python run_ft.py \
    --project ${PROJECT} \
    --model_dir ${MODEL} \
    --output_dir=${OUTPUT_DIR} \
    --model_type=${TYPE} \
    --tokenizer_name=${TOKENIZER} \
    --model_name_or_path=${MODEL} \
    --do_train \
    --do_test \
    --train_data_file="../data/primevul_train.jsonl" \
    --eval_data_file="../data/primevul_valid.jsonl" \
    --test_data_file="../data/primevul_test.jsonl" \
    --epoch 10 \
    --block_size 512 \
    --train_batch_size 4 \
    --gradient_accumulation_steps 16 \
    --eval_batch_size 4 \
    --learning_rate 2e-5 \
    --warmup_steps 1000 \
    --max_grad_norm 1.0 \
    --evaluate_during_training \
    --seed 123456
cd ..;