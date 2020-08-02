/*
 Navicat Premium Data Transfer

 Source Server         : mysql2
 Source Server Type    : MySQL
 Source Server Version : 50150
 Source Host           : localhost:3306
 Source Schema         : xiaomi

 Target Server Type    : MySQL
 Target Server Version : 50150
 File Encoding         : 65001

 Date: 02/08/2020 11:20:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for search
-- ----------------------------
DROP TABLE IF EXISTS `search`;
CREATE TABLE `search`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `input` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `list` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of search
-- ----------------------------
INSERT INTO `search` VALUES (1, '手机', 'Redmi 9 五星高品质');
INSERT INTO `search` VALUES (2, '个护', 'Redmi K30 Pro');
INSERT INTO `search` VALUES (3, '净水器', '小米 10');
INSERT INTO `search` VALUES (4, '路由器', '冰箱');
INSERT INTO `search` VALUES (5, '家电', '洗衣机');
INSERT INTO `search` VALUES (6, '耳机', '全部商品');
INSERT INTO `search` VALUES (7, '小米10', '米家插线板 快充版 27w');
INSERT INTO `search` VALUES (8, '洗衣机', 'Redmi 手环');
INSERT INTO `search` VALUES (9, '立式无线充插座', NULL);
INSERT INTO `search` VALUES (10, '冰箱', NULL);

SET FOREIGN_KEY_CHECKS = 1;
