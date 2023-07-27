#!/bin/bash

#
# Copyright (c) 2021-2022 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Format Bash prompt
export PS1='$USER@$HOSTNAME:\w\$ '
export PROMPT_DIRTRIM=2

# Setting common pip cache to ensure maximum reuse b/w users
export PIP_CACHE_DIR=/tmp/pip_cache

# Friendly Aliases
alias get_ip="echo $(ip a | grep -v -e "127.0.0.1" -e "inet6" | grep "inet" | awk {'print($2)}' | sed 's/\/.*//')"
alias activate_oneapi="source /opt/intel/oneapi/setvars.sh"

# Help Messages
#alias need_help "slurm commands srun squeue sinfo"


#<<comment-out

# Create ITEX Env
ENV_NAME=itex_xpu
deactivate
rm -rf $ENV_NAME
python -m venv $ENV_NAME
source $ENV_NAME/bin/activate
pip install --upgrade pip
pip install scikit-image jupyter matplotlib #tensorflow==2.12.0
pip install --upgrade intel-extension-for-tensorflow[xpu] -f https://developer.intel.com/itex-whl-weekly
pip install intel-extension-for-tensorflow-lib

# Patch Keras-cv Stable Diffusion with Intel optimizations
rm -rf keras-cv
git clone https://github.com/keras-team/keras-cv.git
cd keras-cv
git reset --hard 66fa74b6a2a0bb1e563ae8bce66496b118b95200
git apply ../patch
pip install .
cd ..

#comment-out

# Start Jupyter
activate_oneapi
ip_address=$(get_ip)
jupyter-notebook --no-browser --ip $ip_address
