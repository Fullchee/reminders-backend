const { pool } = require("./config");

function sequelize(sql) {
  return (req, res) => {
    pool.query(sql, (error, results) => {
      if (error) {
        throw error;
      }
      res.status(200).json(results.rows);
    });
  };
}

exports.getRandomLink = sequelize(`
SELECT * 
FROM links
ORDER BY RANDOM()
LIMIT 1`);

exports.getAllLinks = sequelize(`
SELECT *
FROM links`);

exports.addLink = (req, res) => {
  const { keywords, title, url, takeaways, last_accessed } = req.body;
  pool.query(
    `INSERT INTO links (keywords, title, url, takeaways, last_accessed)
    VALUES ($1, $2, $3, $4, $5)`,
    [keywords, title, url, takeaways, last_accessed],
    (error, results) => {
      if (error) {
        throw error;
      }
      res.status(201).json({ status: "success", message: "Link added" });
    }
  );
};

exports.updateLink = (req, res) => {
  const { id, keywords, title, url, takeaways, last_accessed } = req.body;
  pool.query(
    `UPDATE links
    SET keywords = $1, title = $2, url = $3, takeaways = $4, last_accessed = NOW()
    WHERE id = $5`,
    [keywords, title, url, takeaways, id],
    (error, results) => {
      if (error) {
        throw error;
      }
      res.status(200).json({ status: "success", message: "Link updated" });
    }
  );
};
