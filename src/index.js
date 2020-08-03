const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const { pool } = require("./config");

const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cors());

app.get("/", function (req, res) {
  res.send("hello world");
});

// Start server
app.listen(process.env.PORT || 3002, () => {
  console.log(`Server listening`);
});
