module.exports = function (app) {
  require('./modules/common.js')(app)
  require('./modules/user.js')(app)
  require('./modules/role.js')(app)
}
