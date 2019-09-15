/*
 Navicat Premium Data Transfer

 Source Server         : 赵玲
 Source Server Type    : MySQL
 Source Server Version : 100137
 Source Host           : localhost:3306
 Source Schema         : hq

 Target Server Type    : MySQL
 Target Server Version : 100137
 File Encoding         : 65001

 Date: 15/09/2019 16:55:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for siyi
-- ----------------------------
DROP TABLE IF EXISTS `siyi`;
CREATE TABLE `siyi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_small` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic_big` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of siyi
-- ----------------------------
INSERT INTO `siyi` VALUES (1, 'siyi\\1.jpg', 'siyi\\1-1.jpg');
INSERT INTO `siyi` VALUES (2, 'siyi\\2.jpg', 'siyi\\2-2.jpg');
INSERT INTO `siyi` VALUES (3, 'siyi\\3.jpg', 'siyi\\3-3.jpg');
INSERT INTO `siyi` VALUES (4, 'siyi\\4.jpg', 'siyi\\4-4.jpg');
INSERT INTO `siyi` VALUES (5, 'siyi\\5.jpg', 'siyi\\5-5.jpg');
INSERT INTO `siyi` VALUES (6, 'siyi\\6.jpg', 'siyi\\6-6.jpg');
INSERT INTO `siyi` VALUES (7, 'siyi\\7.jpg', 'siyi\\7-7.jpg');
INSERT INTO `siyi` VALUES (8, 'siyi\\8.jpg', 'siyi\\8-8.jpg');
INSERT INTO `siyi` VALUES (9, 'siyi\\9.jpg', 'siyi\\9-9.jpg');
INSERT INTO `siyi` VALUES (10, 'siyi\\10.jpg', 'siyi\\10-10.jpg');
INSERT INTO `siyi` VALUES (11, 'siyi\\11.jpg', 'siyi\\11-11.jpg');
INSERT INTO `siyi` VALUES (12, 'siyi\\12.jpg', 'siyi\\12-12.jpg');

-- ----------------------------
-- Table structure for wedding
-- ----------------------------
DROP TABLE IF EXISTS `wedding`;
CREATE TABLE `wedding`  (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wlb` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wtime` date NULL DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`wid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wedding
-- ----------------------------
INSERT INTO `wedding` VALUES (1, '三生三世十里桃花', '主题婚礼', '2018-05-01', '7.jpg');
INSERT INTO `wedding` VALUES (2, '当我牵你衣袖,与你执手,我的生命便尽赋与你', '草坪婚礼', '2018-05-01', '1.jpg');
INSERT INTO `wedding` VALUES (3, '当你遇到对的那个人，不是强烈的动心，而是长久的安心', '创意婚礼', '2018-05-01', '1.jpg');
INSERT INTO `wedding` VALUES (4, '恰到好处的爱情，只因为是你', '西式婚礼', '2018-05-01', '1.jpg');
INSERT INTO `wedding` VALUES (5, '你是一树一树的花开，是暖是爱是希望', '创意婚礼', '2018-05-01', '2.jpg');
INSERT INTO `wedding` VALUES (6, '你是我生命中的光，能驱除我身边所有的黑暗-火烈鸟\n', '创意婚礼', '2018-05-01', '3.jpg');
INSERT INTO `wedding` VALUES (7, '紫色-就像那夜街头上你的吻-浪漫醇香', '主题婚礼', '2018-05-01', '1.jpg');
INSERT INTO `wedding` VALUES (8, '你是我生命里的惊喜，娇小，玲珑，却拥有一种温柔的力量', '主题婚礼', '2018-05-01', '2.jpg');
INSERT INTO `wedding` VALUES (9, '惟愿  岁月静好   给你的幸福点滴满溢', '主题婚礼', '2018-05-01', '3.jpg');
INSERT INTO `wedding` VALUES (10, '追寻斑斓的光彩,享受幸福的滋味', '创意婚礼', '2018-05-01', '4.jpg');
INSERT INTO `wedding` VALUES (11, '“The Heart of the Ocean”', '创意婚礼', '2018-05-01', '5.jpg');
INSERT INTO `wedding` VALUES (12, '从怦然心动到细水长流', '主题婚礼', '2019-09-01', '4.jpg');
INSERT INTO `wedding` VALUES (13, '真爱从眼神里一定可以看得出来', '主题婚礼', '2019-09-14', '5.jpg');
INSERT INTO `wedding` VALUES (14, '“幸福感”是彼此都强烈的想在一起而最终走在了一起', '西式婚礼', '2019-09-14', '2.jpg');
INSERT INTO `wedding` VALUES (15, '很幸运,能拥有今生如此完美的你', '中式婚礼', '2019-09-14', '1.jpg');
INSERT INTO `wedding` VALUES (16, '择一城终老，遇一人白首，挽一帘幽梦，许一世倾城', '中式婚礼', '2019-09-14', '2.jpg');
INSERT INTO `wedding` VALUES (17, '自从你出现后，我才知道原来有人爱是那么的美好', '中式婚礼', '2019-09-14', '3.jpg');
INSERT INTO `wedding` VALUES (18, '你的偶然出现，成就了我生命最美的乐乐曲', '创意婚礼', '2019-09-15', '6.jpg');
INSERT INTO `wedding` VALUES (19, '你的名字，是我，最爱的语录里的唯一单词', '创意婚礼', '2019-09-15', '7.jpg');
INSERT INTO `wedding` VALUES (20, '你的笑容，是我最爱的影片里的唯一影像', '创意婚礼', '2019-09-15', '8.jpg');
INSERT INTO `wedding` VALUES (21, '夜，因为星星的眼眸而绚丽；我，因为有你的陪伴而幸福', '西式婚礼', '2019-09-15', '3.jpg');
INSERT INTO `wedding` VALUES (22, '时光深处，在水一方的相守，于你，于我，都会是幸福', '西式婚礼', '2019-09-15', '4.jpg');
INSERT INTO `wedding` VALUES (23, '最大的幸福就是，在我喜欢你的时候你也恰好喜欢着我\r\n最大的幸福就', '主题婚礼', '2019-09-15', '6.jpg');
INSERT INTO `wedding` VALUES (24, '典雅复古新中式', '中式婚礼', '2019-09-15', '4.jpg');
INSERT INTO `wedding` VALUES (25, '豪华新中式婚礼', '中式婚礼', '2019-09-15', '5.jpg');
INSERT INTO `wedding` VALUES (26, '汉唐婚礼，纪念最美一刻', '中式婚礼', '2019-09-15', '6.jpg');
INSERT INTO `wedding` VALUES (27, '这一世，你注定是我宿命里无法逾越的情堑', '草坪婚礼', '2019-09-15', '2.jpg');
INSERT INTO `wedding` VALUES (28, '总有一个笑脸，是为我们而绽放', '草坪婚礼', '2019-09-15', '3.jpg');
INSERT INTO `wedding` VALUES (29, '你，注定是我今生倾心驻足的风景', '草坪婚礼', '2019-09-15', '4.jpg');
INSERT INTO `wedding` VALUES (30, '花颜好，朱颜巧，凤袍霞帔鸳鸯袄。', '中式婚礼', '2019-09-15', '7.jpg');
INSERT INTO `wedding` VALUES (31, '粉红色的浪漫里，沿着蜿蜒的花径缓缓走进婚姻殿堂', '主题婚礼', '2019-09-15', '8.jpg');
INSERT INTO `wedding` VALUES (32, '欧式复古宫殿风', '西式婚礼', '2019-09-15', '5.jpg');
INSERT INTO `wedding` VALUES (33, '邂逅一个人只需片刻,爱你却是一生-花海阁婚礼', '创意婚礼', '2019-09-15', '9.jpg');
INSERT INTO `wedding` VALUES (34, '我满眼飞火流萤,唯独你,你闪闪发亮-花海阁婚礼', '创意婚礼', '2019-09-15', '10.jpg');
INSERT INTO `wedding` VALUES (35, '给她的爱，是历久弥新的色彩-花海阁出品', '创意婚礼', '2019-09-15', '11.jpg');

-- ----------------------------
-- Table structure for wedding_detail
-- ----------------------------
DROP TABLE IF EXISTS `wedding_detail`;
CREATE TABLE `wedding_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wedding_detail
-- ----------------------------
INSERT INTO `wedding_detail` VALUES (14, 'weddingD\\ssss\\9.jpg', 1);
INSERT INTO `wedding_detail` VALUES (15, 'weddingD\\ssss\\8.jpg', 1);
INSERT INTO `wedding_detail` VALUES (16, 'weddingD\\ssss\\7.jpg', 1);
INSERT INTO `wedding_detail` VALUES (17, 'weddingD\\ssss\\6.jpg', 1);
INSERT INTO `wedding_detail` VALUES (18, 'weddingD\\ssss\\5.jpg', 1);
INSERT INTO `wedding_detail` VALUES (19, 'weddingD\\ssss\\4.jpg', 1);
INSERT INTO `wedding_detail` VALUES (20, 'weddingD\\ssss\\3.jpg', 1);
INSERT INTO `wedding_detail` VALUES (21, 'weddingD\\ssss\\2.jpg', 1);
INSERT INTO `wedding_detail` VALUES (22, 'weddingD\\ssss\\1.jpg', 1);
INSERT INTO `wedding_detail` VALUES (23, 'weddingD\\cp\\8.jpg', 2);
INSERT INTO `wedding_detail` VALUES (24, 'weddingD\\cp\\7.jpg', 2);
INSERT INTO `wedding_detail` VALUES (25, 'weddingD\\cp\\6.jpg', 2);
INSERT INTO `wedding_detail` VALUES (26, 'weddingD\\cp\\5.jpg', 2);
INSERT INTO `wedding_detail` VALUES (27, 'weddingD\\cp\\4.jpg', 2);
INSERT INTO `wedding_detail` VALUES (28, 'weddingD\\cp\\3.jpg', 2);
INSERT INTO `wedding_detail` VALUES (29, 'weddingD\\cp\\2.jpg', 2);
INSERT INTO `wedding_detail` VALUES (30, 'weddingD\\cp\\1.jpg', 2);
INSERT INTO `wedding_detail` VALUES (31, 'weddingD\\cy\\8.jpg', 3);
INSERT INTO `wedding_detail` VALUES (32, 'weddingD\\cy\\7.jpg', 3);
INSERT INTO `wedding_detail` VALUES (33, 'weddingD\\cy\\6.jpg', 3);
INSERT INTO `wedding_detail` VALUES (34, 'weddingD\\cy\\5.jpg', 3);
INSERT INTO `wedding_detail` VALUES (35, 'weddingD\\cy\\4.jpg', 3);
INSERT INTO `wedding_detail` VALUES (36, 'weddingD\\cy\\3.jpg', 3);
INSERT INTO `wedding_detail` VALUES (37, 'weddingD\\cy\\2.jpg', 3);
INSERT INTO `wedding_detail` VALUES (38, 'weddingD\\cy\\1.jpg', 3);

-- ----------------------------
-- Table structure for wedpic_index
-- ----------------------------
DROP TABLE IF EXISTS `wedpic_index`;
CREATE TABLE `wedpic_index`  (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` smallint(6) NULL DEFAULT NULL,
  `img_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img_type` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`img_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wedpic_index
-- ----------------------------
INSERT INTO `wedpic_index` VALUES (1, 1, '1.jpg', '0');
INSERT INTO `wedpic_index` VALUES (2, 1, '2.jpg', '1');
INSERT INTO `wedpic_index` VALUES (3, 1, '3.jpg', '2');
INSERT INTO `wedpic_index` VALUES (4, 2, '1.jpg', '0');
INSERT INTO `wedpic_index` VALUES (5, 2, '2.jpg', '1');
INSERT INTO `wedpic_index` VALUES (6, 2, '3.jpg', '2');
INSERT INTO `wedpic_index` VALUES (7, 3, '1.jpg', '0');
INSERT INTO `wedpic_index` VALUES (8, 3, '2.jpg', '1');
INSERT INTO `wedpic_index` VALUES (9, 3, '3.jpg', '2');
INSERT INTO `wedpic_index` VALUES (10, 4, '1.jpg', '0');
INSERT INTO `wedpic_index` VALUES (11, 4, '2.jpg', '1');
INSERT INTO `wedpic_index` VALUES (12, 4, '3.jpg', '2');
INSERT INTO `wedpic_index` VALUES (13, 5, '1.jpg', '0');
INSERT INTO `wedpic_index` VALUES (14, 5, '2.jpg', '1');
INSERT INTO `wedpic_index` VALUES (15, 5, '3.jpg', '2');

SET FOREIGN_KEY_CHECKS = 1;
