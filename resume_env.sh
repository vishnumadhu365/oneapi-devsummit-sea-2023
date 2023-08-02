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

# Friendly Aliases
alias get_ip="echo $(ip a | grep -v -e "127.0.0.1" -e "inet6" | grep "inet" | awk {'print($2)}' | sed 's/\/.*//')"
alias activate_oneapi="source /opt/intel/oneapi/setvars.sh"


#Resume Jupyter
deactivate
activate_oneapi
source itex_xpu/bin/activate
ip_address=$(get_ip)
jupyter-notebook --no-browser --ip $ip_address
