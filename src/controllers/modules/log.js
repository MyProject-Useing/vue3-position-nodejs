const { Common } = require('../../models/index.js')
const { getClientIP } = require('../../utils/common')
/**
 * 新增数据
 * @param {请求} req
 * @param {响应*} res
 */
exports.addLoginLog = function (req, meg) {
  let indexName = 'tb_login_log'
  const ip = getClientIP(req)
  // 创建登录日志
  Common.create({
    indexName: indexName,
    dataList: JSON.stringify({
      account: req.body.account,
      loginip: ip,
      loginstate: meg,
    }),
  })
}

// module.exports = {
//   hasToken,
//   returnMessage,
//   getClientIP,
// }
