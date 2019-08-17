const express = require("express");
// const pool = require("./pool");
const bodyParser = require("body-parser");
const IndexRouter = require("./routes/IndexRouter");

const serve = express();
serve.listen(9999);

serve.use(
  bodyParser.urlencoded({
    extended: true
  })
);

serve.use(IndexRouter);