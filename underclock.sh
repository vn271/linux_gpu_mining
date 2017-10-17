#!/bin/sh
#sudo nvidia-xconfig -a --cool-bits=28 --allow-empty-initial-configuration
sudo nvidia-settings -a GPUFanControlState=1
sudo nvidia-settings -a GPUTargetFanSpeed=80
sudo nvidia-settings -a GPUPowerMizerMode=1
sudo nvidia-settings -a GPUGraphicsClockOffset[3]=50

sudo nvidia-smi -pm 1
sudo nvidia-smi -pl 250

