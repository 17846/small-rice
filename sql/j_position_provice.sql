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

 Date: 02/08/2020 11:19:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for j_position_provice
-- ----------------------------
DROP TABLE IF EXISTS `j_position_provice`;
CREATE TABLE `j_position_provice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `provice_id` int(11) UNSIGNED NOT NULL COMMENT '省份id、省份编号',
  `provice_name` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省份名称',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `provice_id`(`provice_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '省份数据库' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of j_position_provice
-- ----------------------------
INSERT INTO `j_position_provice` VALUES (1, 11, '北京市');
INSERT INTO `j_position_provice` VALUES (2, 12, '天津市');
INSERT INTO `j_position_provice` VALUES (3, 13, '河北省');
INSERT INTO `j_position_provice` VALUES (4, 14, '山西省');
INSERT INTO `j_position_provice` VALUES (5, 15, '内蒙古自治区');
INSERT INTO `j_position_provice` VALUES (6, 21, '辽宁省');
INSERT INTO `j_position_provice` VALUES (7, 22, '吉林省');
INSERT INTO `j_position_provice` VALUES (8, 23, '黑龙江省');
INSERT INTO `j_position_provice` VALUES (9, 31, '上海市');
INSERT INTO `j_position_provice` VALUES (10, 32, '江苏省');
INSERT INTO `j_position_provice` VALUES (11, 33, '浙江省');
INSERT INTO `j_position_provice` VALUES (12, 34, '安徽省');
INSERT INTO `j_position_provice` VALUES (13, 35, '福建省');
INSERT INTO `j_position_provice` VALUES (14, 36, '江西省');
INSERT INTO `j_position_provice` VALUES (15, 37, '山东省');
INSERT INTO `j_position_provice` VALUES (16, 41, '河南省');
INSERT INTO `j_position_provice` VALUES (17, 42, '湖北省');
INSERT INTO `j_position_provice` VALUES (18, 43, '湖南省');
INSERT INTO `j_position_provice` VALUES (19, 44, '广东省');
INSERT INTO `j_position_provice` VALUES (20, 45, '广西壮族自治区');
INSERT INTO `j_position_provice` VALUES (21, 46, '海南省');
INSERT INTO `j_position_provice` VALUES (22, 50, '重庆市');
INSERT INTO `j_position_provice` VALUES (23, 51, '四川省');
INSERT INTO `j_position_provice` VALUES (24, 52, '贵州省');
INSERT INTO `j_position_provice` VALUES (25, 53, '云南省');
INSERT INTO `j_position_provice` VALUES (26, 54, '西藏自治区');
INSERT INTO `j_position_provice` VALUES (27, 61, '陕西省');
INSERT INTO `j_position_provice` VALUES (28, 62, '甘肃省');
INSERT INTO `j_position_provice` VALUES (29, 63, '青海省');
INSERT INTO `j_position_provice` VALUES (30, 64, '宁夏回族自治区');
INSERT INTO `j_position_provice` VALUES (31, 65, '新疆维吾尔自治区');

SET FOREIGN_KEY_CHECKS = 1;
