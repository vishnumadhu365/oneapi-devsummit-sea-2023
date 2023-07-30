# oneapi-devsummit-sea-2023
This repository hosts the contents of the AI handson workshop, oneAPI Devsummit South East Asia 2023

## Pre-requisites
1. You have registered and can login to the [Intel Developer Cloud](https://www.intel.com/content/www/us/en/developer/tools/devcloud/services.html) 
2. A basic ssh client

## Getting started with IDC
<list the basic steps getting started with screen grabs .. login to IDC, verify there are no running instances, post certificate on profile, launch instance on schedule access, verify access using command ssh user@idcbetabatch.eglb.intel.com>

## Getting started on AI workshop
<clone repo, run prepare_env.sh, note jupyter ip:port, open tunnel, access in local browser, rest of the instructions are on the ipynb notebook>
1. SSH into idc head node. <br>
Note: For the below command, replace 'user' with your actual username <br>
   ```
   ssh username@idcbetabatch.eglb.intel.com
   ```
   ==include success screenshot==
2. Request for compute node <br>
   ```
   srun -p pvc-shared --pty /bin/bash
   ```
   ==include success screenshot==
3. Clone this repository <br>
   ```
   git clone https://github.com/vishnumadhu365/oneapi-devsummit-sea-2023.git
   ```
   ==include success screenshot==
4. Prepare environment
   ```
   source prepare_env.sh
   ```
   ==include success screenshot==
5. Note down ip-address and port-number of jupyter server<br>
   ==include success screenshot==
6. In a new terminal create an ssh tunnel to the jupyter server<br>
    ```
   ssh -L port-number:ip-address:portnumber username@idcbetabatch.eglb.intel.com
   ```
   sample ssh command --> ssh -L 8888:10.0.0.8:8888 u107456<span>@</span>idcbetabatch.eglb.intel.com
7. Open browser on laptop and hit localhost:port-number

## Help improve IDC

## Common issues
