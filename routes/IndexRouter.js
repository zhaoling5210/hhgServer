const express = require("express");
const Router = express.Router();
const pool = require("../pool");
// 请求5层楼图片,按照层分组
Router.get("/floor", (req, res) => {
  let sql = `SELECT img_url ,img_type ,fid FROM wedpic_index`;
  pool.query(sql, [], (err, result) => {
    if (result.length) {
      // 使用JSONP 跨域 返回用 callback('') 包裹着的 JSON 字符串
      console.log(result);
      res.send(`${req.query.callback}(${JSON.stringify(result)})`);
    }
  });
});
module.exports = Router;
