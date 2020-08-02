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

 Date: 02/08/2020 11:18:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for index_phone
-- ----------------------------
DROP TABLE IF EXISTS `index_phone`;
CREATE TABLE `index_phone`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subtitle` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oldprice` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_phone
-- ----------------------------
INSERT INTO `index_phone` VALUES (1, 'main', '1.jpg', NULL, NULL, NULL, NULL, '/buy/detail?id=10004');
INSERT INTO `index_phone` VALUES (2, 'minor', '2.jpg', '小米 10', '骁龙865/1亿像素相机', '3799元起', '3999元', '/buy/detail?id=10004');
INSERT INTO `index_phone` VALUES (3, 'minor', '2.jpg', '小米 10', '骁龙865/1亿像素相机', '3799元起', '3999元', '/buy/detail?id=10004');
INSERT INTO `index_phone` VALUES (4, 'minor', '2.jpg', '小米 10', '骁龙865/1亿像素相机', '3799元起', '3999元', '/buy/detail?id=10004');
INSERT INTO `index_phone` VALUES (5, 'minor', '2.jpg', '小米 10', '骁龙865/1亿像素相机', '3799元起', '3999元', '/buy/detail?id=10004');
INSERT INTO `index_phone` VALUES (6, 'minor', '2.jpg', '小米 10', '骁龙865/1亿像素相机', '3799元起', '3999元', '/buy/detail?id=10004');
INSERT INTO `index_phone` VALUES (7, 'minor', '2.jpg', '小米 10', '骁龙865/1亿像素相机', '3799元起', '3999元', '/buy/detail?id=10004');
INSERT INTO `index_phone` VALUES (8, 'minor', '2.jpg', '小米 10', '骁龙865/1亿像素相机', '3799元起', '3999元', '/buy/detail?id=10004');
INSERT INTO `index_phone` VALUES (9, 'minor', '2.jpg', '小米 10', '骁龙865/1亿像素相机', '3799元起', '3999元', '/buy/detail?id=10004');

SET FOREIGN_KEY_CHECKS = 1;
