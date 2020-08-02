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

 Date: 02/08/2020 11:20:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `describe` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sale` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `office` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `oldprice` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `version` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `color` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `insurance` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img1` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img2` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img3` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tag` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `discount` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(100) NOT NULL,
  `cars` varchar(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10005 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (10001, 'Redmi K30 Pro', '双模5G / 高通骁龙865 / 弹出式超光感全面屏 /索尼 6400万高清四摄 / 8K视频拍摄 / 超大面积VC立体散热 / 4700mAh+33W疾速闪充 / 多功能NFC / 红外遥控', '最高优惠700元，到手价2699元起；购机享信用卡24期分期免息，低至113元起/期', '小米自营', 2699.00, '3399 元', '[\"6GB+128GB\",\"8GB+128GB\",\"12GB+128GB\",\"8GB+256GB\"]', '[\"太空灰\",\"天际蓝\",\"星环紫\",\"月幕白\"]', '[{\"name\":\"意外保护\",\"title\":\"碎屏保障服务\",\"sub\":\"手机意外碎屏\",\"price\":159,\"discount\":32,\"img\":\"insurance_01.jpg\"},{\"name\":\"意外保护\",\"title\":\"意外保障服务\",\"sub\":\"手机意外碎屏/进水/碾压等损坏\",\"price\":299,\"discount\":0,\"img\":\"insurance_01.jpg\"},{\"name\":\"云空间服务\",\"title\":\"云空间年卡500G\",\"sub\":\"主商品签收后， 自动激活至下单账号\",\"price\":239,\"discount\":0,\"img\":\"insurance_02.jpg\"},{\"name\":\"云空间服务\",\"title\":\"云空间年卡200G\",\"sub\":\"主商品签收后， 自动激活至下单账号\",\"price\":159,\"discount\":0,\"img\":\"insurance_02.jpg\"},{\"name\":\"云空间服务\",\"title\":\"云空间年卡 50G\",\"sub\":\"主商品签收后， 自动激活至下单账号\",\"price\":49,\"discount\":0,\"img\":\"insurance_02.jpg\"},{\"name\":\"云空间服务\",\"title\":\"云空间年卡 10G\",\"sub\":\"主商品签收后， 自动激活至下单账号\",\"price\":29,\"discount\":0,\"img\":\"insurance_02.jpg\"},{\"name\":\"云空间服务\",\"title\":\"云空间月卡 50G\",\"sub\":\"主商品签收后， 自动激活至下单账号\",\"price\":6,\"discount\":0,\"img\":\"insurance_02.jpg\"},{\"name\":\"延长保修\",\"title\":\"延长保修服务\",\"sub\":\"厂保延一年， 性能故障免费维修\",\"price\":99,\"discount\":20,\"img\":\"insurance_01.jpg\"}]', '[\"banner_01.jpg\",\"banner_02.jpg\",\"banner_03.jpg\",\"banner_04.jpg\",\"banner_05.jpg\"]', '{\"name\":\"概述\",\"img\":[\"section1_1.png\",\"section2_1.png\"]}', '{\"name\":\"参数\",\"img\":[\"section1_2.png\",\"section2_2.png\",\"section3_2.png\"]}', '', '[\"手机\",\"红米手机\",\"K30\",\"redmi\",\"高通骁龙865\",\"高清四摄\",\"Redmi K30 Pro\",\"redmi 5g\",\"5g\"]', '', 1000, 'banner_01.jpg');
INSERT INTO `product` VALUES (10002, '小米智能门锁 推拉式', '适用于标准锁体和霸王锁体 / 直插式C级锁芯 / 6种开锁方式，支持小米手环4 NFC版开锁 / 7重安全状态检测 / 抵御小黑盒攻击 / 智能联动', '乘风破浪的小家电！7.27-7.29到手价1599元！更享3期分期免息！', '小米自营', 1599.00, '1699元', '', '[\"黑色款\"]', '', '[\"banner_01.jpg\"]', '{\"img\":[\"sec_1.jpg\",\"sec_2.jpg\",\"sec_3.jpg\",\"sec_4.jpg\",\"sec_5.jpg\",\"sec_6.jpg\",\"sec_7.jpg\",\"sec_8.jpg\",\"sec_9.jpg\",\"sec_10.jpg\",\"sec_11.jpg\",\"sec_12.jpg\",\"sec_13.jpg\",\"sec_14.jpg\",\"sec_15.jpg\",\"sec_16.jpg\",\"sec_17.jpg\",\"sec_18.jpg\",\"sec_19.jpg\",\"sec_20.jpg\",\"sec_21.jpg\",\"sec_22.jpg\",\"sec_23.jpg\"]}', '', '', '[\"门锁\",\"智能锁\"]', '', 20, 'banner_01.jpg');
INSERT INTO `product` VALUES (10003, '小米净水器600G', '600加仑大流量 / 即滤即饮无存水 / 纤薄小巧省空间 / RO反渗透技术 智能灯控水龙头 / 自主换芯 / 无需自主预约，安装人员主动与您沟通安装时间，免费上门安装', '小米816感恩十年，8月1日最高享24期分期免息！', '小米自营', 1699.00, '2499元', '', '[\"白色\"]', '[{\"name\":\"延长保修\",\"title\":\"换新延保1年\",\"sub\":\"次年性能故障， 直接返券换新\",\"price\":99,\"discount\":0,\"img\":\"insurance_01.jpg\"}]', '[\"banner_1.jpg\",\"banner_2.jpg\",\"banner_3.jpg\",\"banner_4.jpg\"]', '{\"img\":[\"sec_1.jpg\",\"sec_2.jpg\",\"sec_3.jpg\",\"sec_4.jpg\",\"sec_5.jpg\",\"sec_6.jpg\",\"sec_7.jpg\",\"sec_8.jpg\",\"sec_9.jpg\"]}', '', '', '[\"净水器\",\"小米净水器600G\"]', '', 1000, 'banner_1.jpg');
INSERT INTO `product` VALUES (10004, '小米10', '骁龙865处理器 / 1亿像素8K电影相机 / 双模5G / 新一代LPDDR5内存 / 对称式立体声 / 90Hz刷新率+180Hz采样率 / UFS 3.0高速存储 / 全面适配Wi-Fi 6 / 超强VC液冷散热 / 30W极速闪充+30W无线闪充+10W无线反充 / 4780mAh大电量 / 多功能NFC', '小米10新颜色“国风雅灰”火爆热卖中，256GB买赠冰封散热背夹', '小米自营', 3999.00, '4299', '[\"8GB+128GB\",\"8GB+256GB\",\"12GB+256GB\"]', '[\"国风雅灰\",\"钛银黑\",\"冰海蓝\",\"蜜桃金\"]', '[{\"name\":\"延长保修\",\"title\":\"延长保修服务\",\"sub\":\"厂保延一年， 性能故障免费维修\",\"price\":159,\"discount\":0,\"img\":\"insurance_01.jpg\"},{\"name\":\"意外保护\",\"title\":\"意外保障服务\",\"sub\":\"厂保延一年， 性能故障免费维修\",\"price\":349,\"discount\":0,\"img\":\"insurance_01.jpg\"},{\"name\":\"意外保护\",\"title\":\"一年碎屏保\",\"sub\":\"厂保延一年， 性能故障免费维修\",\"price\":249,\"discount\":0,\"img\":\"insurance_01.jpg\"}]', '[\"b1.jpg\",\"b2.jpg\",\"b3.jpg\",\"b4.jpg\",\"b5.jpg\"]', '{\"name\":\"商品概述\",\"img\":[\"s1_1.jpg\",\"s1_2.jpg\",\"s1_3.jpg\",\"s1_4.jpg\",\"s1_5.jpg\",\"s1_6.jpg\"]}', '{\"name\":\"商品参数\",\"img\":[\"s2_1.jpg\",\"s2_2.jpg\",\"s2_3.jpg\",\"s2_4.jpg\",\"s2_5.jpg\",\"s2_6.jpg\"]}', '', '[\"手机\",\"xiaomi\",\"小米手机\",\"小米 10\",\"骁龙865\"]', '', 1000, 'b1.jpg');

SET FOREIGN_KEY_CHECKS = 1;
