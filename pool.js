const { createPool } = require("mysql");
const pool = createPool({
  host:'127.0.0.1',
  port:'3306',
  user:'root',
  password:'',
  database:'hq',
  connectionLimit:20,
  multipleStatements:true
});
module.exports=pool;