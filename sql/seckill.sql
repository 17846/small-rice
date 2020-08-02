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

 Date: 02/08/2020 11:20:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for seckill
-- ----------------------------
DROP TABLE IF EXISTS `seckill`;
CREATE TABLE `seckill`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subtitle` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `newprice` decimal(10, 2) NOT NULL,
  `oldprice` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `href` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 492 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of seckill
-- ----------------------------
INSERT INTO `seckill` VALUES (1, '1.jpg', '小米净水器600G 白色', '0点我出现', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (2, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (3, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (4, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (5, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (6, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (7, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (8, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (9, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (10, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (11, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (12, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (13, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (14, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (15, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (16, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (17, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (18, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (19, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (20, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (21, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (22, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (23, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (24, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (25, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (26, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (27, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (28, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (29, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (30, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (31, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (32, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (33, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (34, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (35, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (36, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (37, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (38, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (39, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (40, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (41, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (42, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (43, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (44, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (45, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (46, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (47, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (48, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (49, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (50, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (51, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (52, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (53, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (54, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (55, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '0', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (100, '2.jpg', '小米净水器600G 白色', '10点我出现', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (101, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (102, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (103, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (104, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (105, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (106, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (107, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (108, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (109, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (110, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (111, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (112, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (113, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (114, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (115, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (116, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (117, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (118, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (119, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (120, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (121, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (122, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (123, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (124, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (125, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (126, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (127, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (128, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (129, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (130, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (131, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (132, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (133, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (134, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (135, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (136, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (137, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (138, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (139, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (140, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (141, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (142, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (143, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (144, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '10', 'javaSCript:');
INSERT INTO `seckill` VALUES (198, '1.jpg', '小米净水器600G 白色', '14点我出现', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (199, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (200, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (201, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (202, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (203, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (204, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (205, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (206, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (207, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (208, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (209, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (210, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (211, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (212, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (213, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (214, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (215, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (216, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (217, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (218, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (219, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (220, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (221, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (222, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (223, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (224, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (225, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (226, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (227, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (228, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (229, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (230, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (231, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (232, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (233, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (234, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (235, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (236, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (237, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (238, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (239, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (240, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (241, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (242, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (243, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (244, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (245, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (246, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (247, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (248, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (249, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '14', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (296, '2.jpg', '小米净水器600G 白色', '20点我出现', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (297, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (298, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (299, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (300, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (301, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (302, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (303, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (304, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (305, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (306, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (307, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (308, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (309, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (310, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (311, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (312, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (313, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (314, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (315, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (316, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (317, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (318, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (319, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (320, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (321, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (322, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (323, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (324, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (325, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (326, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (327, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (328, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (329, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (330, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (331, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (332, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (333, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (334, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (335, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (336, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (337, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (338, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (339, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (340, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (341, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (342, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (343, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (344, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (345, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (346, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (347, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (348, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (349, '2.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '20', 'javaSCript:');
INSERT INTO `seckill` VALUES (394, '1.jpg', '小米净水器600G 白色', '22点我出现', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (395, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (396, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (397, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (398, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (399, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (400, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (401, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (402, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (403, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (404, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (405, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (406, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (407, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (408, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (409, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (410, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (411, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (412, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (413, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (414, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (415, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (416, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (417, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (418, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (419, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (420, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (421, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (422, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (423, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (424, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (425, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (426, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (427, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (428, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (429, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (430, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (431, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (432, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (433, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (434, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (435, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (436, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (437, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (438, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (439, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (440, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (441, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (442, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (443, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (444, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (445, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (446, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (447, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (448, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (449, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (450, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (451, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (452, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (453, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (454, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (455, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (456, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (457, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (458, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (459, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (460, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (461, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (462, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (463, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (464, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (465, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');
INSERT INTO `seckill` VALUES (466, '1.jpg', '小米净水器600G 白色', '600加仑通量， 流速更快', 1699.00, '2499元', '22', '/buy/detail?id=10003');

SET FOREIGN_KEY_CHECKS = 1;
