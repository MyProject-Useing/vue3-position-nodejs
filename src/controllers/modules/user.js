const { Common } = require("../../models/index.js");
const { GetMenulist, SetEnableMenu } = require("../../utils/menu.js");
const jwt = require("../../utils/jwt.js");

const { hasToken } = require("../../utils/common");
const { userDetaultPhoto } = require("../../setting");

const tbName = "tb_user";

// 获取用户基础信息
exports.getUserInfo = async (req, res) => {
  let tokenObj = hasToken(req.headers.authorization);
  if (tokenObj != null) {
    await Common.findUnique(
      {
        indexName: tbName,
        conditions: JSON.stringify([{ field: "id", value: tokenObj.id }]),
      },
      (firstUser) => {
        let resData = {
          userid: firstUser.data.id,
          username: firstUser.data.username,
          photo: firstUser.data.photo || userDetaultPhoto,
          userMenu: [],
          roleids: firstUser.data.roleids,
        };

        if (!resData.roleids || resData.roleids.length === 0) {
          return errSend(res, resData);
        }

        const filterList = [
          {
            field: "roleid",
            value: resData.roleids.split(","),
            type: "内部匹配",
          },
        ];
        Common.findMany(
          {
            indexName: "tb_menu_role",
            conditions: JSON.stringify(filterList),
          },
          function (result) {
            if (result.code !== 200 || result.data.length === 0) {
              return errSend(res, resData);
            }

            //对模块进行排序
            Common.findMany(
              {
                indexName: "tb_menu",
                // conditions: JSON.stringify([
                //   { field: "enabledmark", value: 1 },
                // ]),
                sort: JSON.stringify([{ sort: "asc" }]),
              },
              function (menusRes) {
                if (menusRes.code !== 200 || menusRes.data.length === 0) {
                  return errSend(res, resData);
                }

                let menuList = GetMenulist(menusRes.data);
                menuList.forEach((item) => SetEnableMenu(item, result.data));
                res.send({
                  code: 200,
                  message: "验证成功！",
                  data: {
                    ...resData,
                    userMenu: menuList,
                  },
                });
              }
            );
          }
        );
      }
    );
  }
};

// Find a single User with a id
exports.login = function (req, res) {
  var tableName = tbName;
  var filterList = [
    { field: "account", type: "等于", value: req.body.account },
  ];

  Common.findMany(
    {
      indexName: tableName,
      conditions: JSON.stringify(filterList),
    },
    function (result) {
      if (result.code !== 200) {
        res.send(result);
      } else if (!result.data || result.data.length === 0) {
        res.send({ code: 500, message: "账户不存在或密码错误！" });
      } else {
        var _data = result.data[0];
        var logintimes = _data.logintimes || 0;
        if (_data.password === req.body.password) {
          var accessToken = jwt.generateToken({
            id: _data.id,
            username: _data.username,
            roleids: _data.roleids,
            photo: _data.photo,
          });
          res.send({
            code: 200,
            message: "登录成功！",
            data: {
              accessToken,
            },
          });
          Common.update({
            indexName: tableName,
            dataList: JSON.stringify({ logintimes: 0 }),
            conditions: JSON.stringify([
              { field: "id", type: "等于", value: _data.id },
            ]),
          });
        } else if (logintimes === 5) {
          res.send({ code: 500, message: "用户已被锁定，请联系管理员！" });
        } else {
          logintimes++;
          Common.update({
            indexName: tableName,
            dataList: JSON.stringify({ logintimes: logintimes }),
            conditions: JSON.stringify([
              { field: "id", type: "等于", value: _data.id },
            ]),
          });
          if (logintimes === 5) {
            res.send({ code: 500, message: "用户已被锁定，请联系管理员！" });
          } else {
            res.send({
              code: 500,
              message: `密码输入错误，还有${5 - logintimes}次机会！`,
            });
          }
        }
      }
    }
  );
};

/**
 * 新增数据
 * @param {请求} req
 * @param {响应*} res
 */
exports.addUser = (req, res) => {
  let dataList = JSON.parse(req.body.dataList);
  if (typeof dataList === "object") {
    Common.findMany(
      {
        indexName: tbName,
        conditions: JSON.stringify([
          { field: "account", value: dataList.account },
        ]),
      },
      (ruser) => {
        if (ruser.code === 200 && ruser.data && ruser.data.length > 0) {
          return res.send({ code: 500, message: "用户已存在！" });
        }

        if (!dataList.password) {
          Common.findUnique(
            {
              indexName: "tb_common_config",
              conditions: JSON.stringify([{ field: "id", value: 1 }]),
            },
            (ddata) => {
              dataList = { ...dataList, password: ddata.data.value };
              Common.create(
                { indexName: tbName, dataList: JSON.stringify(dataList) },
                (result) => res.send(result)
              );
            }
          );
        } else {
          Common.create(
            { indexName: tbName, dataList: JSON.stringify(dataList) },
            (result) => res.send(result)
          );
        }
      }
    );
  }
};

/**
 * 新增数据
 * @param {请求} req
 * @param {响应*} res
 */
exports.updateDefaultPwd = function (req, res) {
  let dataList = JSON.parse(req.body.dataList);
  if (typeof dataList === "object") {
    Common.update(
      {
        indexName: "tb_common_config",
        dataList: JSON.stringify(dataList),
        conditions: JSON.stringify([{ field: "id", value: 1 }]),
      },
      (result) => res.send(result)
    );
  }
};

// Find a single User with a id
exports.loginOut = function (req, res) {
  res.send({ code: 200, message: "用户已退出" });
};

/**
 * 重置用户密码
 * @param {请求} req
 * @param {响应*} res
 */
exports.reloadUserPwd = function (req, res) {
  res.send({ code: 200 });
  // let dataList = JSON.parse(req.body.dataList)
  // if (typeof dataList === 'object') {
  //   Common.update(
  //     {
  //       indexName: 'tb_common_config',
  //       dataList: JSON.stringify(dataList),
  //       conditions: JSON.stringify([{ field: 'id', value: 1 }]),
  //     },
  //     (result) => res.send(result)
  //   )
  // }
};

function errSend(res, resData) {
  res.send({
    code: 200,
    message: "未能查询到当前用户权限",
    data: resData,
  });
}
