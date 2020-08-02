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

 Date: 02/08/2020 11:19:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for leftnav
-- ----------------------------
DROP TABLE IF EXISTS `leftnav`;
CREATE TABLE `leftnav`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `href` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 180 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leftnav
-- ----------------------------
INSERT INTO `leftnav` VALUES (1, '1', '1.png', 'Redmi 9', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (2, '1', '2.jpeg', 'Redmi 10X 4G', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (3, '1', '3.jpg', 'Redmi 10X 5G系列', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (4, '1', '4.png', '小米 10 青春版', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (5, '1', '5.jpg', 'Redmi K30 Pro', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (6, '1', '6.jpg', 'Redmi K30 Pro 变焦版', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (7, '1', '7.png', '腾讯黑鲨游戏手机3', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (8, '1', '8.png', '腾讯黑鲨游戏手机3 Pro', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (9, '1', '9.png', '小米 10 Pro', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (10, '1', '10.png', '小米 10', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (11, '1', '11.jpg', 'Redmi K30 4G', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (12, '1', '12.jpg', 'Redmi K30 5G', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (13, '1', '13.png', 'Redmi 8A', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (14, '1', '14.png', 'Redmi 8', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (15, '1', '15.png', '小米MIX Aipha', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (16, '1', '16.png', 'Redmi Note 8 Pro', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (17, '1', '17.png', 'Redmi Note 8', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (18, '1', '18.jpg', 'Redmi 7A', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (19, '1', '19.jpg', '移动4G+专区', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (20, '1', '20.jpg', '小米移动 电话卡', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (21, '1', '21.png', '手机上门维修', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (22, '1', '22.jpg', '云服务空间月卡', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (23, '1', '23.jpg', '中国电信', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (24, '2', '1.png', '小米电视 大师 65英寸OLED', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (25, '2', '2.png', 'Redmi 智能电视 X65', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (26, '2', '3.png', 'Redmi智能电视 X55', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (27, '2', '4.jpg', 'Redmi 智能电视 MAX 98\"', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (28, '2', '5.png', '小米电视5 55英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (29, '2', '6.png', '小米电视5 65英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (30, '2', '7.png', '小米电视5 75英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (31, '2', '8.png', '小米电视5 Pro 55英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (32, '2', '9.png', '小米电视5 Pro 65英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (33, '2', '10.png', '小米电视5 Pro 75英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (34, '2', '11.jpg', 'Redmi 红米电视 70英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (35, '2', '12.jpg', '全面屏电视Pro 65英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (36, '2', '13.jpg', '全面屏电视Pro 55英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (37, '2', '14.jpg', '小米壁画电视 65英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (38, '2', '15.jpg', '小米全面屏电视', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (39, '2', '16.png', '小米电视4A 32英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (40, '2', '17.png', '小米电视4A 50英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (41, '2', '18.png', '小米电视4A 55英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (42, '2', '19.png', '小米电视4A 58英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (43, '2', '20.png', '小米电视4A 65英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (44, '2', '21.png', '小米电视4C 32英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (45, '2', '22.jpg', '小米电视4C 40英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (46, '2', '23.png', '小米电视4C 43英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (47, '2', '24.png', '小米电视4C 50英寸', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (48, '3', '1.jpg', 'RedmiBook 13', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (49, '3', '2.png', '小米笔记本 15.6\"', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (50, '3', '3.png', '小米笔记本 13.3\"', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (51, '3', '4.jpg', '小米笔记本 12.5\"', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (52, '3', '5.png', 'RedmiBook 14', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (53, '3', '6.jpg', '小米游戏本', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (54, '3', '7.png', '显示器', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (55, '3', '8.jpg', '小米平板4', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (56, '3', '9.png', '键鼠套装', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (57, '3', '10.png', '鼠标', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (58, '3', '11.png', '转接器', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (59, '3', '12.jpg', '平板配件', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (60, '4', '1.jpg', '冰箱', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (61, '4', '2.png', '立式空调', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (62, '4', '3.png', '壁挂空调', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (63, '4', '4.png', '滚筒洗衣机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (64, '4', '5.jpg', 'Redmi全自动波轮洗衣机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (65, '4', '6.jpg', '净水器', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (66, '4', '7.jpg', '微波炉', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (67, '4', '8.jpg', '电烤箱', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (68, '4', '9.jpg', '扫地机器人', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (69, '4', '10.jpg', '吸尘器', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (70, '4', '11.jpg', '空气净化器', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (71, '4', '12.jpg', '电饭煲', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (72, '4', '13.jpg', '电磁炉', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (73, '4', '14.jpg', '电水壶', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (74, '4', '15.jpg', '滤水壶', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (75, '4', '16.png', '落地风扇', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (76, '4', '17.png', '投影仪', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (77, '4', '18.jpg', '灯具', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (78, '4', '19.jpg', '插线板', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (79, '4', '20.jpg', '新风机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (80, '4', '21.jpg', '电暖器', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (81, '4', '22.jpg', '电压力锅', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (82, '4', '23.jpg', '料理机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (83, '4', '24.jpg', '电煮壶', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (84, '5', '1.png', '手环5NFC', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (85, '5', '2.png', '手环5', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (86, '5', '3.png', '小米手表', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (87, '5', '4.png', '手环手表', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (88, '5', '5.jpg', 'VR', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (89, '5', '6.jpg', '平衡车', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (90, '5', '7.jpg', '滑板车', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (91, '5', '8.png', '自行车', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (92, '5', '9.jpg', '车载充电器', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (93, '5', '10.jpg', '平衡车配件', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (94, '5', '11.jpg', '智能后视镜', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (95, '5', '12.jpg', '智能记录仪', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (96, '5', '13.jpg', '无线车充', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (97, '5', '14.jpg', '充气宝', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (98, '5', '15.jpg', '石英表', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (99, '6', '1.jpg', '打印机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (100, '6', '2.png', '喷墨打印机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (101, '6', '3.png', '喷墨打印机墨水', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (102, '6', '4.png', '小米路由器', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (103, '6', '5.jpg', '智能家庭', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (104, '6', '6.jpg', '对讲机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (105, '6', '7.jpg', '摄像机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (106, '6', '8.jpg', '照相机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (107, '6', '9.jpg', '智能门锁', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (108, '6', '10.jpg', '视频门铃', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (109, '6', '11.png', '小爱老师', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (110, '6', '12.png', 'Redmi路由器', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (111, '6', '13.jpg', '小爱音箱', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (112, '6', '14.png', '云服务空间年卡', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (113, '6', '15.png', '云服务空间月卡', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (114, '7', '1.png', '移动电源', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (115, '7', '2.jpg', '数据线', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (116, '7', '3.jpg', '车充', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (117, '7', '4.png', '充电器', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (118, '7', '5.jpg', '电池', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (119, '7', '6.jpg', '自拍杆', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (120, '7', '7.jpg', '手机壳', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (121, '7', '8.jpg', '手机贴膜', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (122, '7', '9.png', '无线充电器', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (123, '7', '10.jpg', '平板配件', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (124, '7', '11.jpg', '黑鲨配件', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (125, '7', '12.jpg', '其他配件', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (126, '8', '1.jpg', '洗手机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (127, '8', '2.jpg', '修剪器', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (128, '8', '3.jpg', '剃须刀', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (129, '8', '4.jpg', '牙刷', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (130, '8', '5.jpg', '吹风机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (131, '8', '6.png', '体重秤', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (132, '8', '7.jpg', '体脂秤', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (133, '8', '8.jpg', '早教启智', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (134, '8', '9.jpg', '遥控电动', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (135, '8', '10.jpg', '益智积木', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (136, '8', '11.jpg', '儿童手表', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (137, '8', '12.jpg', '儿童滑板车', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (138, '8', '13.jpg', '婴儿推车', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (139, '8', '14.jpg', '儿童书包', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (140, '8', '15.jpg', '婴儿理发器', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (141, '8', '16.png', '健身车', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (142, '8', '17.jpg', '走步机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (143, '8', '18.jpg', '点读笔', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (144, '9', '1.png', '小爱音箱 Art', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (145, '9', '2.png', '小爱触屏音箱Pro 8', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (146, '9', '3.png', 'Redmi小爱触屏音箱 8', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (147, '9', '4.png', '音箱 Pro', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (148, '9', '5.png', '小米小爱音箱', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (149, '9', '6.jpg', '小米小爱触屏音箱', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (150, '9', '7.png', 'Redmi音箱', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (151, '9', '8.jpg', '小米小爱音箱 Play', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (152, '9', '9.jpg', '线控耳机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (153, '9', '10.jpg', '蓝牙耳机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (154, '9', '11.jpg', '头戴耳机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (155, '9', '12.jpg', '品牌耳机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (156, '9', '13.png', '蓝牙音箱', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (157, '9', '14.jpg', '小米AI音箱', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (158, '9', '15.jpg', '小米小爱音箱HD', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (159, '9', '16.jpg', 'k歌耳机', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (160, '10', '1.jpg', '小背包', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (161, '10', '2.jpg', '双肩包', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (162, '10', '3.jpg', '胸包', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (163, '10', '4.jpg', '旅行箱', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (164, '10', '5.jpg', '运动鞋', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (165, '10', '6.jpg', '眼镜', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (166, '10', '7.jpg', '床垫', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (167, '10', '8.png', '枕头', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (168, '10', '9.jpg', '饰品', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (169, '10', '10.jpg', '螺丝刀', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (170, '10', '11.jpg', '保温杯', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (171, '10', '12.jpg', '伞', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (172, '10', '13.jpg', '驱蚊器', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (173, '10', '14.jpg', '毛巾/浴巾', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (174, '10', '15.png', '米兔', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (175, '10', '16.jpg', '笔', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (176, 'bottom', '1.jpg', 'redmi K30', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (177, 'bottom', '2.jpg', '4G', '/buy/detail?id=10001');
INSERT INTO `leftnav` VALUES (178, 'bottom', '3.jpg', '手环', '/buy/detail?id=10001');

SET FOREIGN_KEY_CHECKS = 1;
