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

 Date: 02/08/2020 11:18:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for index_video
-- ----------------------------
DROP TABLE IF EXISTS `index_video`;
CREATE TABLE `index_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subtitle` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_video
-- ----------------------------
INSERT INTO `index_video` VALUES (1, '1.jpg', 'Redmi 10X 系列发布会', 'Redmi 10X 系列发布会', 'javaScript:');
INSERT INTO `index_video` VALUES (2, '2.jpg', '小米 10 青春版 发布会', '', 'javaScript:');
INSERT INTO `index_video` VALUES (3, '3.jpg', '小米 10 8K手机拍大片', '', 'javaScript:');
INSERT INTO `index_video` VALUES (4, '4.jpg', '小米 10发布会', '', 'javaScript:');

SET FOREIGN_KEY_CHECKS = 1;
