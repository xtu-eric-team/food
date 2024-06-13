/*
 Navicat Premium Dump SQL

 Source Server         : vue3
 Source Server Type    : MySQL
 Source Server Version : 80037 (8.0.37)
 Source Host           : localhost:3306
 Source Schema         : vue3_project

 Target Server Type    : MySQL
 Target Server Version : 80037 (8.0.37)
 File Encoding         : 65001

 Date: 07/06/2024 22:39:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `cid` int NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '新鲜水果', 1001, 1);
INSERT INTO `category` VALUES (2, '海鲜水产', 1002, 1);
INSERT INTO `category` VALUES (3, '精选肉类', 1003, 1);
INSERT INTO `category` VALUES (4, '冷饮冻食', 1004, 1);
INSERT INTO `category` VALUES (5, '蔬菜单品', 1005, 1);
INSERT INTO `category` VALUES (6, '热销水果', 10001, 1001);
INSERT INTO `category` VALUES (7, '时令水果', 10002, 1001);
INSERT INTO `category` VALUES (8, '热带水果', 10003, 1001);
INSERT INTO `category` VALUES (9, '鱼类', 10021, 1002);
INSERT INTO `category` VALUES (10, '虾类', 10022, 1002);
INSERT INTO `category` VALUES (11, '蟹类', 10023, 1002);
INSERT INTO `category` VALUES (12, '贝类', 10024, 1002);
INSERT INTO `category` VALUES (13, '海参', 10025, 1002);
INSERT INTO `category` VALUES (14, '猪肉', 10031, 1003);
INSERT INTO `category` VALUES (15, '牛肉', 10032, 1003);
INSERT INTO `category` VALUES (16, '羊肉', 10033, 1003);
INSERT INTO `category` VALUES (17, '鸡肉', 10034, 1003);
INSERT INTO `category` VALUES (18, '鸭肉', 10035, 1003);
INSERT INTO `category` VALUES (19, '面点', 10041, 1004);
INSERT INTO `category` VALUES (20, '方便速食', 10051, 1004);
INSERT INTO `category` VALUES (21, '饮品甜品', 10052, 1004);
INSERT INTO `category` VALUES (22, '火锅丸料', 10053, 1004);
INSERT INTO `category` VALUES (23, '叶菜类', 10054, 1005);
INSERT INTO `category` VALUES (24, '鲜菇类', 10055, 1005);
INSERT INTO `category` VALUES (25, '根茎类', 10056, 1005);
INSERT INTO `category` VALUES (26, '新品蛋类', 10057, 1005);
INSERT INTO `category` VALUES (30, '灌灌灌灌', 1076, 4061);
INSERT INTO `category` VALUES (52, '元旦快乐', 1670227441, 1);
INSERT INTO `category` VALUES (53, '你快乐', 1670227448, 1670227441);

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderNum` int NULL DEFAULT NULL,
  `operator` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `totalPrice` int NULL DEFAULT NULL,
  `ids` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (20, 67908, '张三', '15186553061', '2022-12-21 10:01:34', 230, '14,13');
INSERT INTO `collect` VALUES (21, 888278, '张三', '15174047474', '2022-12-21 10:01:38', 320, '12,11');

-- ----------------------------
-- Table structure for content
-- ----------------------------
DROP TABLE IF EXISTS `content`;
CREATE TABLE `content`  (
  `id` int NULL DEFAULT NULL,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `pid` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of content
-- ----------------------------
INSERT INTO `content` VALUES (1001, 'banner广告', 10001);
INSERT INTO `content` VALUES (1003, '电子产品广告', 10003);
INSERT INTO `content` VALUES (19412, '刚刚赚了很多钱', 89602);
INSERT INTO `content` VALUES (1004, '京东618', 90410);
INSERT INTO `content` VALUES (90410, '电脑', 56320);
INSERT INTO `content` VALUES (1, '广告分类', 1001);
INSERT INTO `content` VALUES (10001, '侧边广告', 8020);
INSERT INTO `content` VALUES (10001, 'bbb', 1529);
INSERT INTO `content` VALUES (10001, 'cc', 474);
INSERT INTO `content` VALUES (10002, 'bbb', 9196);
INSERT INTO `content` VALUES (10001, 'nnn', 280);
INSERT INTO `content` VALUES (10002, '冲冲冲', 2999);
INSERT INTO `content` VALUES (1001, '2021京东618', 100);
INSERT INTO `content` VALUES (10001, '5555', 8359);
INSERT INTO `content` VALUES (100, '2022', 3927);
INSERT INTO `content` VALUES (100, 'eee', 3840);
INSERT INTO `content` VALUES (10001, '444', 9797);
INSERT INTO `content` VALUES (1001, '你好世界', 3064);
INSERT INTO `content` VALUES (757, 'fff', 6596);
INSERT INTO `content` VALUES (1001, '元旦快乐', 1891);

-- ----------------------------
-- Table structure for contentinfo
-- ----------------------------
DROP TABLE IF EXISTS `contentinfo`;
CREATE TABLE `contentinfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `url` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contentinfo
-- ----------------------------
INSERT INTO `contentinfo` VALUES (1, 10001, 'OPPO Watch', 'https://pro.jd.com/mall/active/tG3nBBhghqhfM69HoJw9ZoDaT7d/index.html?extension_id=eyJhZCI6IiIsImNoIjoiIiwic2hvcCI6IiIsInNrdSI6IiIsInRzIjoiIiwidW5pcWlkIjoie1wiY2xpY2tfaWRcIjpcIjg5YzRjMTUyLWUwZjktNGQ0OC05NDI4LTJhODQ4NWJjNTc1N1wiLFwibWF0ZXJpYWxfaWRcIjpcIjE4NTAxMDcyMjlcIixcInBvc19pZFwiOlwiNDI3MlwiLFwic2lkXCI6XCJmODcwZmM2MS1jYjc3LTQwN2UtOTM1ZC1jYzhlZTc0MTYyZTdcIn0ifQ==&jd_pop=89c4c152-e0f9-4d48-9428-2a8485bc5757&abt=1', '//img14.360buyimg.com/pop/s1180x940_jfs/t1/110562/14/10737/42247/5e81bb76E6fffa006/b3f703f750bd37ea.jpg.webp');
INSERT INTO `contentinfo` VALUES (3, 90410, '椅子', 'https://channel-m.jd.com/pc/psp/10979325649?imup=CgwKBnd3dGxpdRIAGAASEAjR7azzKBDmZhoAIJpNKAEYsRsgACoUaWwsdWEseGdiLGdhLGNpYSxiYWEyAmlsOioKCWpkX2hiZHl5MRDnYRgCIJL50ty1x-S1dyjCo6Q3MMGjpDc4E0CAgCA&extension_id=eyJhZCI6IiIsImNoIjoiIiwic2hvcCI6IiIsInNrdSI6IiIsInRzIjoiIiwidW5pcWlkIjoie1wiY2xpY2tfaWRcIjpcIjJiNmEyNjE5LWE4MmItNGMyNi1iYzYwLWI3ZGE1NzljOWRkZVwiLFwibWF0ZXJpYWxfaWRcIjpcIjg2MDUxMzIyOTY2NTg2NjQ1OTRcIixcInBvc19pZFwiOlwiMzUwNVwiLFwic2lkXCI6XCJmN2Y5ODM2ZS0yZTViLTQyMTUtYWNiMi04NDdmZmI2N2U2ZDdcIn0ifQ==&jd_pop=2b6a2619-a82b-4c26-bc60-b7da579c9dde&abt=0', 'https://img12.360buyimg.com/pop/s1180x940_jfs/t1/117573/18/9029/83238/5ed7c92aE789977c2/b11a288a7284cdfe.jpg.webp');
INSERT INTO `contentinfo` VALUES (5, 10002, 'fggh', 'dffg', 'dfdf');
INSERT INTO `contentinfo` VALUES (6, 10002, 'hhh', 'hh', 'hh');
INSERT INTO `contentinfo` VALUES (7, 10002, 'hhh', 'hh', 'hhh');
INSERT INTO `contentinfo` VALUES (8, 10002, 'hhh', 'hh', 'hh');
INSERT INTO `contentinfo` VALUES (9, 10002, 'aaa', 'aa', 'aaa');
INSERT INTO `contentinfo` VALUES (11, 10001, '轮播图', 'http://www.baidu.com', 'http://www.baidu.com/banner.jpg');
INSERT INTO `contentinfo` VALUES (12, 10001, '轮播图', 'http://www.baidu.com', 'http://www.baidu.com/banner.jpg');
INSERT INTO `contentinfo` VALUES (13, 10001, 'hjh', '6666', '666');

-- ----------------------------
-- Table structure for orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE `orderinfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `ordername` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '公司',
  `phone` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `yudingTime` datetime NULL DEFAULT NULL,
  `price` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `huizongStatus` int NULL DEFAULT NULL COMMENT '1未汇总 2 已汇总',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderinfo
-- ----------------------------
INSERT INTO `orderinfo` VALUES (4, '58568667', '王小虎', '抖音', '15147483647', '2022-11-15 19:45:48', '100', 1);
INSERT INTO `orderinfo` VALUES (5, '2147483647', '赵吴', '尚学堂', '15174836475', '2022-11-23 19:51:49', '200', 1);
INSERT INTO `orderinfo` VALUES (6, '2147483647', '小岳岳', '德云社', '13147483647', '2022-11-24 19:52:19', '100', 1);
INSERT INTO `orderinfo` VALUES (7, '567889990', '三毛', '流浪地球', '15174836479', '2022-11-29 19:22:04', '300', 1);
INSERT INTO `orderinfo` VALUES (8, '53423344', '沈腾', '开心麻花', '13717483647', '2022-11-30 09:47:44', '400', 1);
INSERT INTO `orderinfo` VALUES (9, '4455677', '贾玲', '大碗娱乐', '13114748367', '2022-11-30 09:48:16', '100', 1);
INSERT INTO `orderinfo` VALUES (10, '566778788', '宋小宝', '东北', '13566785327', '2022-11-30 09:48:48', '120', 1);
INSERT INTO `orderinfo` VALUES (11, '45566677', '钢铁侠', '复仇者联盟', '15147483647', '2022-11-24 09:50:16', '150', 2);
INSERT INTO `orderinfo` VALUES (12, '2147483647', '蜘蛛侠', '复仇者联盟', '15147483647', '2022-11-24 09:50:45', '170', 2);
INSERT INTO `orderinfo` VALUES (13, '2147483647', '黑寡妇', '复仇者联盟', '13514743647', '2022-11-17 09:51:19', '130', 2);
INSERT INTO `orderinfo` VALUES (14, '237905422', '任何', '尚学堂', '13146783228', '2022-11-26 09:51:50', '100', 2);
INSERT INTO `orderinfo` VALUES (15, '2147483647', '小胖梅', '尚学堂', '15474836477', '2022-11-29 09:52:18', '200', 2);
INSERT INTO `orderinfo` VALUES (16, '179843215', '郭麒麟', '德云社', '16266374604336', '2022-12-08 00:00:00', '230', 2);
INSERT INTO `orderinfo` VALUES (17, '1234567891234567', '测试数据', '测试公司', '1234579987653', '2022-12-15 00:00:00', '230', 1);

-- ----------------------------
-- Table structure for params
-- ----------------------------
DROP TABLE IF EXISTS `params`;
CREATE TABLE `params`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `itemCatId` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `paramData` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `specsName` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10063 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of params
-- ----------------------------
INSERT INTO `params` VALUES (10027, '10003', '[{\"value\":\"\",\"title\":\"外观\",\"children\":[{\"value\":\"\",\"title\":\"体重\"}]}]', '外设产品');
INSERT INTO `params` VALUES (10031, '10002', '[{\"value\":\"\",\"title\":\"基本参数\",\"children\":[{\"value\":\"\",\"title\":\"外观\"},{\"value\":\"\",\"title\":\"重量\"},{\"value\":\"\",\"title\":\"生产时期\"}]},{\"value\":\"\",\"title\":\"形状\",\"children\":[{\"value\":\"\",\"title\":\"耗电量\"}]}]', '空调');
INSERT INTO `params` VALUES (10032, '10003', '[{\"value\":\"\",\"title\":\"基本信息\",\"children\":[{\"value\":\"\",\"title\":\"体重\"}]}]', '外设产品');
INSERT INTO `params` VALUES (10033, '1004', '[{\"value\":\"\",\"title\":\"材料\",\"children\":[{\"value\":\"\",\"title\":\"纯棉\"},{\"value\":\"\",\"title\":\"蕾丝\"}]}]', '家具/家居');
INSERT INTO `params` VALUES (10036, '10004', '[{\"value\":\"\",\"title\":\"多少度\",\"children\":[]}]', '摄像');
INSERT INTO `params` VALUES (10037, '1004', '[{\"value\":\"\",\"title\":\"方法\",\"children\":[{\"value\":\"\",\"title\":\"热\"}]}]', '家具/家居');
INSERT INTO `params` VALUES (10044, '1003', '[{\"value\":\"\",\"title\":\"基本信息\",\"children\":[{\"value\":\"\",\"title\":\"外观\"}]},{\"value\":\"\",\"title\":\"特殊配置\",\"children\":[{\"value\":\"\",\"title\":\"内存\"}]}]', '电脑/办公');
INSERT INTO `params` VALUES (10045, '1001', '[{\"value\":\"\",\"title\":\"dsds\",\"children\":[{\"value\":\"\",\"title\":\"dff\"}]}]', '家用电器');
INSERT INTO `params` VALUES (10046, '1002', '[{\"value\":\"\",\"title\":\"基本信息\",\"children\":[{\"value\":\"\",\"title\":\"参数\"}]}]', '手机/运营商/数码');
INSERT INTO `params` VALUES (10047, '1003', '[{\"value\":\"\",\"title\":\"过分过分过分\",\"children\":[{\"value\":\"\",\"title\":\"55人\"}]}]', '电脑/办公');
INSERT INTO `params` VALUES (10049, '1002', '[{\"value\":\"\",\"title\":\"配置参数\",\"children\":[{\"value\":\"\",\"title\":\"外观\"}]}]', '手机/运营商/数码');
INSERT INTO `params` VALUES (10051, '1001', '[{\"value\":\"\",\"title\":\"配置\",\"children\":[{\"value\":\"\",\"title\":\"111\"}]}]', '家用电器');
INSERT INTO `params` VALUES (10052, '10004', '[{\"value\":\"\",\"title\":\"配置\",\"children\":[{\"value\":\"\",\"title\":\"111\"}]}]', '摄像');
INSERT INTO `params` VALUES (10053, '1004', '[{\"value\":\"\",\"title\":\"家具\",\"children\":[{\"value\":\"\",\"title\":\"床\"}]}]', '家具/家居');
INSERT INTO `params` VALUES (10059, '10004', '[{\"value\":\"\",\"name\":\"基本信息\",\"children\":[{\"value\":\"\",\"name\":\"材料组成\"},{\"value\":\"\",\"name\":\"使用寿命\"}]}]', '冰箱');
INSERT INTO `params` VALUES (10060, '10001', '[{\"value\":\"\",\"title\":\"手机配置\",\"children\":[{\"value\":\"\",\"title\":\"尺寸\"},{\"value\":\"\",\"title\":\"像素\"},{\"value\":\"\",\"title\":\"内存\"}]}]', '手机通讯');
INSERT INTO `params` VALUES (10061, '1001', '[{\"value\":\"\",\"title\":\"外观\",\"children\":[{\"value\":\"\",\"title\":\"高度\"},{\"value\":\"\",\"title\":\"重量\"}]}]', '家用电器');
INSERT INTO `params` VALUES (10062, '10004', '[{\"value\":\"\",\"title\":\"66\",\"children\":[{\"value\":\"\",\"title\":\"666\"}]}]', '冰箱');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sellPoint` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `cid` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `category` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  `num` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `barcode` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `descs` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `paramsInfo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10190 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (10015, '三体-刘慈欣', '', '未来科幻', '99', '', NULL, '999', '', '', '0000-00-00 00:00:00', '', '<p>这是大刘的得意之作，连奥巴马都喜欢看！</p>', NULL);
INSERT INTO `project` VALUES (10028, '梦里花落知多少', '2.jpg', '小时代！！！', '11', '10001', NULL, '11', '', '', '0000-00-00 00:00:00', '', '<p>还不错，但是要看书籍，不要看电影</p>', NULL);
INSERT INTO `project` VALUES (10031, '我与地坛', '', '做一个不动声色的人', '55', '', NULL, '464', '', '', '0000-00-00 00:00:00', '', '人生尔尔，错过了，就是一辈子', NULL);
INSERT INTO `project` VALUES (10032, '舞！舞！舞！', '', '村上春树经典作品', '234', '43', NULL, '34', '', '', '0000-00-00 00:00:00', '', '人不是慢慢变老的，而是一瞬间变老的', NULL);
INSERT INTO `project` VALUES (10033, '岁月神偷', '', '经典书籍', '23', '', NULL, '23', '', '', '0000-00-00 00:00:00', '', '我没有精力去认识一个新的人，或者花力气去宠福新维系一段感情，跟没办法在把自己的故事讲述一遍又一遍', NULL);
INSERT INTO `project` VALUES (10035, '解忧杂货店', '', '无论现在有多么的不开心，你要相信明天会比今天更好', '34', '', NULL, '12', '', '', '0000-00-00 00:00:00', '', '<p>无论现在有多么的不开心，你要相信明天会比今天更好!!!!</p>', NULL);
INSERT INTO `project` VALUES (10038, '小王子', '', '写给成年人的童话故事', '20', '', NULL, '1', '', '1', '0000-00-00 00:00:00', '', '所有人都曾是小孩，虽然之后少数人记得', NULL);
INSERT INTO `project` VALUES (10039, '笑场', 'mock\\upload\\1585277506405-u=2137641711,889921437&fm=26&gp=0.jpg', '李诞的作品，很有意思，集成了扯经', '55', '100002', NULL, '1000', '', '1', '0000-00-00 00:00:00', '', '<p>未曾开言，我先笑场，笑过之后，听我来诉一诉衷肠</p>', NULL);
INSERT INTO `project` VALUES (10040, '万历十五年', 'mock\\upload\\1585277681739-u=2137641711,889921437&fm=26&gp=0.jpg', '人民的名义里面出现过很多次', '45', '10002', NULL, '26', '', '1', '0000-00-00 00:00:00', '', '<p>在明朝当皇帝其实没那么幸福，比其清朝来说，还是清朝的皇帝牛逼，毕竟清朝才是更加牛逼的中央集权制</p>', NULL);
INSERT INTO `project` VALUES (10084, '666', '', '666', '666', '', '', '666', '', '1', '0000-00-00 00:00:00', '', '<p>666</p>', NULL);
INSERT INTO `project` VALUES (10085, '888', '', '88', '888', '', '', '888', '', '1', '0000-00-00 00:00:00', '', '<p>888</p>', NULL);
INSERT INTO `project` VALUES (10088, '888', '', '888', '88', '', '', '888', '', '1', '0000-00-00 00:00:00', '', '<p>8888</p>', NULL);
INSERT INTO `project` VALUES (10089, '999', '', '99', '999', '', '', '99', '', '1', '0000-00-00 00:00:00', '', '<p>999</p>', NULL);
INSERT INTO `project` VALUES (10092, 'ioii', '', 'hhh', 'hhh', '', '', 'hhhh', '', '1', '0000-00-00 00:00:00', '', '<p>hhh</p>', NULL);
INSERT INTO `project` VALUES (10093, 'jjj', '', 'jjj', 'jjj', '10001', '电视', 'jjj', '', '1', '0000-00-00 00:00:00', '', '<p>jjj</p>', NULL);
INSERT INTO `project` VALUES (10094, '666', '', '66', '66', '10001', '电视', '66', '', '1', '0000-00-00 00:00:00', '', '<p>66</p>', NULL);
INSERT INTO `project` VALUES (10095, '444', '', '44', '444', '10001', '电视', '444', '', '1', '0000-00-00 00:00:00', '', '<p>4444</p>', '[{\"value\":\"\",\"name\":\"基本参数\",\"children\":[{\"value\":\"44\",\"name\":\"电视大小\"},{\"value\":\"44\",\"name\":\"尺寸单位\"}]}]');
INSERT INTO `project` VALUES (10096, '777', '', '777', '77', '', '电视', '77', '', '1', '0000-00-00 00:00:00', '', '<p>777</p>', '[{\"value\":\"\",\"name\":\"基本参数\",\"children\":[{\"value\":\"77666\",\"name\":\"电视大小\"},{\"value\":\"77677\",\"name\":\"尺寸单位\"}]}]');
INSERT INTO `project` VALUES (10097, '888', 'http://localhost:3065/upload/1616920627783-QQ图片20200722115959.jpg', '', '88', '', '', '8', '', '1', '0000-00-00 00:00:00', '', '', '[]');
INSERT INTO `project` VALUES (10098, 'hhh', 'http://localhost:3065/1616921161534-QQ图片20200722115959.jpg', '', 'hh', '', '', 'hhh', '', '1', '0000-00-00 00:00:00', '', '', '[]');
INSERT INTO `project` VALUES (10099, '', '', '', '', '', '', '', '', '1', '0000-00-00 00:00:00', '', '', '');
INSERT INTO `project` VALUES (10100, '', '', '', '', '', '', '', '', '1', '0000-00-00 00:00:00', '', '', '');
INSERT INTO `project` VALUES (10102, 'ggg', '', '44', '54', '', '', '45', '', '1', '0000-00-00 00:00:00', '', '', '');
INSERT INTO `project` VALUES (10107, '电视长虹', 'http://localhost:4000/1617103475898-qq.jpg', '111', '111', '10001', '电视', '223', '', '1', '0000-00-00 00:00:00', '', '<p>4444最好的电视</p>', '');
INSERT INTO `project` VALUES (10108, '家具用品', 'http://localhost:4000/1617103894235-qq.jpg', 'www', '12.00', '1004', '家具/家居', '3445', '', '1', '0000-00-00 00:00:00', '', '<p>哈哈哈，看看怎么样吧，测试数据</p>', '');
INSERT INTO `project` VALUES (10112, '游戏光盘', 'http://localhost:4000/1617104395957-qq.jpg', '1323', '45.34', '10004', '游戏设备', '3455', '', '1', '0000-00-00 00:00:00', '', '<p>目前加入的prop 那么神奇吗</p>', '');
INSERT INTO `project` VALUES (10117, '天高任鸟飞，海阔凭鱼跃', '', '心敢比天高', '1200.00', '', '', '1', '', '1', '0000-00-00 00:00:00', '', '<p>越自律越优秀</p>', '');
INSERT INTO `project` VALUES (10121, '灌灌灌灌', 'http://localhost:3000/1617242837899-qq.jpg', '455', '455', '10002', '家纺', '455', '', '1', '0000-00-00 00:00:00', '', '<p>4555</p>', '');
INSERT INTO `project` VALUES (10138, '对对对', '', '11', '11', '1003', '电脑/办公', '11', '', '1', '0000-00-00 00:00:00', '', '<p>111</p>', '[{\"value\":\"22\",\"title\":\"基本信息\",\"children\":[{\"value\":\"22\",\"title\":\"外观\"}]},{\"value\":\"22\",\"title\":\"特殊配置\",\"children\":[{\"value\":\"22\",\"title\":\"内存\"}]}]');
INSERT INTO `project` VALUES (10142, '555', '55', '55', '', '', NULL, '', '', '', '0000-00-00 00:00:00', '', '', NULL);
INSERT INTO `project` VALUES (10153, '66', '', '66', '66', '', '', '66', '', '1', '0000-00-00 00:00:00', '', '<p>66</p>', '[]');
INSERT INTO `project` VALUES (10155, '888', '', '88', '888', '', '', '88', '', '', '2022-11-29 16:17:11', '', '<p>88</p>', '[]');
INSERT INTO `project` VALUES (10161, '66', '[\"http://localhost:9898/1669799429884-1.png\",\"http://localhost:9898/1669799429881-2.png\"]', '66', '66', '10001', '热销水果', '66', '', '', '2022-11-30 17:10:35', '', '<p>6789</p>', '');
INSERT INTO `project` VALUES (10165, '99988', '[\"http://localhost:9898/1669873911112-mid.png\"]', '99', '9988', '10033', '羊肉', '9988', '', '', '2022-12-01 13:52:12', '', '<p>9999888</p>', '');
INSERT INTO `project` VALUES (10166, '香菇', '[]', '不一样的香菇', '7.8', '10055', '鲜菇类', '12', '', '', '2022-12-01 16:08:50', '', '<p>香菇很嫩</p><p><strong>好吃</strong></p><h4><strong>真神奇</strong></h4><p><br></p>', '');
INSERT INTO `project` VALUES (10167, '666', '[\"http://localhost:9898/1669949290388-4.png\"]', '666', '666', '1001', '新鲜水果', '666', '', '', '2022-12-02 10:49:59', '', '<p>灌灌灌灌[图片][图片]</p>', '');
INSERT INTO `project` VALUES (10168, '666', '[\"http://localhost:9898/1669949519338-1.png\"]', '666777', '666676767', '1004', '冷饮冻食', '666', '', '', '2022-12-02 11:14:50', '', '<p>哈哈哈<img src=\"http://localhost:9898/1669949525190-mid.png\" alt=\"\" data-href=\"upload\\1669949525190-mid.png\" style=\"\"/></p>', '');
INSERT INTO `project` VALUES (10174, '2222', '[]', '222', '222', '1004', '冷饮冻食', '22', '', '', '2022-12-19 16:03:29', '', 'hello2222', '');
INSERT INTO `project` VALUES (10175, '888', '[]', '88', '88', '1670227441', '元旦快乐', '88', '', '', '2022-12-19 16:03:56', '', 'hello888', '');
INSERT INTO `project` VALUES (10187, '777', '[\"http://localhost:6688/1671502567824-1.png\",\"http://localhost:6688/1671502684932-3.png\"]', '777', '777', '1003', '精选肉类', '777', '', '', '2022-12-20 10:18:48', '', 'hello77779999', '');
INSERT INTO `project` VALUES (10188, '猪肉', '[]', '122', '12', '1004', '冷饮冻食', '12', '', '', '2022-12-26 14:45:32', '', '<p>1233</p>', '');
INSERT INTO `project` VALUES (10189, '牛肉', '[]', '11', '11', '1005', '蔬菜单品', '11', '', '', '2022-12-26 14:45:43', '', '<p>11</p>', '');

-- ----------------------------
-- Table structure for projectparams
-- ----------------------------
DROP TABLE IF EXISTS `projectparams`;
CREATE TABLE `projectparams`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `paramscontent` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of projectparams
-- ----------------------------

-- ----------------------------
-- Table structure for totalorder
-- ----------------------------
DROP TABLE IF EXISTS `totalorder`;
CREATE TABLE `totalorder`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `totalcode` int NULL DEFAULT NULL,
  `totalname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` int NULL DEFAULT NULL,
  `totalTime` datetime NULL DEFAULT NULL,
  `totalPrice` int NULL DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `huizongStatus` int NULL DEFAULT NULL,
  `xiadanname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of totalorder
-- ----------------------------

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 'admin', '123');
INSERT INTO `userinfo` VALUES (2, 'ime', '123');
INSERT INTO `userinfo` VALUES (3, 'jack', '123');
INSERT INTO `userinfo` VALUES (4, 'sakura', '123');
INSERT INTO `userinfo` VALUES (5, '张三', '123');
INSERT INTO `userinfo` VALUES (6, '李四', '123');
INSERT INTO `userinfo` VALUES (7, 'hello1', '123123');
INSERT INTO `userinfo` VALUES (8, 'hello2', '123');
INSERT INTO `userinfo` VALUES (9, 'qq', '123');
INSERT INTO `userinfo` VALUES (10, 'QQ', '123');
INSERT INTO `userinfo` VALUES (11, 'QQ', '123');
INSERT INTO `userinfo` VALUES (12, 'ww', '123');
INSERT INTO `userinfo` VALUES (13, 'www', '123');
INSERT INTO `userinfo` VALUES (14, 'eee', 'eee');

SET FOREIGN_KEY_CHECKS = 1;
