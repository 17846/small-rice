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

 Date: 02/08/2020 11:20:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for topnav
-- ----------------------------
DROP TABLE IF EXISTS `topnav`;
CREATE TABLE `topnav`  (
  `tag` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `src` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` int(10) NOT NULL,
  `href` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of topnav
-- ----------------------------
INSERT INTO `topnav` VALUES ('mi', '小米10 青春版 5', '1.png', 4999, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('mi', '小米10 Pro', '2.png', 4999, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('mi', '小米10', '3.png', 3700, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('mi', '小米CC9', '4.png', 1499, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('mi', '小米CC9e', '5.png', 1099, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('mi', '小米MIX Alph', '6.png', 1999, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('redmi', ' Redmi 9', '1.png', 799, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('redmi', 'Redmi 10X 4G', '2.png', 999, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('redmi', ' Redmi 10X', '3.png', 1599, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('redmi', ' Redmi K30 Pro', '4.jpg', 2499, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('redmi', ' Redmi K30 Pro 变焦版', '5.jpg', 3399, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('redmi', ' Redmi K30', '6.jpg', 1399, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('tv', '小米电视 大师 65英寸OLED', '1.png', 12999, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('tv', 'Redmi 智能电视 MAX 98\"', '2.jpg', 19999, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('tv', '小米电视4A 60英寸', '3.png', 1999, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('tv', 'Redmi 智能电视 X55', '4.png', 2199, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('tv', ' Redmi 红米电视 70英寸 R70A', '5.jpg', 2999, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('tv', '小米壁画电视 65英寸', '6.jpg', 6999, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('notebook', 'RedmiBook 16', '1.png', 4699, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('notebook', 'RedmiBook 14 Ⅱ', '2.png', 4499, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('notebook', 'Pro 16.5\" 2020款', '3.png', 5999, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('notebook', ' 小米笔记本Air 13.3\"', '4.png', 4999, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('notebook', ' 小米游戏本', '5.png', 6499, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('notebook', '显示器', '6.png', 2199, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('appliances', '米家互联网空调C1 (一级能效)', '1.png', 2099, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('appliances', '米家互联网空调 (一级能效)', '2.png', 1999, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('appliances', ' Redmi全自动波轮洗衣机 1A', '3.jpg', 788, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('appliances', ' 米家互联网洗烘一体机 10kg', '4.png', 2199, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('appliances', ' 米家风冷对开门冰箱 483L', '5.jpg', 2199, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('appliances', '米家两开门冰箱 160L', '6.jpg', 899, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('router', ' Redmi路由器 AX5', '1.png', 249, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('router', ' 小米路由器 AX 1800', '2.png', 329, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('router', ' 小米AloT路由器AX3600', '3.png', 599, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('router', 'Redmi路由器AC2100', '4.png', 169, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('router', ' 小米路由器AC2100', '5.png', 229, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('router', ' 小米路由器 Mesh', '6.jpg', 999, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('AIhardware', '小米米家智能摄像头云台版', '1.jpg', 189, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('AIhardware', ' 小米小爱老师', '2.jpg', 399, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('AIhardware', ' 小米米家智能门锁', '3.jpg', 1299, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('AIhardware', ' Redmi小爱触屏音箱 8', '4.png', 349, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('AIhardware', ' 小米小爱触屏音箱', '5.jpg', 199, '/buy/detail?id=10001');
INSERT INTO `topnav` VALUES ('AIhardware', ' Redmi小爱音箱 Play', '6.png', 79, '/buy/detail?id=10001');

SET FOREIGN_KEY_CHECKS = 1;
