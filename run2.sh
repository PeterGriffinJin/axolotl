
# CUDA_VISIBLE_DEVICES=0 python -m axolotl.cli.preprocess examples/llama-3/fft-8b-mixdata.yaml
# accelerate launch -m axolotl.cli.train examples/llama-3/fft-8b-mixdata.yaml --deepspeed deepspeed_configs/zero3.json

# CUDA_VISIBLE_DEVICES=0 python -m axolotl.cli.preprocess examples/llama-3/fft-8b-mixdata-rationale.yaml
# accelerate launch -m axolotl.cli.train examples/llama-3/fft-8b-mixdata-rationale.yaml --deepspeed deepspeed_configs/zero3.json

# CUDA_VISIBLE_DEVICES=0 python -m axolotl.cli.preprocess examples/llama-3/fft-8b-mixdata-direct.yaml
# accelerate launch -m axolotl.cli.train examples/llama-3/fft-8b-mixdata-direct.yaml --deepspeed deepspeed_configs/zero3.json



CUDA_VISIBLE_DEVICES=0 python -m axolotl.cli.preprocess examples/llama-3/fft-8b-mixdata-rationale-self.yaml
accelerate launch -m axolotl.cli.train examples/llama-3/fft-8b-mixdata-rationale-self.yaml --deepspeed deepspeed_configs/zero3.json
