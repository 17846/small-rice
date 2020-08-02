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

 Date: 02/08/2020 11:17:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for index_parts
-- ----------------------------
DROP TABLE IF EXISTS `index_parts`;
CREATE TABLE `index_parts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oldprice` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_parts
-- ----------------------------
INSERT INTO `index_parts` VALUES (1, 'main', '1.jpg', NULL, NULL, NULL, NULL, 'javaScript:');
INSERT INTO `index_parts` VALUES (2, 'hot', '3.jpg', '小米无线充电宝青春版 10000mAh', '能量满满， 无线有线都能充', '129元', '', 'javaScript:');
INSERT INTO `index_parts` VALUES (3, 'hot', '3.jpg', '小米无线充电宝青春版 10000mAh', '能量满满， 无线有线都能充', '129元', '', 'javaScript:');
INSERT INTO `index_parts` VALUES (4, 'hot', '3.jpg', '小米无线充电宝青春版 10000mAh', '能量满满， 无线有线都能充', '129元', '', 'javaScript:');
INSERT INTO `index_parts` VALUES (5, 'hot', '3.jpg', '小米无线充电宝青春版 10000mAh', '能量满满， 无线有线都能充', '129元', '', 'javaScript:');
INSERT INTO `index_parts` VALUES (6, 'hot', '3.jpg', '小米无线充电宝青春版 10000mAh', '能量满满， 无线有线都能充', '129元', '', 'javaScript:');
INSERT INTO `index_parts` VALUES (7, 'hot', '3.jpg', '小米无线充电宝青春版 10000mAh', '能量满满， 无线有线都能充', '129元', '', 'javaScript:');
INSERT INTO `index_parts` VALUES (8, 'hot', '3.jpg', '小米无线充电宝青春版 10000mAh', '能量满满， 无线有线都能充', '129元', '', 'javaScript:');
INSERT INTO `index_parts` VALUES (9, 'hotS', '5.jpg', '小米9 SE 街头风保护壳', '', '49元', '', 'javaScript:');
INSERT INTO `index_parts` VALUES (10, 'main', '2.jpg', '', '', '', '', 'javaScript:');
INSERT INTO `index_parts` VALUES (11, 'maior', '4.jpg', '小米立式无线充电器 通用快充20W', '横竖可充， 迅速感应边冲边玩', '99元', '', 'javaScript:');
INSERT INTO `index_parts` VALUES (12, 'maior', '4.jpg', '小米立式无线充电器 通用快充20W', '横竖可充， 迅速感应边冲边玩', '99元', '', 'javaScript:');
INSERT INTO `index_parts` VALUES (13, 'maior', '4.jpg', '小米立式无线充电器 通用快充20W', '横竖可充， 迅速感应边冲边玩', '99元', '', 'javaScript:');
INSERT INTO `index_parts` VALUES (14, 'maior', '4.jpg', '小米立式无线充电器 通用快充20W', '横竖可充， 迅速感应边冲边玩', '99元', '', 'javaScript:');
INSERT INTO `index_parts` VALUES (15, 'maior', '4.jpg', '小米立式无线充电器 通用快充20W', '横竖可充， 迅速感应边冲边玩', '99元', '', 'javaScript:');
INSERT INTO `index_parts` VALUES (16, 'maior', '4.jpg', '小米立式无线充电器 通用快充20W', '横竖可充， 迅速感应边冲边玩', '99元', '', 'javaScript:');
INSERT INTO `index_parts` VALUES (17, 'maior', '4.jpg', '小米立式无线充电器 通用快充20W', '横竖可充， 迅速感应边冲边玩', '99元', '', 'javaScript:');
INSERT INTO `index_parts` VALUES (18, 'maiorS', '6.jpg', '小米插线板 (含3口USB 2A快充)', NULL, '49元', NULL, 'javaScript:');

SET FOREIGN_KEY_CHECKS = 1;
