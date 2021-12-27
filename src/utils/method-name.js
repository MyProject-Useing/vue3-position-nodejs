exports.methodList = [
  { name: "findMany", type: "findMany", message: "查询成功！" },
  { name: "findUnique", type: "findUnique", message: "查询成功！" }, // 查询第一条 只能id查询
  { name: "update", type: "update", message: "修改成功！" },
  { name: "upsert", type: "upsert", message: "更新成功！" }, // 覆盖新增
  { name: "create", type: "create", message: "新增成功！" },
  { name: "createMany", type: "createMany", message: "新增成功！" }, // 创建多条
  { name: "delete", type: "delete", message: "删除成功！" },
  { name: "deleteMany", type: "deleteMany", message: "删除成功！" },
];
