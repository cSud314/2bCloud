const http = require('http');

const hostname = '127.0.0.1'; // Localhost
const port = 80; // Change to port 80

const server = http.createServer((req, res) => {
  res.statusCode = 200; // HTTP status code 200: OK
  res.setHeader('Content-Type', 'text/html'); // Set content type to HTML
  res.end('<h1>Hello, World!</h1>'); // Send HTML response
});

// Start the server
server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});
