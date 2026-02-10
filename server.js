const http = require("http");

const PORT = process.env.PORT || 8080;

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader("Content-Type", "text/plain; charset=utf-8");
  res.end("hello bunny\n");
});

server.listen(PORT, "0.0.0.0", () => {
  console.log(`Listening on port ${PORT}`);
});
