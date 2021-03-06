/*
 Navicat Premium Data Transfer

 Source Server         : phpmystudy
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : pearadminflask

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 01/04/2021 23:46:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_admin_log`;
CREATE TABLE `admin_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `uid` int(11) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `desc` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `success` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1146 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for admin_photo
-- ----------------------------
DROP TABLE IF EXISTS `admin_photo`;
CREATE TABLE `admin_photo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mime` char(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `size` char(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_photo
-- ----------------------------
INSERT INTO `admin_photo` VALUES (3, '6958819_pear-admin_1607443454_1.png', 'http://127.0.0.1:5000/_uploads/photos/6958819_pear-admin_1607443454_1.png', 'image/png', '2204', '2021-03-19 18:53:02');
INSERT INTO `admin_photo` VALUES (17, '1617291580000.jpg', 'http://127.0.0.1:5000/_uploads/photos/1617291580000.jpg', 'image/png', '94211', '2021-04-01 23:39:41');

-- ----------------------------
-- Table structure for admin_power
-- ----------------------------
DROP TABLE IF EXISTS `admin_power`;
CREATE TABLE `admin_power`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '????????????',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????',
  `type` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????',
  `code` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????',
  `open_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????',
  `parent_id` varchar(19) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????',
  `icon` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????',
  `sort` int(11) NULL DEFAULT NULL COMMENT '??????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `enable` int(11) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_power
-- ----------------------------
INSERT INTO `admin_power` VALUES (1, '????????????', '0', '', NULL, NULL, '0', 'layui-icon layui-icon-set-fill', 1, NULL, NULL, 1);
INSERT INTO `admin_power` VALUES (3, '????????????', '1', 'admin:user:main', '/admin/user/', '_iframe', '1', 'layui-icon layui-icon layui-icon layui-icon layui-icon-rate', 1, NULL, NULL, 1);
INSERT INTO `admin_power` VALUES (4, '????????????', '1', 'admin:power:main', '/admin/power/', '_iframe', '1', NULL, 2, NULL, NULL, 1);
INSERT INTO `admin_power` VALUES (9, '????????????', '1', 'admin:role:main', '/admin/role', '_iframe', '1', 'layui-icon layui-icon-username', 2, '2021-03-16 22:24:58', '2021-03-25 19:15:24', 1);
INSERT INTO `admin_power` VALUES (12, '????????????', '1', 'admin:monitor:main', '/admin/monitor', '_iframe', '1', 'layui-icon layui-icon-vercode', 5, '2021-03-18 22:05:19', '2021-03-25 19:15:27', 1);
INSERT INTO `admin_power` VALUES (13, '????????????', '1', 'admin:log:index', '/admin/log', '_iframe', '1', 'layui-icon layui-icon-read', 4, '2021-03-18 22:37:10', '2021-03-25 19:15:27', 1);
INSERT INTO `admin_power` VALUES (17, '????????????', '0', '', '', '', '0', 'layui-icon layui-icon-camera', 2, '2021-03-19 18:56:23', '2021-03-25 19:15:08', 1);
INSERT INTO `admin_power` VALUES (18, '????????????', '1', 'admin:file:main', '/admin/file', '_iframe', '17', 'layui-icon layui-icon-camera', 5, '2021-03-19 18:57:19', '2021-03-25 19:15:13', 1);
INSERT INTO `admin_power` VALUES (21, '????????????', '2', 'admin:power:add', '', '', '4', 'layui-icon layui-icon-add-circle', 1, '2021-03-22 19:43:52', '2021-03-25 19:15:22', 1);
INSERT INTO `admin_power` VALUES (22, '????????????', '2', 'admin:user:add', '', '', '3', 'layui-icon layui-icon-add-circle', 1, '2021-03-22 19:45:40', '2021-03-25 19:15:17', 1);
INSERT INTO `admin_power` VALUES (23, '????????????', '2', 'admin:user:edit', '', '', '3', 'layui-icon layui-icon-rate', 2, '2021-03-22 19:46:15', '2021-03-25 19:15:18', 1);
INSERT INTO `admin_power` VALUES (24, '????????????', '2', 'admin:user:remove', '', '', '3', 'layui-icon None', 3, '2021-03-22 19:46:51', '2021-03-25 19:15:18', 1);
INSERT INTO `admin_power` VALUES (25, '????????????', '2', 'admin:power:edit', '', '', '4', 'layui-icon layui-icon-edit', 2, '2021-03-22 19:47:36', '2021-03-25 19:15:22', 1);
INSERT INTO `admin_power` VALUES (26, '????????????', '2', 'admin:power:remove', '', '', '4', 'layui-icon layui-icon-delete', 3, '2021-03-22 19:48:17', '2021-03-25 19:15:23', 1);
INSERT INTO `admin_power` VALUES (27, '????????????', '2', 'admin:role:add', '', '', '9', 'layui-icon layui-icon-add-circle', 1, '2021-03-22 19:49:09', '2021-03-25 19:15:24', 1);
INSERT INTO `admin_power` VALUES (28, '????????????', '2', 'admin:role:edit', '', '', '9', 'layui-icon layui-icon-edit', 2, '2021-03-22 19:49:41', '2021-03-25 19:15:25', 1);
INSERT INTO `admin_power` VALUES (29, '????????????', '2', 'admin:role:remove', '', '', '9', 'layui-icon layui-icon-delete', 3, '2021-03-22 19:50:15', '2021-03-25 19:15:26', 1);
INSERT INTO `admin_power` VALUES (30, '????????????', '2', 'admin:role:power', '', '', '9', 'layui-icon layui-icon-component', 4, '2021-03-22 19:50:54', '2021-03-25 19:15:26', 1);
INSERT INTO `admin_power` VALUES (31, '????????????', '2', 'admin:file:add', '', '', '18', 'layui-icon layui-icon-add-circle', 1, '2021-03-22 19:58:05', '2021-03-25 19:15:28', 1);
INSERT INTO `admin_power` VALUES (32, '????????????', '2', 'admin:file:delete', '', '', '18', 'layui-icon layui-icon-delete', 2, '2021-03-22 19:58:45', '2021-03-25 19:15:29', 1);

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????',
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????',
  `sort` int(11) NULL DEFAULT NULL COMMENT '??????',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `enable` int(11) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES (1, '?????????', 'admin', NULL, '?????????', 1, NULL, NULL, 1);
INSERT INTO `admin_role` VALUES (2, '????????????', 'common', NULL, '????????????????????????????????????', 2, '2021-03-22 20:02:38', '2021-04-01 22:29:56', 1);

-- ----------------------------
-- Table structure for admin_role_power
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_power`;
CREATE TABLE `admin_role_power`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `power_id` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `power_id`(`power_id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  CONSTRAINT `admin_role_power_ibfk_1` FOREIGN KEY (`power_id`) REFERENCES `admin_power` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `admin_role_power_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_role_power
-- ----------------------------
INSERT INTO `admin_role_power` VALUES (132, 1, 1);
INSERT INTO `admin_role_power` VALUES (133, 3, 1);
INSERT INTO `admin_role_power` VALUES (134, 4, 1);
INSERT INTO `admin_role_power` VALUES (135, 9, 1);
INSERT INTO `admin_role_power` VALUES (136, 12, 1);
INSERT INTO `admin_role_power` VALUES (137, 13, 1);
INSERT INTO `admin_role_power` VALUES (138, 17, 1);
INSERT INTO `admin_role_power` VALUES (139, 18, 1);
INSERT INTO `admin_role_power` VALUES (140, 21, 1);
INSERT INTO `admin_role_power` VALUES (141, 22, 1);
INSERT INTO `admin_role_power` VALUES (142, 23, 1);
INSERT INTO `admin_role_power` VALUES (143, 24, 1);
INSERT INTO `admin_role_power` VALUES (144, 25, 1);
INSERT INTO `admin_role_power` VALUES (145, 26, 1);
INSERT INTO `admin_role_power` VALUES (146, 27, 1);
INSERT INTO `admin_role_power` VALUES (147, 28, 1);
INSERT INTO `admin_role_power` VALUES (148, 29, 1);
INSERT INTO `admin_role_power` VALUES (149, 30, 1);
INSERT INTO `admin_role_power` VALUES (150, 31, 1);
INSERT INTO `admin_role_power` VALUES (151, 32, 1);
INSERT INTO `admin_role_power` VALUES (159, 1, 2);
INSERT INTO `admin_role_power` VALUES (160, 3, 2);
INSERT INTO `admin_role_power` VALUES (161, 4, 2);
INSERT INTO `admin_role_power` VALUES (162, 9, 2);
INSERT INTO `admin_role_power` VALUES (163, 12, 2);
INSERT INTO `admin_role_power` VALUES (164, 13, 2);
INSERT INTO `admin_role_power` VALUES (165, 17, 2);
INSERT INTO `admin_role_power` VALUES (166, 18, 2);

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '?????????',
  `password_hash` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????',
  `create_at` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `update_at` datetime(0) NULL DEFAULT NULL COMMENT '????????????',
  `enable` int(11) NULL DEFAULT NULL COMMENT '??????',
  `realname` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '????????????',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '??????',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES (1, 'admin', 'pbkdf2:sha256:150000$raM7mDSr$58fe069c3eac01531fc8af85e6fc200655dd2588090530084d182e6ec9d52c85', NULL, '2021-04-01 23:39:41', 1, '????????????', '???????????????????????????????????????????????????????????????', 'http://127.0.0.1:5000/_uploads/photos/1617291580000.jpg');
INSERT INTO `admin_user` VALUES (7, 'test', 'pbkdf2:sha256:150000$cRS8bYNh$adb57e64d929863cf159f924f74d0634f1fecc46dba749f1bfaca03da6d2e3ac', '2021-03-22 20:03:42', '2021-04-01 23:37:39', 1, '????????????', '????????????????????????????????????????????????????????????', '/static/admin/admin/images/avatar.jpg');

-- ----------------------------
-- Table structure for admin_user_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_role`;
CREATE TABLE `admin_user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '??????',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '????????????',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '????????????',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `admin_user_role_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `admin_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `admin_user_role_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `admin_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_user_role
-- ----------------------------
INSERT INTO `admin_user_role` VALUES (14, 1, 1);
INSERT INTO `admin_user_role` VALUES (17, 7, 2);

-- ----------------------------
-- Table structure for alembic_version
-- ----------------------------
DROP TABLE IF EXISTS `alembic_version`;
CREATE TABLE `alembic_version`  (
  `version_num` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of alembic_version
-- ----------------------------
INSERT INTO `alembic_version` VALUES ('85fcf9a09800');

SET FOREIGN_KEY_CHECKS = 1;
