const express = require("express");
// const pool = require("./pool");
const cors = require("cors");
const bodyParser = require("body-parser");
const IndexRouter = require("./routes/IndexRouter");

const server = express();
server.listen(9999);

server.use(express.static("image"));

server.use(
  bodyParser.urlencoded({
    extended: true
  })
);

// 配置跨域
server.use(
  cors({
    origin: ['http://localhost:8080','http://localhost:8081'],
    credentials: true
  })
);

server.use(IndexRouter);
