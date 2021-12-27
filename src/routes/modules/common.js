
const { Common } = require("../../controllers/index.js");
const { methodList } = require("../../utils/method-name");

module.exports = function (app) {
  app.post("/api/common/uploadimage", Common.uploadimage);

  methodList.forEach((item) => {
    app.post("/api/common/" + item.name, Common[item.name]);
  });
};
