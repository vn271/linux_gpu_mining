#!/bin/bash
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo /usr/lib/nvidia-304/bin/nvidia-xconfig --enable-all-gpus
/usr/lib/nvidia-304/bin/nvidia-xconfig -s -a --allow-empty-initial-configuration --cool-bits=28 --registry-dwords="PerfLevelSrc=0x2222"--no-sli --connected-monitor="DFP-0" -o /etc/X11/xorg.conf
sed -i '/Driver/a Option "Interactive" "False"' /etc/X11/xorg.conf
