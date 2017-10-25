#!/bin/bash
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo nvidia-xconfig --enable-all-gpus
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo nvidia-xconfig --cool-bits=28
#DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo nvidia-xconfig -a --cool-bits=28 --allow-empty-initial-configuration
