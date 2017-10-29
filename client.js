#!/usr/bin/env node
//client.js
var request = require('ajax-request');
var io = require('socket.io-client');

var socket = io.connect('http://gpu.vn:3000', {reconnect: true});
var myVar;

// Add a connect listener
socket.on('connect', function (socket) {
	console.log("Connected");
	myVar = setInterval(myFunc, 3000);
});

socket.on('disconnect', function() {
	console.log("Disconnect");
	clearTimeout(myVar);
});

function myFunc(arg) {
	request({ url: 'http://127.0.0.1:42000/getstat', method: 'GET'}, function(err, res, data) {
		if(typeof data != "undefined"){
			var obj = JSON.parse(data);
			obj.status = "connected";
			socket.emit('talk', 'may1', obj);
		}else{
			socket.emit('talk', 'may1', { status: "disconnected" } );
		}

	});
}