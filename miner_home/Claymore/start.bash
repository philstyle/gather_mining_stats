#!/bin/bash
export GPU_MAX_ALLOC_PERCENT=100
#./ethdcrminer64 -gser 2 -mode 1 -epool us2.ethermine.org:4444 -ewal 0x27fb862bbf6c26225b3baaa79b003e4f1ea9031b.airbuntu1 -epsw x

#sudo xinit /usr/bin/nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=55 -a [gpu:0]/GPUMemoryTransferRateOffset[3]=100 -- :0 -once
#sudo xinit /usr/bin/nvidia-settings -a [gpu:1]/GPUFanControlState=1 -a [fan:1]/GPUTargetFanSpeed=55 -a [gpu:1]/GPUMemoryTransferRateOffset[3]=100  -- :0 -once
#sudo xinit /usr/bin/nvidia-settings -a [gpu:2]/GPUFanControlState=1 -a [fan:2]/GPUTargetFanSpeed=55 -a [gpu:2]/GPUMemoryTransferRateOffset[3]=100  -- :0 -once
./ethdcrminer64 -lidag 1,2 -mode 1 -epool us2.ethermine.org:4444 -ewal 0x27fb862bbf6c26225b3baaa79b003e4f1ea9031b.airbuntu1 -epsw x
