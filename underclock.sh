#!/bin/sh
#sudo nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=80		
#sudo nvidia-xconfig -a --cool-bits=28 --allow-empty-initial-configuration
sudo nvidia-settings -a GpuPowerMizerMode=1
sudo nvidia-settings -a GPUFanControlState=1
sudo nvidia-settings -a GPUTargetFanSpeed=1
sudo nvidia-settings -a GPUGraphicsClockOffset[3]=86
sudo nvidia-settings -a GPUMemoryTransferRateOffset[3]=608

sudo nvidia-smi -pm 1
sudo nvidia-smi -pl 250
