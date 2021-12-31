const { Common } = require("../../models/index.js");

/**
 * 新增数据
 * @param {请求} req
 * @param {响应*} res
 */
exports.addRole = function (req, res) {
  let indexName = "tb_role";
  let reqData = JSON.parse(req.body.dataList);
  let { remark, name, modules } = reqData;

  // Common.upsert(
  //   {
  //     indexName: indexName,
  //     // dataList: JSON.stringify({ remark, name }),
  //     conditions: JSON.stringify([{ field: "name", value: name }]),
  //     upsertData: JSON.stringify({
  //       update: {
  //         remark,
  //       },
  //       create: {
  //         remark,
  //         name,
  //       },
  //     }),
  //   },
  //   function (response) {
  //     console.log('response',response)
  //     if (!response.data || response.code !== 200) {
  //       res.send({ code: 500, message: "新增失败" });
  //     } else {
  //       addRoleModel(response.data.id, modules, (rr) => res.send(rr));
  //     }
  //   }
  // );
  
  Common.create(
    {
      indexName: indexName,
      dataList: JSON.stringify({ remark, name }),
      // conditions: JSON.stringify([{ field: "name", value: name }]),
    },
    function (response) {
      if (!response.data || response.code !== 200) {
        res.send({ code: 500, message: "新增失败" });
      } else {
        addRoleModel(response.data.id, modules, (rr) => res.send(rr));
      }
    }
  );
};

/**
 * 新增数据
 * @param {请求} req
 * @param {响应*} res
 */
exports.updateRole = function (req, res) {
  let indexName = "tb_role";
  let conditions = JSON.parse(req.body.conditions);
  let roleid = conditions[0].value;
  let reqData = JSON.parse(req.body.dataList);
  let { remark, name, modules } = reqData;

  Common.update(
    {
      indexName: indexName,
      dataList: JSON.stringify({ remark, name }),
      conditions: JSON.stringify(conditions),
    },

    function (response) {
      if (response.code !== 200) {
        res.send({ code: 500, message: "修改失败" });
      } else {
        deleteRoleModel(roleid, () =>
          addRoleModel(roleid, modules, (resData) => {
            res.send(resData);
          })
        );
      }
    }
  );
};

function deleteRoleModel(roleid, callbak) {
  let roleModelName = "tb_menu_role";
  let ids = [];
  Common.findMany(
    {
      indexName: roleModelName,
      conditions: JSON.stringify([{ field: "roleid", value: roleid }]),
    },
    (res) => {
      if (res.data && res.data.length > 0) {
        res.data.forEach((item) => ids.push(item.id));
        Common.deleteMany(
          {
            indexName: roleModelName,
            conditions: JSON.stringify([
              { field: "id", type: "内部匹配", value: ids },
            ]),
          },
          (ress) => {
            callbak(ress);
          }
        );
      }
      callbak();
    }
  );
}

function addRoleModel(roleid, modules, callback) {
  let roleModelName = "tb_menu_role";
  let dataList = [];
  if (modules && modules.length > 0) {
    let mList = modules.split(",");
    mList.forEach((element) => {
      dataList.push({ roleid: roleid, menuid: element });
    });
    Common.createMany(
      {
        indexName: roleModelName,
        dataList: JSON.stringify(dataList),
      },
      callback
    );
  } else {
    if (typeof callback == "function") {
      callback({ code: 200, message: "新增成功" });
    }
  }
}
