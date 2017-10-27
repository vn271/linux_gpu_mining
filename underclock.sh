#!/bin/sh
#sudo nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=80		
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo nvidia-settings \
-a GpuPowerMizerMode=1 \
-a GPUFanControlState=1 \
-a GPUTargetFanSpeed=100 \
-a GPUGraphicsClockOffset[3]=86 \
-a GPUMemoryTransferRateOffset[3]=608

sudo nvidia-smi -pm 1
sudo nvidia-smi -pl 250
