const http = require('http');
http.createServer(function (request, response) {
console.log(request.url);
response.writeHead(200);
response.end();
}).listen(3004);