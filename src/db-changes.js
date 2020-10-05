const { pool } = require("./config");
const { body, check } = require("express-validator");


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

exports.getRandomLink = (req, res) => {
  pool.query(
    `
  SELECT * 
  FROM links
  ORDER BY RANDOM()
  LIMIT 1`,
    (error, results) => {
      if (error) {
        throw error;
      }
      res.status(200).json(results.rows[0]);
    }
  );
};

exports.getAllLinks = sequelize(`
SELECT *
FROM links`);

exports.getKeywords = (req, res) => {
  pool.query(
    `
  SELECT DISTINCT keywords
  FROM links`,
    (error, results) => {
      if (error) {
        throw error;
      }
      const keywords = new Set();
      results.rows.forEach((obj) => {
        const words = obj.keywords.split(",");
        words.forEach((word) => keywords.add(word));
      });
      keywords.delete("");
      res.status(200).json([...keywords]);
    }
  );
};

exports.getLink = (req, res) => {
  const id = parseInt(req.params.id);
  if (Number.isNaN(id)) {
    return res
      .status(400)
      .json(
        `Improper id provided: ${req.params.id}. The id should be a non-negative number.`
      );
  }
  pool.query(
    `SELECT * 
    FROM links 
    WHERE id = $1
    `,
    [parseInt(req.params.id)],
    (error, results) => {
      if (error) {
        throw error;
      }
      if (results.rows.length === 0) {
        return res.status(404).json(`No entry found with id: ${req.params.id}`);
      }
      res.status(200).json(results.rows[0]);
    }
  );
};

exports.searchText = (req, res) => {

  // TODO: sanitize inputs

  // TODO: more complex queries, like multiple keywords
  // const queries = [];
  // let request = "";
  // if (req.query.q) {
  //   queries.push(`title LIKE '%' || ${req.query.q} || '%' OR takeaways LIKE '%' ||${req.query.q} || '%'`);
  // }
  // if (req.query.keyword) {
  //   queries.push()
  // }
  // if (queries.length) {
  //   request = "WHERE " + queries.join(" AND ");
  // }
  pool.query(
    `SELECT * 
    FROM links
    WHERE (title LIKE '%' || $1 || '%' OR takeaways LIKE '%' || $1 || '%')
      AND keywords LIKE '%' || $2 || '%'
      AND url LIKE '%' || $3 || '%'
    `,
    [req.query.q || "", req.query.keyword || "", req.query.url || ""],
    (error, results) => {
      if (error) {
        throw error;
      }
      res.status(200).json(results.rows);
    }
  );
};

exports.addLink = (req, res) => {
  const { keywords, title, url, takeaways, last_accessed } = req.body;
  pool.query(
    `INSERT INTO links (id, keywords, title, url, takeaways, last_accessed)
    VALUES (DEFAULT, $1, $2, $3, $4, $5)
    RETURNING id`,
    [keywords, title, url, takeaways, last_accessed],
    (error, results) => {
      if (error) {
        console.log(error);
        return res.status(400).json({ status: "failure", message: `Couldn't add link: duplicate url or id provided` })
      }
      res.status(201).json({ status: "success", id: results.rows[0].id, message: "Link added" });
    }
  );
};

exports.updateLink = (req, res) => {
  const { id, keywords, title, url, takeaways } = req.body;
  pool.query(
    `UPDATE links
    SET keywords = $1, title = $2, url = $3, takeaways = $4, last_accessed = NOW()
    WHERE id = $5`,
    [keywords, title, url, takeaways, id],
    (error, results) => {
      if (error) {
        console.log(error);
        return res.status(400).json({ status: "failure", message: `Couldn't update link: duplicate url provided` })
      }
      else if (results.rowCount === 0) {
        return this.addLink(req, res);
      }
      res.status(200).json({ status: "success", id: id, message: "Link updated" });
    }
  );
};

exports.deleteLink = (req, res) => {
  const { id } = req.body;
  pool.query(
    `DELETE FROM links
     WHERE id = $1`,
    [id],
    (error, results) => {
      if (error) {
        throw error;
      }
      else if (results.rowCount === 0) {
        return res.status(400).json({ status: "failure", message: `Link with id: ${id} doesn't exist` })
      }
      res
        .status(200)
        .json({ status: "success", message: `Link with id: ${id} deleted` });
    }
  );
};
