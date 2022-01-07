const jwt = require('../utils/jwt')
const { timeoutCode, successCode, errorCode } = require('../setting')

function hasToken(authorization) {
  let token = (authorization || '').replace('Bearer ', '')
  if (token && token.length > 0) {
    let tokenObj = jwt.verifyToken(token)
    if (tokenObj === 'err') {
      return null
    } else if (tokenObj === null) {
      return null
    } else {
      return tokenObj
    }
  } else {
    return null
  }
}

function returnMessage(message, type) {
  switch (type) {
    case 'error':
      return { code: errorCode, message: message }
    case 'success':
      return { code: successCode, message: message }
    case 'timeout':
      return { code: timeoutCode, message: message }
    default:
      return { code: successCode, message: message }
  }
}

/**
 * @getClientIP
 * @desc 获取用户 ip 地址
 * @param {Object} req - 请求
 */
function getClientIP(req) {
  let ip =
    req.headers['x-forwarded-for'] || // 判断是否有反向代理 IP
    req.connection.remoteAddress || // 判断 connection 的远程 IP
    req.socket.remoteAddress || // 判断后端的 socket 的 IP
    req.connection.socket.remoteAddress

  if (ip === '::1') {
    ip = '127.0.0.1'
  }
  return ip
}

module.exports = {
  hasToken,
  returnMessage,
  getClientIP,
}
