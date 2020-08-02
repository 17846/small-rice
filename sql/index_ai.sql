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

 Date: 02/08/2020 11:17:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for index_ai
-- ----------------------------
DROP TABLE IF EXISTS `index_ai`;
CREATE TABLE `index_ai`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oldprice` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_ai
-- ----------------------------
INSERT INTO `index_ai` VALUES (1, 'main', '1.jpg', NULL, NULL, NULL, NULL, '');
INSERT INTO `index_ai` VALUES (2, 'hot', '3.jpg', '小米手环4', '大彩显屏， 20天超长续航', '149元', '169元', 'javaScript:');
INSERT INTO `index_ai` VALUES (3, 'hot', '3.jpg', '小米手环4', '大彩显屏， 20天超长续航', '149元', '169元', 'javaScript:');
INSERT INTO `index_ai` VALUES (4, 'hot', '3.jpg', '小米手环4', '大彩显屏， 20天超长续航', '149元', '169元', 'javaScript:');
INSERT INTO `index_ai` VALUES (5, 'hot', '3.jpg', '小米手环4', '大彩显屏， 20天超长续航', '149元', '169元', 'javaScript:');
INSERT INTO `index_ai` VALUES (6, 'hot', '3.jpg', '小米手环4', '大彩显屏， 20天超长续航', '149元', '169元', 'javaScript:');
INSERT INTO `index_ai` VALUES (7, 'hot', '3.jpg', '小米手环4', '大彩显屏， 20天超长续航', '149元', '169元', 'javaScript:');
INSERT INTO `index_ai` VALUES (8, 'hot', '3.jpg', '小米手环4', '大彩显屏， 20天超长续航', '149元', '169元', 'javaScript:');
INSERT INTO `index_ai` VALUES (9, 'hotS', '4.jpg', '九号平衡车', '', '1999元', '', 'javaScript:');
INSERT INTO `index_ai` VALUES (10, 'main', '2.jpg', '', '', '', '', 'javaScript:');
INSERT INTO `index_ai` VALUES (26, 'goS', '8.jpg', '小米米家对讲机2', NULL, '449元', NULL, 'javaScript:');
INSERT INTO `index_ai` VALUES (11, 'securiy', '5.jpg', '小米米家智能摄像机增强版', '智能看护， AI你所爱', '399元', '', 'javaScript:');
INSERT INTO `index_ai` VALUES (12, 'securiy', '5.jpg', '小米米家智能摄像机增强版', '智能看护， AI你所爱', '399元', '', 'javaScript:');
INSERT INTO `index_ai` VALUES (13, 'securiy', '5.jpg', '小米米家智能摄像机增强版', '智能看护， AI你所爱', '399元', '', 'javaScript:');
INSERT INTO `index_ai` VALUES (14, 'securiy', '5.jpg', '小米米家智能摄像机增强版', '智能看护， AI你所爱', '399元', '', 'javaScript:');
INSERT INTO `index_ai` VALUES (15, 'securiy', '5.jpg', '小米米家智能摄像机增强版', '智能看护， AI你所爱', '399元', '', 'javaScript:');
INSERT INTO `index_ai` VALUES (16, 'securiy', '5.jpg', '小米米家智能摄像机增强版', '智能看护， AI你所爱', '399元', '', 'javaScript:');
INSERT INTO `index_ai` VALUES (17, 'securiy', '5.jpg', '小米米家智能摄像机增强版', '智能看护， AI你所爱', '399元', '', 'javaScript:');
INSERT INTO `index_ai` VALUES (18, 'securiyS', '6.jpg', '小米米家智能摄像机云台版', NULL, '189元', '', 'javaScript:');
INSERT INTO `index_ai` VALUES (25, 'go', '7.jpg', '小米旅行箱 青春款', '环保材料， 轻便重量', '199元起', '', 'javaScript:');
INSERT INTO `index_ai` VALUES (24, 'go', '7.jpg', '小米旅行箱 青春款', '环保材料， 轻便重量', '199元起', '', 'javaScript:');
INSERT INTO `index_ai` VALUES (23, 'go', '7.jpg', '小米旅行箱 青春款', '环保材料， 轻便重量', '199元起', '', 'javaScript:');
INSERT INTO `index_ai` VALUES (22, 'go', '7.jpg', '小米旅行箱 青春款', '环保材料， 轻便重量', '199元起', '', 'javaScript:');
INSERT INTO `index_ai` VALUES (21, 'go', '7.jpg', '小米旅行箱 青春款', '环保材料， 轻便重量', '199元起', '', 'javaScript:');
INSERT INTO `index_ai` VALUES (20, 'go', '7.jpg', '小米旅行箱 青春款', '环保材料， 轻便重量', '199元起', '', 'javaScript:');
INSERT INTO `index_ai` VALUES (19, 'go', '7.jpg', '小米旅行箱 青春款', '环保材料， 轻便重量', '199元起', '', 'javaScript:');

SET FOREIGN_KEY_CHECKS = 1;
