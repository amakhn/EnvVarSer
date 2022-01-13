var http = require("http");

http.createServer(function (request, response) {
   // Send the HTTP header 
   // HTTP Status: 200 : OK
   // Content Type: text/plain
   response.writeHead(200, {'Content-Type': 'text/plain'});
   
   // Send the response body as "Hello World"
   var CONTAINER_BUILD = process.env.CONTAINER_BUILD;
   var CONTAINER_START = process.env.CONTAINER_START;
   
   console.log(CONTAINER_BUILD);
   console.log(CONTAINER_START);

   response.end('CONTAINER_BUILD: ' + CONTAINER_BUILD + '\n' + 'CONTAINER_START: ' + CONTAINER_START);

}).listen(81);

// Console will print the message
console.log('Server running at http://127.0.0.1:81/');