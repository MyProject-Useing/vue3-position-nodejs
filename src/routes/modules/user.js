const { User } = require("../../controllers/index.js");

module.exports = function (app) {
  app.post("/api/login", User.login);
  app.post("/api/user/add", User.addUser);
  app.post("/api/user/info", User.getUserInfo);
  app.post("/api/user/updateDefaultPwd", User.updateDefaultPwd);
  app.post("/api/user/getMenuByRoleid", User.getMenuByRoleid);
  app.post("/api/user/logout", User.loginOut);
  app.post("/api/user/resetPwd ", User.reloadUserPwd);
};
