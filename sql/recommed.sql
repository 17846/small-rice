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

 Date: 02/08/2020 11:20:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for recommed
-- ----------------------------
DROP TABLE IF EXISTS `recommed`;
CREATE TABLE `recommed`  (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `img` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `good` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recommed
-- ----------------------------
INSERT INTO `recommed` VALUES (00000000001, '1.jpg', '手机USB micro 数据线', 9.90, '2.1万人好评', 'javaScript:');
INSERT INTO `recommed` VALUES (00000000002, '2.jpg', '米家压力1H电饭煲 1S', 1099.00, '263人好评', 'javaScript:');
INSERT INTO `recommed` VALUES (00000000003, '3.jpg', '米家破壁料理机', 699.00, '1373人好评', 'javaScript:');
INSERT INTO `recommed` VALUES (00000000004, '4.jpg', '小米米家照片打印机彩色相纸套装', 59.00, '552人好评', 'javaScript:');
INSERT INTO `recommed` VALUES (00000000005, '5.jpg', '小米米家照片打印机', 499.00, '6647人好评', 'javaScript:');
INSERT INTO `recommed` VALUES (00000000006, '6.png', '小米手环4', 149.00, '3万人好评', 'javaScript:');
INSERT INTO `recommed` VALUES (00000000007, '7.jpg', '小爱老师 4G网络尊享版', 849.00, '881人好评', 'javaScript:');
INSERT INTO `recommed` VALUES (00000000008, '8.jpg', '空调 (1.5匹/变频/一级能效)', 1999.00, NULL, 'javaScript:');
INSERT INTO `recommed` VALUES (00000000009, '9.jpg', '知吾煮汤锅 米家定制', 99.00, '7561人好评', 'javaScript:');
INSERT INTO `recommed` VALUES (00000000010, '10.jpg', '米家压力1H电饭煲 4L', 599.00, '6756人好评', 'javaScript:');

SET FOREIGN_KEY_CHECKS = 1;
