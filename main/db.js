const { Pool } = require("pg");

const pool = new Pool({
  user: "Tam",
  host: "localhost",
  database: "health_app",
  password: "",
  post: 5432
});

module.exports = pool;
