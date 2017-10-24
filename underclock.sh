#!/bin/sh
#sudo nvidia-settings -a [gpu:0]/GPUFanControlState=1 -a [fan:0]/GPUTargetFanSpeed=80		
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo nvidia-settings -a GpuPowerMizerMode=1
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo nvidia-settings -a GPUFanControlState=1
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo nvidia-settings -a GPUTargetFanSpeed=100
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo nvidia-settings -a GPUGraphicsClockOffset[3]=86
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo nvidia-settings -a GPUMemoryTransferRateOffset[3]=608

sudo nvidia-smi -pm 1
sudo nvidia-smi -pl 250
