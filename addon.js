
var addon = require('bindings')('addon.node')


const buf =  new Float32Array(1024);
for(var i = 0; i < buf.length; i++) {
    buf[i] = Math.random();
}

addon.init(1024);
const a = addon.fft_r(buf); 

for(var i = 0; i < a.length; i++) {
    console.log(a[i])
}




