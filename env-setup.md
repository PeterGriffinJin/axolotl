
## environment setup
```
conda create --name axolotl python==3.10 -y
conda activate axolotl
conda install pytorch==2.1.2 torchvision==0.16.2 torchaudio==2.1.2 pytorch-cuda=12.1 -c pytorch -c nvidia
pip install numpy==1.26.4 --upgrade
pip install setuptools==69.5.1


git clone -b bowen https://github.com/PeterGriffinJin/axolotl.git
cd axolotl

pip3 install packaging ninja
pip3 install -e '.[flash-attn,deepspeed]'
```