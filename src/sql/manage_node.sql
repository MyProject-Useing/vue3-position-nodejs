/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : manage_node

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 30/12/2021 18:08:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_common_config
-- ----------------------------
DROP TABLE IF EXISTS `tb_common_config`;
CREATE TABLE `tb_common_config`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `createid` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_common_config
-- ----------------------------
INSERT INTO `tb_common_config` VALUES (1, 'password', '79010e2bba4fcfb1b2bc150b8f17e030', '2021-12-27 17:25:08', NULL);
INSERT INTO `tb_common_config` VALUES (2, 'logintimes', '5', '2021-12-27 17:25:08', NULL);

-- ----------------------------
-- Table structure for tb_language
-- ----------------------------
DROP TABLE IF EXISTS `tb_language`;
CREATE TABLE `tb_language`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `createid` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_language
-- ----------------------------
INSERT INTO `tb_language` VALUES (1, '2021-12-27 17:04:18', '华语', NULL);
INSERT INTO `tb_language` VALUES (2, '2021-12-27 17:04:34', '美国', NULL);
INSERT INTO `tb_language` VALUES (3, '2021-12-27 17:04:50', '欧洲', NULL);
INSERT INTO `tb_language` VALUES (4, '2021-12-27 17:04:55', '日本', NULL);
INSERT INTO `tb_language` VALUES (5, '2021-12-27 17:05:28', '韩国', NULL);
INSERT INTO `tb_language` VALUES (6, '2021-12-27 17:05:42', '泰国', NULL);
INSERT INTO `tb_language` VALUES (7, '2021-12-27 17:05:45', '印度', NULL);
INSERT INTO `tb_language` VALUES (8, '2021-12-27 17:05:51', '其他', NULL);

-- ----------------------------
-- Table structure for tb_means
-- ----------------------------
DROP TABLE IF EXISTS `tb_means`;
CREATE TABLE `tb_means`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `readtimes` int UNSIGNED NOT NULL COMMENT '阅读次数',
  `goodtimes` int UNSIGNED NULL DEFAULT NULL COMMENT '点赞次数',
  `badtimes` int UNSIGNED NULL DEFAULT NULL COMMENT '踩次数',
  `createid` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_means
-- ----------------------------

-- ----------------------------
-- Table structure for tb_menu
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu`;
CREATE TABLE `tb_menu`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '访问路径',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路径别名',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '模板路径',
  `redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '重定向路径',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '页面名称',
  `isLink` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '跳转到指定路径',
  `isHide` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '导航栏是否展示',
  `isKeepAlive` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '保持活跃',
  `isAffix` tinyint UNSIGNED NULL DEFAULT NULL,
  `isIframe` tinyint UNSIGNED NULL DEFAULT NULL COMMENT '是否内嵌',
  `roleids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色列表',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标class名称',
  `pid` int UNSIGNED NULL DEFAULT NULL COMMENT '父菜单id',
  `createid` int UNSIGNED NULL DEFAULT NULL COMMENT '创建人',
  `sort` int UNSIGNED NULL DEFAULT NULL COMMENT '排序顺序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_menu
-- ----------------------------
INSERT INTO `tb_menu` VALUES (2, '2021-12-30 10:00:18', '123', '213', '123', NULL, '1111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 112);

-- ----------------------------
-- Table structure for tb_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_menu_role`;
CREATE TABLE `tb_menu_role`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `roleid` int UNSIGNED NULL DEFAULT NULL,
  `menuid` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleid`(`roleid`) USING BTREE,
  INDEX `menuid`(`menuid`) USING BTREE,
  CONSTRAINT `tb_menu_role_ibfk_1` FOREIGN KEY (`roleid`) REFERENCES `tb_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tb_menu_role_ibfk_2` FOREIGN KEY (`menuid`) REFERENCES `tb_menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_menu_role
-- ----------------------------

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `createid` int UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `name`) USING BTREE,
  INDEX `createid`(`createid`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_role
-- ----------------------------

-- ----------------------------
-- Table structure for tb_study_sort
-- ----------------------------
DROP TABLE IF EXISTS `tb_study_sort`;
CREATE TABLE `tb_study_sort`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `tagname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_study_sort
-- ----------------------------

-- ----------------------------
-- Table structure for tb_study_types
-- ----------------------------
DROP TABLE IF EXISTS `tb_study_types`;
CREATE TABLE `tb_study_types`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tb_study_types
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `createtime` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名称',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '登录密码',
  `phone` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `sign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '签名',
  `gender` int UNSIGNED NULL DEFAULT NULL COMMENT '性别',
  `logintimes` int UNSIGNED NULL DEFAULT NULL COMMENT '登录次数',
  `account` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '账户名称',
  `roleids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色列表',
  `lastlogintime` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, '2021-12-20 14:59:16', '/image/userheads/labixiaoxin.png', '超级管理员', '79010e2bba4fcfb1b2bc150b8f17e030', NULL, '建议唯一账户，拥有系统最高权限。', 1, 0, 'admin', '', NULL);

SET FOREIGN_KEY_CHECKS = 1;
