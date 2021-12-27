
const { Role } = require('../../controllers/index.js');

module.exports = function (app) {
  app.post('/api/role/add', Role.addRole);
  app.post('/api/role/edit', Role.updateRole);
};
