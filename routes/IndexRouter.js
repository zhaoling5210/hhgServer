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
          if (!(r.length > 0)) {
            r.splice(i, 1);
          }
        } else {
          r.splice(i, 1);
        }
      }
      // 使用JSONP 跨域 返回用 callback('') 包裹着的 JSON 字符串
      // res.send(`${req.query.callback}(${JSON.stringify(r)})`);
      res.send(JSON.stringify({ data: r, status: "200", msg: "请求成功" }));
    }
  });
});
Router.get("/weddingList", (req, res) => {
  let { count, page, type } = req.query;
  let start = (page - 1) * count;
  let sql;
  if (type) {
    sql = `
      SELECT
        wedding.pic,
        wedding.title,
        wedding.wlb
      FROM
        wedding
      WHERE
        wedding.wlb = "${type}"
      LIMIT ${start}, ${count}`;
  } else {
    sql = `
      SELECT
        wedding.wid,
        wedding.pic,
        wedding.title,
        wedding.wlb
      FROM
        wedding
      LIMIT ${start}, ${count}`;
  }
  pool.query(sql, [], (err, result) => {
    result.forEach((item, index, arr) => {
      switch (item.wlb) {
        case "主题婚礼":
          arr[index].pic = "/wedding/zhuti/" + item.pic;
          break;
        case "草坪婚礼":
          arr[index].pic = "/wedding/caoping/" + item.pic;
          break;
        case "创意婚礼":
          arr[index].pic = "/wedding/chuangyi/" + item.pic;
          break;
        case "西式婚礼":
          arr[index].pic = "/wedding/xishi/" + item.pic;
          break;
        case "中式婚礼":
          arr[index].pic = "/wedding/zhongshi/" + item.pic;
          break;
      }
    });
    res.send(JSON.stringify({ data: result, status: "200", msg: "请求成功" }));
  });
});
Router.get("/weddingListCount", (req, res) => {
  let { type } = req.query;
  console.log(type);
  let sql;
  if (type) {
    sql = `
    SELECT
	    Count(*) AS total 
    FROM
	    wedding 
    WHERE
	    wedding.wlb = "${type}";`;
  } else {
    sql = `
    SELECT
	    COUNT(*) AS total 
    FROM
      wedding`;
  }
  pool.query(sql, [], (err, result) => {
    res.send(
      JSON.stringify({ data: result[0].total, status: "200", msg: "请求成功" })
    );
  });
});
Router.get("/weddingDetail", (req, res) => {
  let { wid } = req.query;
  sql = `
  SELECT
  	wedding.title,
  	wedding_detail.path 
  FROM
	  wedding,
	  wedding_detail 
  WHERE
  	wedding.wid = wedding_detail.wid 
  AND 
     wedding.wid = ${wid}
  ORDER BY
	  wedding_detail.path ASC
  `;
  pool.query(sql, [], (err, result) => {
    res.send(JSON.stringify({ status: "200", msg: "请求成功", data: result }));
  });
});
Router.get("/siyiList", (req, res) => {
  let sql = `SELECT
	  siyi.pic_small,
	  siyi.pic_big 
  FROM
    siyi`;
  pool.query(sql, [], (err, result) => {
    res.send({ code: 200, msg: "请求成功", data: result });
  });
});
module.exports = Router;
