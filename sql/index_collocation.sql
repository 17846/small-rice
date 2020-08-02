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

 Date: 02/08/2020 11:17:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for index_collocation
-- ----------------------------
DROP TABLE IF EXISTS `index_collocation`;
CREATE TABLE `index_collocation`  (
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
-- Records of index_collocation
-- ----------------------------
INSERT INTO `index_collocation` VALUES (1, 'main', '1.jpg', NULL, NULL, NULL, NULL, 'javaScript:');
INSERT INTO `index_collocation` VALUES (2, 'hot', '3.jpg', '小米真无线蓝牙耳机 Air 2', '智能真无线， 轻松舒适戴', '299元', '399元', 'javaScript:');
INSERT INTO `index_collocation` VALUES (3, 'hot', '3.jpg', '小米真无线蓝牙耳机 Air 2', '智能真无线， 轻松舒适戴', '299元', '399元', 'javaScript:');
INSERT INTO `index_collocation` VALUES (4, 'hot', '3.jpg', '小米真无线蓝牙耳机 Air 2', '智能真无线， 轻松舒适戴', '299元', '399元', 'javaScript:');
INSERT INTO `index_collocation` VALUES (5, 'hot', '3.jpg', '小米真无线蓝牙耳机 Air 2', '智能真无线， 轻松舒适戴', '299元', '399元', 'javaScript:');
INSERT INTO `index_collocation` VALUES (6, 'hot', '3.jpg', '小米真无线蓝牙耳机 Air 2', '智能真无线， 轻松舒适戴', '299元', '399元', 'javaScript:');
INSERT INTO `index_collocation` VALUES (7, 'hot', '3.jpg', '小米真无线蓝牙耳机 Air 2', '智能真无线， 轻松舒适戴', '299元', '399元', 'javaScript:');
INSERT INTO `index_collocation` VALUES (8, 'hot', '3.jpg', '小米真无线蓝牙耳机 Air 2', '智能真无线， 轻松舒适戴', '299元', '399元', 'javaScript:');
INSERT INTO `index_collocation` VALUES (9, 'hotS', '5.jpg', '小米小爱触屏音箱', '', '199元', '', 'javaScript:');
INSERT INTO `index_collocation` VALUES (10, 'main', '2.jpg', '', '', '', '', 'javaScript:');
INSERT INTO `index_collocation` VALUES (11, 'maior', '4.jpg', '小米蓝牙项圈耳机', '挂在脖子上的好耳机', '269元', '299元', 'javaScript:');
INSERT INTO `index_collocation` VALUES (12, 'maior', '4.jpg', '小米蓝牙项圈耳机', '挂在脖子上的好耳机', '269元', '299元', 'javaScript:');
INSERT INTO `index_collocation` VALUES (13, 'maior', '4.jpg', '小米蓝牙项圈耳机', '挂在脖子上的好耳机', '269元', '299元', 'javaScript:');
INSERT INTO `index_collocation` VALUES (14, 'maior', '4.jpg', '小米蓝牙项圈耳机', '挂在脖子上的好耳机', '269元', '299元', 'javaScript:');
INSERT INTO `index_collocation` VALUES (15, 'maior', '4.jpg', '小米蓝牙项圈耳机', '挂在脖子上的好耳机', '269元', '299元', 'javaScript:');
INSERT INTO `index_collocation` VALUES (16, 'maior', '4.jpg', '小米蓝牙项圈耳机', '挂在脖子上的好耳机', '269元', '299元', 'javaScript:');
INSERT INTO `index_collocation` VALUES (17, 'maior', '4.jpg', '小米蓝牙项圈耳机', '挂在脖子上的好耳机', '269元', '299元', 'javaScript:');
INSERT INTO `index_collocation` VALUES (18, 'maiorS', '6.jpg', '小米随身蓝牙音箱', NULL, '69元', NULL, 'javaScript:');

SET FOREIGN_KEY_CHECKS = 1;
