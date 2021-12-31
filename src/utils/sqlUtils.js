// 获取要设置的属性名称
function GetSetValue(dataList) {
  let fieldList = [];
  let valueList = [];
  // "UPDATE tb_user SET email = ?, name = ?, active = ? WHERE id = ?",
  dataList.forEach(function (item) {
    fieldList.push(item.field + " = ?");
    valueList.push(item.value);
  });

  return {
    fieldSql: fieldList.join(","),
    valueList: valueList,
  };
}

// 获取分页的sql
function GetPaperStr(pager = null) {
  // 是否要分页
  var limit =
    pager != null
      ? ` limit ${(pager.pageNum - 1) * pager.pageSize} ,${pager.pageSize}`
      : "";
  return limit;
}

// 获取排序的sql
function GetSortStr(sort) {
  if (!sort || sort.length == 0) {
    return {};
  }
  return { orderBy: sort };
}

// 获取查询的sql
function GetSelectStr(selectObj) {
  if (!selectObj || typeof selectObj !== "object") {
    return {};
  }
  return { select: selectObj };
}

// 获取where的sql
function GetWhere(paramData = []) {
  var whereJoin = {};
  if (paramData != null && paramData.length > 0) {
    whereJoin = { where: {} };
    paramData.forEach((item) => {
      var itemSql = GetJoiner(item);
      if (itemSql) {
        whereJoin.where = { ...whereJoin.where, ...itemSql };
      }
    });
  }
  return whereJoin;
}

// / <summary>
// / 获取连接符
// / </summary>
// / <param name="type"></param>
// / <returns></returns>
function GetJoiner(item) {
  var timeSql = {};
  var field = item["field"] != null ? item["field"] : "";
  var value = item["value"] != null ? item["value"] : "";
  var matchType = item["type"] != null ? item["type"] : "等于";

  if (value && value.toString().length > 0) {
    switch (matchType) {
      case "内部匹配":
        timeSql[field] = { in: value };
        break;
      case "内部匹配非":
        timeSql[field] = { notIn: value };
        break;
      case "不等于":
        timeSql[field] = { not: value };
        break;
      case "包含":
        timeSql[field] = { contains: value };
        break;
      case "区间":
        var valueArr = JSON.parse(value);
        timeSql = ` ${field} between '${valueArr[0]}' and '${valueArr[1]}'`;
        break;
      case "等于":
      default:
        timeSql[field] = value;
        break;
    }

    let valueStr = typeof value === "string" ? value : JSON.stringify(value);
    // 防止注入
    if (
      valueStr.toLocaleLowerCase().includes("select") ||
      valueStr.toLocaleLowerCase().includes("update") ||
      valueStr.toLocaleLowerCase().includes("delete") ||
      valueStr.toLocaleLowerCase().includes("insert") ||
      valueStr.toLocaleLowerCase().includes("truncate") ||
      valueStr.toLocaleLowerCase().includes("drop") ||
      valueStr.toLocaleLowerCase().includes("create") ||
      valueStr.toLocaleLowerCase().includes("from") ||
      valueStr.toLocaleLowerCase().includes(" or ") ||
      valueStr.toLocaleLowerCase().includes(" and ") ||
      valueStr.toLocaleLowerCase().includes("exec")
    ) {
      timeSql[field] = "1122334455_";
    }
  } else {
    return {};
  }
  return timeSql;
}

// 拼接各类参数
function getWhereBase(reqBody) {
  let filterObj = {};

  // 是否有过滤条件
  if (reqBody.conditions && reqBody.conditions.length > 0) {
    const whereList = JSON.parse(reqBody.conditions.trim());
    if (typeof whereList === "object" && whereList.length > 0) {
      filterObj = { ...filterObj, ...GetWhere(whereList) };
    }
  }

  // 是否进行排序
  if (reqBody.sort && reqBody.sort.length > 0) {
    const sortList = JSON.parse(reqBody.sort.trim());
    if (typeof sortList === "object" && sortList.length > 0) {
      filterObj = { ...filterObj, ...GetSortStr(sortList) };
    } else {
      return null;
    }
  }

  // 是否只查一部分字段
  if (reqBody.select && reqBody.select.length > 0) {
    const selectList = JSON.parse(reqBody.select.trim());
    if (typeof selectList === "object") {
      filterObj = { ...filterObj, ...GetSelectStr(selectList) };
    } else {
      return null;
    }
  }

  // 是否只查一部分字段
  if (reqBody.select && reqBody.select.length > 0) {
    const selectList = JSON.parse(reqBody.select.trim());
    if (typeof selectList === "object") {
      filterObj = { ...filterObj, ...GetSelectStr(selectList) };
    } else {
      return null;
    }
  }

  // 设置数据字段
  if (reqBody.dataList && reqBody.dataList.length > 0) {
    const dataList = JSON.parse(reqBody.dataList.trim());
    if (typeof dataList === "object") {
      filterObj = {
        ...filterObj,
        ...{
          data: dataList,
        },
      };
    } else {
      return null;
    }
  }

  // 设置upsert数据
  if (reqBody.upsertData && reqBody.upsertData.length > 0) {
    console.log("upsertData", reqBody.upsertData);
    const upsertData = JSON.parse(reqBody.upsertData.trim());
    if (typeof upsertData === "object") {
      filterObj = {
        ...filterObj,
        ...upsertData,
      };
      console.log("filterObj", filterObj);
    } else {
      return null;
    }
  }

  // 是否分页查询
  //skip 指定应跳过列表中返回的对象的数量。
  //take 指定在列表中应该返回多少个对象（从列表的开头（正值）或结尾（负值）获取，或者从 cursor 位置（如果使用）。
  if (
    reqBody.skip &&
    reqBody.take &&
    !isNaN(reqBody.skip) &&
    !isNaN(reqBody.take)
  ) {
    filterObj = {
      ...filterObj,
      ...{ skip: parseInt(reqBody.skip), take: parseInt(reqBody.take) },
    };
  }

  return filterObj;
}

module.exports = {
  GetJoiner,
  GetWhere,
  GetSortStr,
  GetSelectStr,
  GetPaperStr,
  GetSetValue,
  getWhereBase,
};
