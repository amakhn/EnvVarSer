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

   const fs1 = require('fs');
   var data1 = fs1.readFileSync('run_timestamp', 'utf8');
      console.log(data1);
      var run_timestamp = data1;
   
   
   const fs2 = require('fs');
   var data2 = fs2.readFileSync('build_timestamp', 'utf8');
      console.log(data2);
      var build_timestamp = data2;
   

   response.end('Container_build: ' + CONTAINER_BUILD + '\n' + 'Container_start: ' + CONTAINER_START + '\n' + 'Run_timestamp: ' + run_timestamp + '\n' + 'Build_timestamp: ' + build_timestamp);

}).listen(81);

// Console will print the message
console.log('Server running at http://127.0.0.1:81/');