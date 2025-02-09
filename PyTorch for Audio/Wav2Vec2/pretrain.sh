accelerate launch pretrain_wav2vec2.py \
    --experiment_name "Pretraing_Wav2Vec2Base" \
    --working_directory "work_dir" \
    --path_to_data_root "/mnt/datadrive/data/LibriSpeech" \
    --train_splits train-clean-100 train-clean-360 train-other-500 \
    --test_splits dev-clean test-clean \
    --minimum_audio_duration 2.0 \
    --maximum_audio_duration 15.0 \
    --sampling_rate 16000 \
    --masking_probability 0.065 \
    --masking_span_length 10 \
    --minimum_spans 2 \
    --num_negatives 100 \
    --conv_dim 512 512 512 512 512 512 512 \
    --conv_kernel 10 3 3 3 3 2 2 \
    --conv_stride 5 2 2 2 2 2 2 \
    --feature_proj_dropout_p 0.0 \
    --conv_positional_emb_groups 16 \
    --conv_positional_emb_kernel_size 128 \
    --conv_positional_emb_drop_p 0.0 \
    --num_transformer_layers 12 \
    --num_attention_heads 12 \
    --embedding_dimension 768 \
    --mlp_ratio 4 \
    --mlp_dropout_p 0.0 \
    --attention_dropout_p 0.0 \
    --transformer_encoder_dropout_p 0.0 \
    --layer_dropout 0.0 \
    --initializer_range 0.02 \
    --num_codevector_groups 2 \
    --num_codevectors_per_group 320 \
    --codevector_dim 256 \
    --pre_quantizer_dropout_p 0.0 \
    --max_gumbel_temperature 2.0 \
    --min_gumbel_temperature 0.5 \
    --gumbel_temperature_decay 0.999995 \
    --contrastive_logits_temperature 0.1 \
    --diversity_loss_weight 0.1 \
    --per_gpu_batch_size 64 \
    --gradient_accumulation_steps 8 \
    --num_training_steps 200000 \
    --num_warmup_steps 32000 \
    --lr_scheduler_type polynomial \
    --evaluation_interval 500 \
    --checkpoint_interval 1000 \
    --learning_rate 0.001 \
    --weight_decay 0.01 \
    --adam_beta1 0.9 \
    --adam_beta2 0.98 \
    --adam_epsilon 1e-6 \
    --num_keep_checkpoints 5 \
    --num_workers 8 \
    --logging_steps 1 \
    --log_wandb \
    --seed 0                                               
