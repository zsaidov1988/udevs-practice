const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => res.send("<h1>Hello World!</h1>"));
app.get("/products", (req, res) => {
  res.send([
    {
      productId: "101",
      price: 100,
    },
    {
      productId: "102",
      price: 200,
    },
  ]);
});

app.listen(port, () => console.log(`Example app listening on port ${port}!`));
// const http = require("http");

// const hostname = "127.0.0.1";

// const server = http.createServer((req, res) => {
//   res.statusCode = 200;
//   res.setHeader("Content-Type", "text/plain");
//   res.end("Hello World");
// });

// server.listen(port, hostname, () => {
//   console.log(`Server running at http://${hostname}:${port}/`);
// });
