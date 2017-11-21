#!/bin/sh
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo nvidia-settings \
-a GpuPowerMizerMode=1 \
-a GPUFanControlState=1 \
-a GPUTargetFanSpeed=100 \
-a GPUGraphicsClockOffset[3]=186 \
-a [gpu:1]/GPUGraphicsClockOffset[3]=131 \
-a [gpu:2]/GPUGraphicsClockOffset[3]=21 \
-a GPUMemoryTransferRateOffset[3]=0
sudo nvidia-smi -pm 1
sudo nvidia-smi -pl 190
