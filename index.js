const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.send("<h1>Node JS - Docker in Action -- Eshan Tharuki !!</h1> ");
});

app.get("/hello", (req, res) => {
  res.json({ message: "Hello world ---" });
});

app.listen(port, () => {
  console.log(`My node app listening on port ${port}`);
});
