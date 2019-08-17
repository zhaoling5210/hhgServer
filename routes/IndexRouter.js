const express = require("express");
const Router = express.Router();
const pool = require("../pool");
// 请求5层楼图片,按照层分组
Router.get("/floor", (req, res) => {
  let sql = `SELECT img_url ,img_type ,fid FROM wedpic_index`;
  pool.query(sql, [], (err, result) => {
    if (result.length) {
      let r = [];
      let enumType = ["big", "small1", "small2"];
      // 处理结果
      result.forEach((item, index, arr) => {
        if (!Array.isArray(r[item.fid])) {
          r[item.fid] = [];
        }
        r[item.fid].push({
          img_url: item.img_url,
          img_type: enumType[item.img_type]
        });
      });
      // 删除空数组/空项目
      for (let i = r.length - 1; i >= 0; i--) {
        if (Array.isArray(r[i])) {
          if (!(r.length>0)) {
            r.splice(i, 1);
          }
        } else {
          r.splice(i, 1);
        }
      }
      // 使用JSONP 跨域 返回用 callback('') 包裹着的 JSON 字符串
      res.send(`${req.query.callback}(${JSON.stringify(r)})`);
    }
  });
});
module.exports = Router;
