/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50520
 Source Host           : localhost:3306
 Source Schema         : itdrjy9

 Target Server Type    : MySQL
 Target Server Version : 50520
 File Encoding         : 65001

 Date: 25/11/2019 11:16:23
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for first
-- ----------------------------
DROP TABLE IF EXISTS `first`;
CREATE TABLE `first`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of first
-- ----------------------------
INSERT INTO `first` VALUES (1, '家电');
INSERT INTO `first` VALUES (2, '数码');
INSERT INTO `first` VALUES (3, '手机');
INSERT INTO `first` VALUES (4, '游戏');
INSERT INTO `first` VALUES (5, '动漫');

-- ----------------------------
-- Table structure for neuedu_category
-- ----------------------------
DROP TABLE IF EXISTS `neuedu_category`;
CREATE TABLE `neuedu_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别id',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '父类Id,当pareng_id=0,说明是根节点，一级类别',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别名称',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '类别状态1-正常，2-已废弃',
  `sort_order` int(4) NULL DEFAULT NULL COMMENT '排序编号，同类展示顺序，数值相等则自然排序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of neuedu_category
-- ----------------------------
INSERT INTO `neuedu_category` VALUES (1, 0, '家电', 0, NULL, '2018-11-28 00:52:07', '2019-11-19 16:58:11');
INSERT INTO `neuedu_category` VALUES (2, 0, '数码', 1, NULL, '2018-11-28 00:54:17', '2018-11-28 00:54:20');
INSERT INTO `neuedu_category` VALUES (3, 0, '手机', 1, NULL, '2018-11-28 00:54:32', '2018-11-28 00:54:35');
INSERT INTO `neuedu_category` VALUES (4, 0, '游戏', 1, NULL, '2018-11-28 00:54:55', '2018-11-28 00:54:57');
INSERT INTO `neuedu_category` VALUES (5, 0, '动漫', 1, NULL, '2018-11-28 00:55:19', '2018-11-28 00:55:22');
INSERT INTO `neuedu_category` VALUES (6, 1, '电饭锅', 1, NULL, '2018-11-28 00:55:34', '2018-11-28 00:55:37');
INSERT INTO `neuedu_category` VALUES (7, 1, '吹风机', 1, NULL, '2018-11-28 10:25:07', '2018-11-28 10:25:09');
INSERT INTO `neuedu_category` VALUES (8, 1, '吸尘器', 1, NULL, '2019-11-11 13:11:59', '2019-11-11 13:12:02');
INSERT INTO `neuedu_category` VALUES (9, 1, '扫地机器人', 1, NULL, '2019-11-11 13:12:22', '2019-11-11 13:12:24');
INSERT INTO `neuedu_category` VALUES (10, 2, '游戏主机', 1, NULL, '2019-11-11 13:12:51', '2019-11-11 13:12:54');
INSERT INTO `neuedu_category` VALUES (11, 2, '无人机', 1, NULL, '2019-11-11 13:13:04', '2019-11-11 13:13:06');
INSERT INTO `neuedu_category` VALUES (12, 2, '二手数码', 1, NULL, '2019-11-11 13:13:21', '2019-11-11 13:13:23');
INSERT INTO `neuedu_category` VALUES (13, 3, 'iPhone xs', 1, NULL, '2019-11-11 13:13:41', '2019-11-11 13:13:43');
INSERT INTO `neuedu_category` VALUES (14, 3, '华为', 1, NULL, '2019-11-11 13:14:20', '2019-11-11 13:14:22');
INSERT INTO `neuedu_category` VALUES (15, 3, '小米', 1, NULL, '2019-11-11 13:14:37', '2019-11-11 13:14:40');
INSERT INTO `neuedu_category` VALUES (16, 3, '一加', 1, NULL, '2019-11-11 13:14:57', '2019-11-19 16:53:54');
INSERT INTO `neuedu_category` VALUES (17, 1, '黑鲨', 1, NULL, '2019-11-11 13:15:26', '2019-11-19 16:57:17');
INSERT INTO `neuedu_category` VALUES (18, 4, 'DNF', 1, NULL, '2019-11-11 13:15:42', '2019-11-11 13:15:46');
INSERT INTO `neuedu_category` VALUES (19, 4, '魔兽', 1, NULL, '2019-11-11 13:15:56', '2019-11-19 16:36:35');
INSERT INTO `neuedu_category` VALUES (20, 4, '英雄联盟', 1, NULL, '2019-11-11 13:16:07', '2019-11-11 13:16:09');
INSERT INTO `neuedu_category` VALUES (21, 5, '手办', 1, NULL, '2019-11-11 13:16:20', '2019-11-19 16:51:58');
INSERT INTO `neuedu_category` VALUES (22, 5, '航海王', 1, NULL, '2019-11-11 13:16:33', '2019-11-11 13:16:35');
INSERT INTO `neuedu_category` VALUES (23, 6, '火影忍者', 1, NULL, '2019-11-11 13:16:52', '2019-11-11 13:16:54');
INSERT INTO `neuedu_category` VALUES (24, 6, 'cosplay服装', 1, NULL, '2019-11-11 13:17:06', '2019-11-11 13:17:08');
INSERT INTO `neuedu_category` VALUES (25, 2, '单反相机', 1, 99, '2019-11-11 15:11:00', '2019-11-11 15:11:00');
INSERT INTO `neuedu_category` VALUES (26, 0, '电脑平板', 1, NULL, '2019-11-11 16:11:00', '2019-11-11 16:11:00');

-- ----------------------------
-- Table structure for neuedu_product
-- ----------------------------
DROP TABLE IF EXISTS `neuedu_product`;
CREATE TABLE `neuedu_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `category_id` int(11) NOT NULL COMMENT '类别id，对应neuedu_category表的主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `subtitle` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品副标题',
  `main_image` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品主图，url相对地址',
  `sub_images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片地址，json格式',
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品详情',
  `price` decimal(20, 2) NOT NULL COMMENT '价格，单位-元保留两位小数',
  `stock` int(11) NOT NULL COMMENT '库存数量',
  `status` int(6) NULL DEFAULT 1 COMMENT '商品状态，1-在售 2-下架 3-删除',
  `is_new` tinyint(1) NULL DEFAULT 0 COMMENT '是否新品',
  `is_hot` tinyint(1) NULL DEFAULT 0 COMMENT '是否热门',
  `is_banner` tinyint(1) NULL DEFAULT 0 COMMENT '是否轮播',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '最后一次更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10019 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of neuedu_product
-- ----------------------------
INSERT INTO `neuedu_product` VALUES (10000, 1, '电视', '1', '11.jpg', '1', '1', 1.00, 100, 1, 1, 0, 0, '2018-11-27 19:26:55', '2018-11-28 09:36:41');
INSERT INTO `neuedu_product` VALUES (10001, 1, '啊啊是', '1', '11.jpg', '1', '1', 1.00, 90, 1, 1, 0, 0, '2018-11-28 00:49:20', '2018-11-28 00:49:23');
INSERT INTO `neuedu_product` VALUES (10002, 2, '101型号电饭锅', '2', '11.jpg', '2', '这是一个101型号电饭锅', 399.99, 900, 1, 0, 1, 0, '2018-11-28 00:49:47', '2019-11-22 21:07:09');
INSERT INTO `neuedu_product` VALUES (10003, 3, '搜索', '3', '11.jpg', '3', '3', 3.00, 100, 1, 0, 1, 0, '2018-11-28 00:50:13', '2018-11-28 00:50:15');
INSERT INTO `neuedu_product` VALUES (10004, 4, '方法是', '4', '11.jpg', '4', '4', 4.00, 60, 1, 0, 0, 1, '2018-11-28 00:50:27', '2018-11-28 00:50:31');
INSERT INTO `neuedu_product` VALUES (10005, 5, '版本', '5', '11.jpg', '5', '5', 5.00, 50, 1, 0, 0, 1, '2018-11-28 00:50:47', '2018-11-28 00:50:50');
INSERT INTO `neuedu_product` VALUES (10006, 6, '好是', '6', '11.jpg', '6', '6', 6.00, 100, 1, 0, 0, 0, '2018-11-28 00:51:04', '2018-11-28 00:51:07');
INSERT INTO `neuedu_product` VALUES (10007, 1, '华为', NULL, '11.jpg', NULL, NULL, 5.00, 100, 1, 0, 0, 0, '2019-11-11 13:07:02', '2019-11-11 13:07:07');
INSERT INTO `neuedu_product` VALUES (10008, 2, 'zz', NULL, NULL, NULL, NULL, 5.00, 100, 1, 0, 0, 0, '2019-11-21 18:50:03', '2019-11-21 18:50:06');
INSERT INTO `neuedu_product` VALUES (10009, 2, 'zz', NULL, NULL, NULL, NULL, 5.00, 100, 1, 0, 0, 0, '2019-11-21 18:50:03', '2019-11-21 18:50:06');
INSERT INTO `neuedu_product` VALUES (10010, 2, 'zz', NULL, NULL, NULL, NULL, 5.00, 100, 1, 0, 0, 0, '2019-11-21 18:50:03', '2019-11-21 18:50:06');
INSERT INTO `neuedu_product` VALUES (10011, 2, 'zz', NULL, NULL, NULL, NULL, 5.00, 100, 1, 0, 0, 0, '2019-11-21 18:50:03', '2019-11-21 18:50:06');
INSERT INTO `neuedu_product` VALUES (10012, 2, 'zz', NULL, NULL, NULL, NULL, 5.00, 100, 1, 0, 0, 0, '2019-11-21 18:50:03', '2019-11-21 18:50:06');
INSERT INTO `neuedu_product` VALUES (10013, 2, 'zz', NULL, NULL, NULL, NULL, 5.00, 100, 1, 0, 0, 0, '2019-11-21 18:50:03', '2019-11-21 18:50:06');
INSERT INTO `neuedu_product` VALUES (10014, 2, 'zz', NULL, '11.jpg', NULL, '刺不过去爱迪生大红大空间电话卡实打', 5.00, 100, 1, 0, 0, 0, '2019-11-21 18:50:03', '2019-11-21 18:50:06');
INSERT INTO `neuedu_product` VALUES (10015, 2, '小洋人', NULL, NULL, NULL, NULL, 100.00, 100, 1, 0, 0, 0, '2019-11-22 11:10:39', '2019-11-22 11:10:39');
INSERT INTO `neuedu_product` VALUES (10016, 1, '电磁炉', NULL, '2e08e67c-8f1f-4e6b-89d2-8d415c72e6751574392922777LenovoWallPaper.jpg', NULL, '这是一个电磁炉', 300.00, 100, 1, 0, 0, 0, '2019-11-22 11:22:15', '2019-11-22 11:22:15');
INSERT INTO `neuedu_product` VALUES (10017, 1, 'ss', NULL, '', NULL, 'ss', 2.00, 1, 1, 0, 0, 0, '2019-11-22 14:16:26', '2019-11-22 14:16:26');
INSERT INTO `neuedu_product` VALUES (10018, 21, '导盲犬', NULL, '816bbfb5-78ef-4141-aec7-56f2f07fea2315744039423057ee5e2da756565a20b520d0c184b9889.jpg', NULL, '这是一只导盲犬', 50000.00, 3, 1, 0, 0, 0, '2019-11-22 14:26:53', '2019-11-22 14:26:53');

-- ----------------------------
-- Table structure for neuedu_users
-- ----------------------------
DROP TABLE IF EXISTS `neuedu_users`;
CREATE TABLE `neuedu_users`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0',
  `status` int(11) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1',
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `login_number` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uname`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of neuedu_users
-- ----------------------------
INSERT INTO `neuedu_users` VALUES (1, 'admin', 'admin', '超级管理员', '13033132312', 'zhangsan@sina.com', 1, 1, '2019-10-31 15:10:32', '2019-11-25 11:14:09', 125);
INSERT INTO `neuedu_users` VALUES (2, 'lisi66', '12345', '李四66', '13033133852', 'lisi@sina.com', 0, 1, '2019-10-31 15:13:21', '2019-11-19 20:10:59', 206);
INSERT INTO `neuedu_users` VALUES (3, 'wangwu6', '12345', '王五', '15555133852', 'wangwu6@163.com', 0, 1, '2019-10-31 15:16:00', '2019-11-10 21:46:47', 0);
INSERT INTO `neuedu_users` VALUES (4, '测试1', '12345', '测试用户', '1313131313', '55446@侵权。', 0, 1, '2019-10-31 16:38:49', '2019-10-31 16:38:51', 0);
INSERT INTO `neuedu_users` VALUES (5, 'zhangsan', '112233', '张三', '15081308637', '15081308637@163.com', 0, 0, '2019-11-06 20:59:10', '2019-11-10 19:51:36', 0);
INSERT INTO `neuedu_users` VALUES (6, 'xuzhu', '123321', '虚竹', '15512140223', '15512140223@163.com', 0, 1, '2019-11-06 21:00:01', '2019-11-06 21:00:04', 0);
INSERT INTO `neuedu_users` VALUES (7, 'duanyu66', 'abc', '段誉', '13356484456', '13356484456@163.com', 0, 0, '2019-11-07 14:07:03', '2019-11-09 18:18:59', 0);
INSERT INTO `neuedu_users` VALUES (8, 'YY187919', '131415', '二丫', '15912345678', 'YY187919@flash127.com', 0, 1, '2019-11-07 18:57:44', '2019-11-07 18:57:46', 0);
INSERT INTO `neuedu_users` VALUES (9, 'shuaige611', 'ma1112', '帅啊', '15912345678', 'shuai@flash127.com	', 0, 1, '2019-11-07 19:07:18', '2019-11-07 19:07:22', 0);
INSERT INTO `neuedu_users` VALUES (10, 'lcj15172400506', '123321', '未命名', '15912345678', 'Tianshi87@flash127.com', 0, 1, '2019-11-07 19:14:17', '2019-11-07 19:14:17', 1);
INSERT INTO `neuedu_users` VALUES (11, 'a4483270', 'xx123', '未命名', '15912345678', 'a4483270@flash127.com', 0, 1, '2019-11-07 19:16:50', '2019-11-07 19:16:50', 1);
INSERT INTO `neuedu_users` VALUES (12, 'linjing', 'aa11132', '海绵宝宝', '15912345678', 'lingjing@sina.com', 1, 1, '2019-11-07 19:17:19', '2019-11-09 18:12:47', 1);
INSERT INTO `neuedu_users` VALUES (13, 'jy1224761941', 'sss2222', '未命名', '15912345678', '	jy1224761941@flash127.com', 0, 1, '2019-11-07 19:17:55', '2019-11-07 19:17:55', 1);
INSERT INTO `neuedu_users` VALUES (14, 'zhuzhiang12', 'zzz1223', '未命名', '15912345678', '	zhuzhiang12@flash127.com', 0, 1, '2019-11-07 19:18:25', '2019-11-07 19:18:25', 1);
INSERT INTO `neuedu_users` VALUES (15, 'Yanchutouxiang', 'zxc123', '未命名', '15912345678', '	Yanchutouxiang@flash127.com', 0, 1, '2019-11-07 19:18:51', '2019-11-11 08:13:03', 1);
INSERT INTO `neuedu_users` VALUES (16, 'Tianshi87', '123333', '未命名', '15912345678', '	Tianshi87@flash127.com	', 0, 1, '2019-11-07 19:20:51', '2019-11-07 19:20:51', 1);
INSERT INTO `neuedu_users` VALUES (17, 'Tiansshi87', '123321', '未命名', '15912345678', '	Tianshis87@flash127.com	', 0, 1, '2019-11-07 19:20:51', '2019-11-07 19:20:51', 1);
INSERT INTO `neuedu_users` VALUES (19, 'Tianssshi87', '111222333', '未命名', '15312345678', '	Tiansshis87@flash127.com	', 0, 1, '2019-11-07 19:20:51', '2019-11-07 19:20:51', 1);
INSERT INTO `neuedu_users` VALUES (20, 'liunian521', '123', '流年白马', '13383355459', 'liune@gamil.com', 0, 1, '2019-11-08 07:04:27', '2019-11-25 10:12:36', 100);
INSERT INTO `neuedu_users` VALUES (21, 'linjing1', '123456', '大章鱼', '13072119948', 'lingjing1@sina.com', 0, 1, '2019-11-11 08:41:28', '2019-11-11 08:41:56', 0);
INSERT INTO `neuedu_users` VALUES (23, 'xmcx123', '112233', '西门吹雪', '15081364326', 'xmcx133@sina.com', 1, 1, '2019-11-11 08:44:10', '2019-11-11 08:53:40', 0);
INSERT INTO `neuedu_users` VALUES (24, 'lm123', '123', '龙鸣', '13055365739', 'lm@qq.com', 1, 1, '2019-11-11 08:55:31', '2019-11-11 08:55:31', 0);
INSERT INTO `neuedu_users` VALUES (25, 'xixi123', '123', '嘻嘻123', '13784552321', 'xixi123@163.com', 0, 1, '2019-11-11 16:36:21', '2019-11-11 16:36:21', 0);
INSERT INTO `neuedu_users` VALUES (26, 'haha321', '321', '熊大', '13784555459', 'haha321@sina.com', 0, 1, '2019-11-11 16:39:11', '2019-11-11 16:39:11', 0);
INSERT INTO `neuedu_users` VALUES (27, 'wx123a', '123', '(*^__^*) 嘻嘻', '15081308666', '15081308666@163.com', 0, 1, '2019-11-18 11:46:24', '2019-11-18 11:46:24', 0);
INSERT INTO `neuedu_users` VALUES (28, 'wx131415', '123123', '中国龙', '15081308633', '15081308633@163.com', 0, 1, '2019-11-18 11:49:23', '2019-11-18 11:49:23', 0);

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL,
  `cj` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES (1, 3, '92');
INSERT INTO `sc` VALUES (2, 3, '88');
INSERT INTO `sc` VALUES (3, 3, '80');
INSERT INTO `sc` VALUES (4, 2, '20');
INSERT INTO `sc` VALUES (5, 2, '66');
INSERT INTO `sc` VALUES (6, 2, '30');

-- ----------------------------
-- Table structure for second
-- ----------------------------
DROP TABLE IF EXISTS `second`;
CREATE TABLE `second`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of second
-- ----------------------------
INSERT INTO `second` VALUES (1, '电饭锅', 1);
INSERT INTO `second` VALUES (2, '吹风机', 1);
INSERT INTO `second` VALUES (3, '吸尘器', 1);
INSERT INTO `second` VALUES (4, '扫地机器人', 1);
INSERT INTO `second` VALUES (5, '游戏主机', 2);
INSERT INTO `second` VALUES (6, '数码相机', 2);
INSERT INTO `second` VALUES (7, '无人机', 2);
INSERT INTO `second` VALUES (8, '二手数码', 2);
INSERT INTO `second` VALUES (9, 'iPhone xs', 3);
INSERT INTO `second` VALUES (10, '华为Mate20P', 3);
INSERT INTO `second` VALUES (11, '小米MX3', 3);
INSERT INTO `second` VALUES (12, '一加6T', 3);
INSERT INTO `second` VALUES (13, '黑鲨2代', 3);
INSERT INTO `second` VALUES (14, 'DNF', 4);
INSERT INTO `second` VALUES (15, '魔兽', 4);
INSERT INTO `second` VALUES (16, '英雄联盟', 4);
INSERT INTO `second` VALUES (17, '手办', 5);
INSERT INTO `second` VALUES (18, '航海王', 5);
INSERT INTO `second` VALUES (19, '火影忍者', 5);
INSERT INTO `second` VALUES (20, 'cosplay服装', 5);

SET FOREIGN_KEY_CHECKS = 1;
