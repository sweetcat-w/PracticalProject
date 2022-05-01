/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : pupu

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 01/05/2022 15:01:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(6, 3) NULL DEFAULT NULL,
  `spec` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `origin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sub_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('伊利金典奶250ml*12/箱', 39.900, '250ml*12/箱', '见商品外包装为准', '优质牧场 品质牛奶');
INSERT INTO `products` VALUES ('卡士3.3克鲜酪乳100g*3/组', 9.990, '100g*3', '广东省深圳市', '鲜酪乳 健康美味');
INSERT INTO `products` VALUES ('壹粒谷仓 巧克力双层芝士蛋糕 240g（冻）', 32.800, '240g/份', '广东省广州市', '【建议解冻2小时以上】一口柔软芝士慕斯和香浓奶油芝士，逐渐的在口中交织缠绵');
INSERT INTO `products` VALUES ('新希望透明袋纯牛奶180ml/袋(定制)', 1.990, '180ml/袋', '江苏省苏州市', '朴朴定制，喝得到的浓香醇， 严格甄选专属牧场');
INSERT INTO `products` VALUES ('新疆天润酸奶（润康桶）1kg/桶', 30.900, '1kg', '新疆', '凝固型酸奶、传统工艺发酵');
INSERT INTO `products` VALUES ('新疆西牧天山利乐枕纯牛奶200ml*20', 58.800, '200ml*20/箱', '新疆维吾尔族自治区石河子市', '日期新鲜，优质奶源，UHT处理，0添加 100%生牛乳');
INSERT INTO `products` VALUES ('朱丽密欧榴莲千层蛋糕切件75g（冻）', 16.900, '75g/份', '广东省深圳市', '【冷冻锁鲜，解冻2小时食用更佳】精选欧洲淡奶油，进口榴莲果肉，不含反式脂肪酸。');
INSERT INTO `products` VALUES ('潮福前味乳酪面包90g', 8.500, '90g/份', '福建省福州市', '精巧工艺，细腻柔软，香甜蓬松，让人垂涎欲的奶酪包');
INSERT INTO `products` VALUES ('蒙牛特仑苏有机纯牛奶梦幻盖250ml*10/箱', 62.900, '250ml*10', '内蒙古自治区巴彦淖尔市', '来自原生限定专属有机牧场，每100ml天然乳蛋白高达3.8g');
INSERT INTO `products` VALUES ('麦田农夫现烤椰挞120g', 8.800, '120g/盒', '福建省厦门市', '手工制作，酥脆美味。');

SET FOREIGN_KEY_CHECKS = 1;
