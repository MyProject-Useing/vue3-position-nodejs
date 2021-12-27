const pathLib = require("path");
const fs = require("fs");

const { Common } = require("../../models/index.js");
const { methodList } = require("../../utils/method-name");
const { hasToken, returnMessage } = require("../../utils/common");

methodList.forEach((item) => {
  exports[item.name] = (req, res) => {
    if (hasToken(req.headers.authorization)) {
      Common[item.name](req.body, (result) => res.send(result));
    } else {
      res.send(returnMessage("timeout", "用户已超时，请重新登录"));
    }
  };
});

/**
 * 上传图片
 * @param {请求} req
 * @param {响应*} res
 */
exports.uploadimage = function (req, res) {
  const files = req.files;
  let file;
  let filename;
  let newPath = "public/image/means/";
  if (!files || files.length == 0) {
    return res.send({ code: 500, message: "文件不能为空！" });
  }
  file = files[0];
  filename = new Date().getTime() + pathLib.parse(file.originalname).ext;
  newPath = newPath + filename;
  fs.rename(file.path, newPath, function (err) {
    if (err) {
      res.send(returnMessage("error", "图片保存失败！"));
    } else {
      res.send({ code: 200, mgs: "上传成功", data: "image/means/" + filename });
    }
  });
};
