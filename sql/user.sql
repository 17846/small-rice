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

 Date: 02/08/2020 11:20:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `head` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `borth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `buybus` varchar(9999) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '775371526@qq.com', 'fan123456', NULL, NULL, NULL, NULL, '', '', '[{\"name\":\"小米智能门锁 推拉式 黑色款 \",\"id\":10002,\"cars\":\"banner_01.jpg\",\"num\":3,\"price\":1599},{\"name\":\"Redmi K30 Pro 太空灰 6GB+128GB\",\"id\":10001,\"cars\":\"banner_01.jpg\",\"num\":2,\"price\":2699},{\"name\":\"小米10 国风雅灰 8GB+128GB\",\"id\":10004,\"cars\":\"b1.jpg\",\"num\":1,\"price\":3999},{\"name\":\"小米10 蜜桃金 8GB+256GB\",\"id\":10004,\"cars\":\"b1.jpg\",\"num\":1,\"price\":3999}]');
INSERT INTO `user` VALUES (2, '775371527@qq.com', 'fan6377124', NULL, NULL, NULL, NULL, '', '', NULL);
INSERT INTO `user` VALUES (3, '775371528@qq.com', 'fan6377124', NULL, NULL, NULL, NULL, '', '', NULL);
INSERT INTO `user` VALUES (37, 'fan6377124@163.com', 'fan123456', NULL, NULL, NULL, NULL, '', '', NULL);
INSERT INTO `user` VALUES (36, '985002129@qq.com', 'fanhua123', NULL, NULL, NULL, NULL, '', '', '[{\"name\":\"小米10 钛银黑 12GB+256GB\",\"id\":10004,\"cars\":\"b1.jpg\",\"num\":1,\"price\":3999}]');
INSERT INTO `user` VALUES (35, '775371566@qq.com', '123456s', NULL, NULL, NULL, NULL, '', '', NULL);
INSERT INTO `user` VALUES (25, '675371526@qq.com', 'fan123456', NULL, NULL, NULL, NULL, '', '', NULL);
INSERT INTO `user` VALUES (24, '775371556@qq.com', 'fan6377124', NULL, NULL, NULL, NULL, '', NULL, NULL);
INSERT INTO `user` VALUES (23, '775371536@qq.com', 'fan6377124', NULL, NULL, NULL, NULL, '', NULL, NULL);
INSERT INTO `user` VALUES (22, '775371522@qq.com', 'fan123456', NULL, NULL, NULL, NULL, '', NULL, NULL);
INSERT INTO `user` VALUES (38, '985002029@qq.com', 'fan123456', NULL, NULL, NULL, NULL, '', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
