// 引入模块依赖
const jwtUtils = require("jsonwebtoken");
const { privateKey, timeout } = require("../setting");

// 创建 token 类
class Jwt {
  constructor(data) {
    this.data = data;
    this._id = null; // 用户自定义 存放userid
    this._date = null; // 过期时间
    this._creatDate = null; // 创建时间
  }
  // 重新生成 token
  refreshToken() {
    let data = this.data;
    let created = Math.floor(Date.now() / 1000);
    let token = jwtUtils.sign(
      data,
      privateKey,
      { expiresIn: created + timeout * 60 }, // 过期时间 30 分钟
      { algorithm: "RS256" }
    );
    return token;
  }
  //生成token
  generateToken(data) {
    if (data) {
      this.data = data;
    }
    let created = Math.floor(Date.now() / 1000);
    let token = jwtUtils.sign(
      data,
      privateKey,
      { expiresIn: created + timeout * 60 } // 过期时间 30 分钟
    );
    return token;
  }

  // 校验token
  verifyToken(data) {
    let res = null;
    if (data) {
      this.data = data;
    }
    try {
      let result = jwtUtils.verify(data, privateKey) || {};
      this._date = result.exp;
      this._creatDate = result.iat;
      let { exp = 0 } = result,
        current = Math.floor(Date.now() / 1000);
      if (current <= exp) {
        res = result;
      }
    } catch (e) {
      res = "err";
    }
    return res;
  }
}

module.exports = new Jwt();
