const log = require('debug')('log');
const http = require('http');

http.createServer(function(req, res){
    log(req.method + ' ' + req.url);
    res.end('hello\n');
}).listen(3000, function(){
    log('listening');
});

async function go() {
    while (true) {
        log("test");
    
        const delay = ms => new Promise(resolve => setTimeout(resolve, ms));
        await delay(1000);
    }
}

go();