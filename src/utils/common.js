const jwt = require("../utils/jwt");
const { timeoutCode, successCode, errorCode } = require("../setting");

function hasToken(authorization) {
  let token = (authorization || "").replace("Bearer ", "");
  if (token && token.length > 0) {
    let tokenObj = jwt.verifyToken(token);
    if (tokenObj === "err") {
      return null;
    } else if (tokenObj === null) {
      return null;
    } else {
      return tokenObj;
    }
  } else {
    return null;
  }
}

function returnMessage(message, type) {
  switch (type) {
    case "error":
      return { code: errorCode, message: message };
    case "success":
      return { code: successCode, message: message };
    case "timeout":
      return { code: timeoutCode, message: message };
    default:
      return { code: successCode, message: message };
  }
}

module.exports = {
  hasToken,
  returnMessage,
};
