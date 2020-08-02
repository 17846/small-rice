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

 Date: 02/08/2020 11:17:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for index_periphery
-- ----------------------------
DROP TABLE IF EXISTS `index_periphery`;
CREATE TABLE `index_periphery`  (
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
-- Records of index_periphery
-- ----------------------------
INSERT INTO `index_periphery` VALUES (1, 'main', '1.jpg', NULL, NULL, NULL, NULL, 'javaScript:');
INSERT INTO `index_periphery` VALUES (2, 'hot', '3.jpg', '米家迷你保温杯', '可以随身携带的温度', '49元', '', 'javaScript:');
INSERT INTO `index_periphery` VALUES (3, 'hot', '3.jpg', '米家迷你保温杯', '可以随身携带的温度', '49元', '', 'javaScript:');
INSERT INTO `index_periphery` VALUES (4, 'hot', '3.jpg', '米家迷你保温杯', '可以随身携带的温度', '49元', '', 'javaScript:');
INSERT INTO `index_periphery` VALUES (5, 'hot', '3.jpg', '米家迷你保温杯', '可以随身携带的温度', '49元', '', 'javaScript:');
INSERT INTO `index_periphery` VALUES (6, 'hot', '3.jpg', '米家迷你保温杯', '可以随身携带的温度', '49元', '', 'javaScript:');
INSERT INTO `index_periphery` VALUES (7, 'hot', '3.jpg', '米家迷你保温杯', '可以随身携带的温度', '49元', '', 'javaScript:');
INSERT INTO `index_periphery` VALUES (8, 'hot', '3.jpg', '米家迷你保温杯', '可以随身携带的温度', '49元', '', 'javaScript:');
INSERT INTO `index_periphery` VALUES (9, 'hotS', '5.jpg', '8H 乳胶弹簧静音床垫 M3', '', '1599元起', '', 'javaScript:');
INSERT INTO `index_periphery` VALUES (10, 'main', '2.jpg', '', '', '', '', 'javaScript:');
INSERT INTO `index_periphery` VALUES (11, 'maior', '4.jpg', '自动折叠伞', '防泼水伞布， 轻盈拒水', '99元', '', 'javaScript:');
INSERT INTO `index_periphery` VALUES (12, 'maior', '4.jpg', '自动折叠伞', '防泼水伞布， 轻盈拒水', '99元', '', 'javaScript:');
INSERT INTO `index_periphery` VALUES (13, 'maior', '4.jpg', '自动折叠伞', '防泼水伞布， 轻盈拒水', '99元', '', 'javaScript:');
INSERT INTO `index_periphery` VALUES (14, 'maior', '4.jpg', '自动折叠伞', '防泼水伞布， 轻盈拒水', '99元', '', 'javaScript:');
INSERT INTO `index_periphery` VALUES (15, 'maior', '4.jpg', '自动折叠伞', '防泼水伞布， 轻盈拒水', '99元', '', 'javaScript:');
INSERT INTO `index_periphery` VALUES (16, 'maior', '4.jpg', '自动折叠伞', '防泼水伞布， 轻盈拒水', '99元', '', 'javaScript:');
INSERT INTO `index_periphery` VALUES (17, 'maior', '4.jpg', '自动折叠伞', '防泼水伞布， 轻盈拒水', '99元', '', 'javaScript:');
INSERT INTO `index_periphery` VALUES (18, 'maiorS', '6.jpg', '米家经典方框太阳镜', NULL, '99元', NULL, 'javaScript:');

SET FOREIGN_KEY_CHECKS = 1;
