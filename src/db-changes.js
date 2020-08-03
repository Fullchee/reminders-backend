const { pool } = require("./config");

exports.getRandomLink = (req, response) => {
  pool.query("SELECT * FROM links;", (error, results) => {
    if (error) {
      throw error;
    }
    console.log(results);
    response.status(200).json(results.rows);
  });
};