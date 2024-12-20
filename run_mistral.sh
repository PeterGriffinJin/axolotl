
# implicit rag finetune
CUDA_VISIBLE_DEVICES=0 python -m axolotl.cli.preprocess examples/mistral-nemo/fft-nemo-mixdata.yaml
accelerate launch -m axolotl.cli.train examples/mistral-nemo/fft-nemo-mixdata.yaml --deepspeed deepspeed_configs/zero3.json

# explicit rag finetune
CUDA_VISIBLE_DEVICES=0 python -m axolotl.cli.preprocess examples/mistral-nemo/fft-nemo-mixdata-rationale.yaml
accelerate launch -m axolotl.cli.train examples/mistral-nemo/fft-nemo-mixdata-rationale.yaml --deepspeed deepspeed_configs/zero3.json

# CUDA_VISIBLE_DEVICES=0 python -m axolotl.cli.preprocess examples/mistral-nemo/fft-nemo-mixdata-direct.yaml
# accelerate launch -m axolotl.cli.train examples/mistral-nemo/fft-nemo-mixdata-direct.yaml --deepspeed deepspeed_configs/zero3.json
