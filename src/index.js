const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const helmet = require("helmet");
const compression = require("compression");
const rateLimit = require("express-rate-limit");
const {
  getRandomLink,
  getAllLinks,
  getLink,
  getKeywords,
  searchText,
  addLink,
  updateLink,
  deleteLink,
} = require("./db-changes.js");

const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(compression());
app.use(helmet());

const isProduction = process.env.NODE_ENV === "production";
const origin = {
  origin: isProduction ? "https://fullchee-reminders.netlify.app" : "*",
};
app.use(cors(origin));

const limiter = rateLimit({
  windowMs: 1 * 60 * 1000, // 1 minute
  max: 60, // 60 requests,
});
app.use(limiter);

app.get("/ping", (req, res) => res.status(200).json("pong!"));
app.get("/random-link", getRandomLink);
app.get("/links", getAllLinks);
app.get("/keywords", getKeywords);
app.get("/link/:id", getLink);
app.get("/search", searchText);
app.post("/add-link", addLink);
app.post("/update-link", updateLink);
app.post("/delete-link", deleteLink);

// Start server
app.listen(process.env.PORT || 3002, () => {
  console.log(`Server listening at port 3002`);
});
