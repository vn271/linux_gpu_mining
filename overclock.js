#!/usr/bin/env node
'use strict';

var sleep = require('sleep');
sleep.sleep(10); // sleep for ten seconds

var shell = require('shelljs');
var cmd = "DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo nvidia-settings -a GpuPowerMizerMode=1";
cmd += " -a GPUFanControlState=1";
cmd += " -a GPUTargetFanSpeed=100";
cmd += " -a GPUGraphicsClockOffset[3]=86";
cmd += " -a GPUMemoryTransferRateOffset[3]=368";
cmd += " -a GPUFanControlState=1";
cmd += " -a GPUFanControlState=1";

shell.exec(cmd, function(code, stdout, stderr) { console.log(code); });
shell.exec('sudo nvidia-smi -pm 1', function(code, stdout, stderr) {  console.log(code);});
shell.exec('sudo nvidia-smi -pl 250', function(code, stdout, stderr) {  console.log(code); });
