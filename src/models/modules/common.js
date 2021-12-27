const prisma = require("../db.js");
const utils = require("../../utils/sqlUtils.js");
const { methodList } = require("../../utils/method-name");

/**
 *  通过方法名映射条件
 * @param {数据列表 object} reqBody
 * @param {方法名 string} type
 * @param {回调 function} callback
 * @returns
 */
async function callMethod(reqBody, options, callback) {
  const tableName = reqBody.indexName;
  if (!prisma[tableName]) {
    if (typeof callback == "function") {
      callback({ code: 500, message: "无法识别：" + tableName });
    }
    return null;
  }

  const filterObj = utils.getWhereBase(reqBody);

  if (filterObj != null) {
    const resData = await prisma[tableName][options.type](filterObj);
    if (typeof callback == "function") {
      callback({
        code: 200,
        message: options.message,
        data: options.type === "createMany" ? null : resData,
      });
    }
  } else {
    if (typeof callback == "function") {
      callback({ code: 500, message: "条件拼接失败！" });
    }
  }
}

methodList.forEach((item) => {
  exports[item.name] = async (reqBody, result) =>
    callMethod(reqBody, item, result);
});
