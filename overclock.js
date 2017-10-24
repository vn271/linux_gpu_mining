#!/usr/bin/env node
'use strict';
var shell = require('shelljs');
var sleep = require('sleep');
sleep.sleep(10); // sleep for ten seconds
shell.exec('bash /home/cash/linux_gpu_mining/underclock.sh', function(code, stdout, stderr) {  console.log(code); });
