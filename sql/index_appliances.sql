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

 Date: 02/08/2020 11:17:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for index_appliances
-- ----------------------------
DROP TABLE IF EXISTS `index_appliances`;
CREATE TABLE `index_appliances`  (
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
-- Records of index_appliances
-- ----------------------------
INSERT INTO `index_appliances` VALUES (1, 'main', '1.jpg', NULL, NULL, NULL, NULL, 'javaScript:');
INSERT INTO `index_appliances` VALUES (2, 'hot', '3.jpg', '小米全面屏电视E32C', '全面屏设计， 人工智能语音', '699元', '899元', 'javaScript:');
INSERT INTO `index_appliances` VALUES (3, 'hot', '3.jpg', '小米全面屏电视E32C', '全面屏设计， 人工智能语音', '699元', '899元', 'javaScript:');
INSERT INTO `index_appliances` VALUES (4, 'hot', '3.jpg', '小米全面屏电视E32C', '全面屏设计， 人工智能语音', '699元', '899元', 'javaScript:');
INSERT INTO `index_appliances` VALUES (5, 'hot', '3.jpg', '小米全面屏电视E32C', '全面屏设计， 人工智能语音', '699元', '899元', 'javaScript:');
INSERT INTO `index_appliances` VALUES (6, 'hot', '3.jpg', '小米全面屏电视E32C', '全面屏设计， 人工智能语音', '699元', '899元', 'javaScript:');
INSERT INTO `index_appliances` VALUES (7, 'hot', '3.jpg', '小米全面屏电视E32C', '全面屏设计， 人工智能语音', '699元', '899元', 'javaScript:');
INSERT INTO `index_appliances` VALUES (8, 'hot', '3.jpg', '小米全面屏电视E32C', '全面屏设计， 人工智能语音', '699元', '899元', 'javaScript:');
INSERT INTO `index_appliances` VALUES (9, 'hotS', '5.jpg', 'Air 13.3\" 2019款', '', '4399元起', '', 'javaScript:');
INSERT INTO `index_appliances` VALUES (10, 'main', '2.jpg', '', '', '', '', 'javaScript:');
INSERT INTO `index_appliances` VALUES (11, 'tv', '4.jpg', '小米全面屏电视65英寸 E65C', '震撼大屏， 时尚全面屏', '2599元', '3099元', 'javaScript:');
INSERT INTO `index_appliances` VALUES (12, 'tv', '4.jpg', '小米全面屏电视65英寸 E65C', '震撼大屏， 时尚全面屏', '2599元', '3099元', 'javaScript:');
INSERT INTO `index_appliances` VALUES (13, 'tv', '4.jpg', '小米全面屏电视65英寸 E65C', '震撼大屏， 时尚全面屏', '2599元', '3099元', 'javaScript:');
INSERT INTO `index_appliances` VALUES (14, 'tv', '4.jpg', '小米全面屏电视65英寸 E65C', '震撼大屏， 时尚全面屏', '2599元', '3099元', 'javaScript:');
INSERT INTO `index_appliances` VALUES (15, 'tv', '4.jpg', '小米全面屏电视65英寸 E65C', '震撼大屏， 时尚全面屏', '2599元', '3099元', 'javaScript:');
INSERT INTO `index_appliances` VALUES (16, 'tv', '4.jpg', '小米全面屏电视65英寸 E65C', '震撼大屏， 时尚全面屏', '2599元', '3099元', 'javaScript:');
INSERT INTO `index_appliances` VALUES (17, 'tv', '4.jpg', '小米全面屏电视65英寸 E65C', '震撼大屏， 时尚全面屏', '2599元', '3099元', 'javaScript:');
INSERT INTO `index_appliances` VALUES (18, 'tvS', '6.jpg', '小米壁画电视65英寸', NULL, '6999元', NULL, 'javaScript:');

SET FOREIGN_KEY_CHECKS = 1;
