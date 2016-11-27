/*
Navicat MySQL Data Transfer

Source Server         : bendi
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : cms

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2016-11-27 17:31:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accident_reason
-- ----------------------------
DROP TABLE IF EXISTS `accident_reason`;
CREATE TABLE `accident_reason` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `reasonA` smallint(1) NOT NULL DEFAULT '0' COMMENT 'A人因缺陷',
  `reasonB` smallint(1) NOT NULL DEFAULT '0' COMMENT 'B物因缺陷',
  `reasonC` smallint(1) NOT NULL DEFAULT '0' COMMENT 'C环境缺陷',
  `reasonD` smallint(1) NOT NULL DEFAULT '0' COMMENT 'D组织缺陷',
  `isDelete` smallint(1) unsigned NOT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accident_reason
-- ----------------------------

-- ----------------------------
-- Table structure for accident_reason_a1
-- ----------------------------
DROP TABLE IF EXISTS `accident_reason_a1`;
CREATE TABLE `accident_reason_a1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ar_id` int(11) unsigned NOT NULL COMMENT '事故原因,外键',
  `reasonA101` smallint(1) NOT NULL COMMENT 'A101操作错误（误操作、违章作业）',
  `reasonA102` smallint(1) NOT NULL COMMENT 'A102指挥错误（指挥失误、违章指挥）',
  `reasonA103` smallint(1) NOT NULL COMMENT 'A103监控失误',
  `reasonA104` smallint(1) NOT NULL COMMENT 'A014对环境安全的误判',
  `reasonA105` smallint(1) NOT NULL COMMENT 'A105违反劳动纪律（脱岗）',
  `isDelete` smallint(1) unsigned NOT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accident_reason_a1
-- ----------------------------

-- ----------------------------
-- Table structure for accident_reason_a2
-- ----------------------------
DROP TABLE IF EXISTS `accident_reason_a2`;
CREATE TABLE `accident_reason_a2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ar_id` int(11) unsigned NOT NULL COMMENT '事故原因,外键',
  `reasonA201` smallint(1) NOT NULL COMMENT 'A201安全知识了解太少',
  `reasonA202` smallint(1) NOT NULL COMMENT 'A202安全知识理解和掌握不到位',
  `reasonA203` smallint(1) NOT NULL COMMENT 'A203安全知识学习不认真',
  `reasonA204` smallint(1) DEFAULT NULL COMMENT 'A204对潜在的危险源不重视',
  `reasonA205` smallint(1) NOT NULL COMMENT 'A205不能及时有效的消除危险源',
  `reasonA206` smallint(1) NOT NULL COMMENT 'A206对安全隐患上报不及时',
  `reasonA207` smallint(1) NOT NULL COMMENT 'A207安全责任感不强',
  `reasonA208` smallint(1) NOT NULL COMMENT 'A208不重视安全法律法规',
  `reasonA209` smallint(1) NOT NULL COMMENT 'A209不佩戴安全防护用品',
  `reasonA210` smallint(1) NOT NULL COMMENT 'A210不按规范操作',
  `reasonA211` smallint(1) NOT NULL COMMENT 'A211随手乱放料具',
  `reasonA212` smallint(1) NOT NULL COMMENT 'A212不服从安排和管理',
  `reasonA213` smallint(1) NOT NULL COMMENT 'A213安全感知不到位',
  `reasonA214` smallint(1) NOT NULL COMMENT 'A214安全判断不准确',
  `reasonA215` smallint(1) NOT NULL COMMENT 'A215安全反应不及时',
  `reasonA216` smallint(1) NOT NULL COMMENT 'A216安全决策不到位',
  `reasonA217` smallint(1) NOT NULL COMMENT 'A217不能承受工作压力',
  `reasonA218` smallint(1) NOT NULL COMMENT 'A218安全技能不熟练',
  `reasonA219` smallint(1) NOT NULL COMMENT 'A219安全自律不到位',
  `reasonA220` smallint(1) NOT NULL COMMENT 'A220安全动机不纯',
  `reasonA221` smallint(1) NOT NULL COMMENT 'A221安全情绪控制不到位',
  `reasonA222` smallint(1) NOT NULL COMMENT 'A222个人性格特征缺陷',
  `reasonA223` smallint(1) NOT NULL COMMENT 'A223心理易受环境的干扰',
  `reasonA224` smallint(1) NOT NULL COMMENT 'A224身体健康状况不良',
  `reasonA225` smallint(1) NOT NULL COMMENT 'A225体能不健全',
  `reasonA226` smallint(1) NOT NULL COMMENT 'A226智力障碍',
  `reasonA227` smallint(1) NOT NULL COMMENT 'A227感官不灵敏',
  `isDelete` smallint(1) unsigned NOT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accident_reason_a2
-- ----------------------------

-- ----------------------------
-- Table structure for accident_reason_b1
-- ----------------------------
DROP TABLE IF EXISTS `accident_reason_b1`;
CREATE TABLE `accident_reason_b1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ar_id` int(11) unsigned NOT NULL COMMENT '事故原因,外键',
  `reasonB101` smallint(1) NOT NULL COMMENT 'B101施工用具（机械、设备、设施、材料）的设计不合理',
  `reasonB102` smallint(1) NOT NULL COMMENT 'B102质量不合格',
  `reasonB103` smallint(1) NOT NULL COMMENT 'B103操作不方便',
  `isDelete` smallint(1) unsigned NOT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accident_reason_b1
-- ----------------------------

-- ----------------------------
-- Table structure for accident_reason_b2
-- ----------------------------
DROP TABLE IF EXISTS `accident_reason_b2`;
CREATE TABLE `accident_reason_b2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ar_id` int(11) unsigned NOT NULL COMMENT '事故原因,外键',
  `reasonB201` smallint(1) NOT NULL COMMENT 'B201安全防护用品和设施缺失',
  `reasonB202` smallint(1) NOT NULL COMMENT 'B202机械设备故障',
  `reasonB203` smallint(1) NOT NULL COMMENT 'B203施工电线裸露',
  `reasonB204` smallint(1) NOT NULL COMMENT 'B204明火（高温物质）',
  `reasonB205` smallint(1) NOT NULL COMMENT 'B205支撑不牢',
  `reasonB206` smallint(1) NOT NULL COMMENT 'B206围护结构失稳',
  `reasonB207` smallint(1) NOT NULL COMMENT 'B207有毒气体',
  `isDelete` smallint(1) unsigned NOT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accident_reason_b2
-- ----------------------------

-- ----------------------------
-- Table structure for accident_reason_c1
-- ----------------------------
DROP TABLE IF EXISTS `accident_reason_c1`;
CREATE TABLE `accident_reason_c1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ar_id` int(11) unsigned NOT NULL COMMENT '事故原因,外键',
  `reasonC101` smallint(1) NOT NULL COMMENT 'C101现场作业面狭小',
  `reasonC102` smallint(1) NOT NULL COMMENT 'C102现场布置不合理、不整洁',
  `reasonC103` smallint(1) NOT NULL COMMENT 'C103软弱土层',
  `reasonC104` smallint(1) NOT NULL COMMENT 'C104地下孔洞',
  `reasonC105` smallint(1) NOT NULL COMMENT 'C105地下水渗透',
  `reasonC106` smallint(1) NOT NULL COMMENT 'C106地下管线分布不明确',
  `reasonC107` smallint(1) NOT NULL COMMENT 'C107地下管线老化、漏水漏气',
  `isDelete` smallint(1) unsigned NOT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accident_reason_c1
-- ----------------------------

-- ----------------------------
-- Table structure for accident_reason_d1
-- ----------------------------
DROP TABLE IF EXISTS `accident_reason_d1`;
CREATE TABLE `accident_reason_d1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ar_id` int(11) unsigned NOT NULL COMMENT '事故原因,外键',
  `reasonD101` smallint(1) NOT NULL COMMENT 'D101安全管理制度不健全',
  `reasonD102` smallint(1) NOT NULL COMMENT 'D102安全操作规程不专业',
  `reasonD103` smallint(1) NOT NULL COMMENT 'D103安全技术措施编制不严密',
  `reasonD104` smallint(1) NOT NULL COMMENT 'D104安全应急措施不到位',
  `reasonD105` smallint(1) NOT NULL COMMENT 'D105安全防护措施不到位',
  `reasonD106` smallint(1) NOT NULL COMMENT 'D106劳动组织安排不合理',
  `reasonD107` smallint(1) NOT NULL COMMENT 'D107安全监管不到位',
  `reasonD108` smallint(1) NOT NULL COMMENT 'D108安全生产责任未落实',
  `reasonD109` smallint(1) NOT NULL COMMENT 'D109现场安全管理松懈',
  `reasonD110` smallint(1) NOT NULL COMMENT 'D110安全监测不到位',
  `reasonD111` smallint(1) NOT NULL COMMENT 'D111安全检查不到位',
  `reasonD112` smallint(1) NOT NULL COMMENT 'D112安全培训不到位',
  `reasonD113` smallint(1) NOT NULL COMMENT 'D113安全信息沟通不顺畅',
  `reasonD114` smallint(1) NOT NULL COMMENT 'D114未严格落实安全规程和标准',
  `isDelete` smallint(1) unsigned NOT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accident_reason_d1
-- ----------------------------

-- ----------------------------
-- Table structure for accident_reason_d2
-- ----------------------------
DROP TABLE IF EXISTS `accident_reason_d2`;
CREATE TABLE `accident_reason_d2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ar_id` int(11) unsigned NOT NULL COMMENT '事故原因,外键',
  `reasonD201` smallint(1) NOT NULL COMMENT 'D201安全承诺不到位',
  `reasonD202` smallint(1) NOT NULL COMMENT 'D202行为规范与程序不完善',
  `reasonD203` smallint(1) NOT NULL COMMENT 'D203安全行为激励不到位',
  `reasonD204` smallint(1) NOT NULL COMMENT 'D204安全信息传播与沟通不顺畅',
  `reasonD205` smallint(1) NOT NULL COMMENT 'D205自主学习与改进不到位和安全事务参与不到位',
  `isDelete` smallint(1) unsigned NOT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accident_reason_d2
-- ----------------------------

-- ----------------------------
-- Table structure for accident_reason_item
-- ----------------------------
DROP TABLE IF EXISTS `accident_reason_item`;
CREATE TABLE `accident_reason_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ar_id` int(11) unsigned NOT NULL COMMENT '事故原因,外键',
  `reasonA1` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'A1不安全动作',
  `reasonA2` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'A2不安全习惯',
  `reasonB1` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'B1物理性缺陷',
  `reasonB2` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'B2不安全物态',
  `reasonC1` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'C1作业环境不良\\水文地质复杂\\地下管线复杂',
  `reasonD1` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'D1安全管理体系缺欠',
  `reasonD2` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'D2安全文化缺欠',
  `isDelete` smallint(1) unsigned NOT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accident_reason_item
-- ----------------------------

-- ----------------------------
-- Table structure for cms_action_log
-- ----------------------------
DROP TABLE IF EXISTS `cms_action_log`;
CREATE TABLE `cms_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `app` varchar(255) NOT NULL COMMENT '访问程序',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `uri` varchar(255) NOT NULL COMMENT '访问地址',
  `get` varchar(255) NOT NULL DEFAULT '' COMMENT 'get请求参数',
  `post` varchar(255) NOT NULL DEFAULT '' COMMENT 'post请求参数',
  `header` varchar(255) NOT NULL COMMENT '请求头信息',
  `body` varchar(255) NOT NULL COMMENT '请求体',
  `created_at` int(11) NOT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1757 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_action_log
-- ----------------------------
INSERT INTO `cms_action_log` VALUES ('1', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306014');
INSERT INTO `cms_action_log` VALUES ('2', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306034');
INSERT INTO `cms_action_log` VALUES ('3', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306049');
INSERT INTO `cms_action_log` VALUES ('4', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306050');
INSERT INTO `cms_action_log` VALUES ('5', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306051');
INSERT INTO `cms_action_log` VALUES ('6', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306076');
INSERT INTO `cms_action_log` VALUES ('7', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306260');
INSERT INTO `cms_action_log` VALUES ('8', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306261');
INSERT INTO `cms_action_log` VALUES ('9', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306578');
INSERT INTO `cms_action_log` VALUES ('10', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306579');
INSERT INTO `cms_action_log` VALUES ('11', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306579');
INSERT INTO `cms_action_log` VALUES ('12', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306580');
INSERT INTO `cms_action_log` VALUES ('13', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306580');
INSERT INTO `cms_action_log` VALUES ('14', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306580');
INSERT INTO `cms_action_log` VALUES ('15', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306581');
INSERT INTO `cms_action_log` VALUES ('16', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306581');
INSERT INTO `cms_action_log` VALUES ('17', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306582');
INSERT INTO `cms_action_log` VALUES ('18', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475306582');
INSERT INTO `cms_action_log` VALUES ('19', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475306605');
INSERT INTO `cms_action_log` VALUES ('20', 'backend', '39', '/system/node/update', '{\"id\":\"44\"}', '[]', '', '', '1475306608');
INSERT INTO `cms_action_log` VALUES ('21', 'backend', '39', '/system/group/add', '[]', '[]', '', '', '1475306635');
INSERT INTO `cms_action_log` VALUES ('22', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475306767');
INSERT INTO `cms_action_log` VALUES ('23', 'backend', '39', '/system/node/sort-down', '{\"id\":\"44\"}', '[]', '', '', '1475306775');
INSERT INTO `cms_action_log` VALUES ('24', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475306775');
INSERT INTO `cms_action_log` VALUES ('25', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475307324');
INSERT INTO `cms_action_log` VALUES ('26', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475307414');
INSERT INTO `cms_action_log` VALUES ('27', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475307475');
INSERT INTO `cms_action_log` VALUES ('28', 'backend', '41', '/system/main/index', '[]', '[]', '', '', '1475309156');
INSERT INTO `cms_action_log` VALUES ('29', 'backend', '41', '/site/logout', '[]', '[]', '', '', '1475309186');
INSERT INTO `cms_action_log` VALUES ('30', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475309199');
INSERT INTO `cms_action_log` VALUES ('31', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475309222');
INSERT INTO `cms_action_log` VALUES ('32', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475309227');
INSERT INTO `cms_action_log` VALUES ('33', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475309232');
INSERT INTO `cms_action_log` VALUES ('34', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475309311');
INSERT INTO `cms_action_log` VALUES ('35', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475309318');
INSERT INTO `cms_action_log` VALUES ('36', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475309348');
INSERT INTO `cms_action_log` VALUES ('37', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475309354');
INSERT INTO `cms_action_log` VALUES ('38', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475309373');
INSERT INTO `cms_action_log` VALUES ('39', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475309427');
INSERT INTO `cms_action_log` VALUES ('40', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475309552');
INSERT INTO `cms_action_log` VALUES ('41', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475309595');
INSERT INTO `cms_action_log` VALUES ('42', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475309618');
INSERT INTO `cms_action_log` VALUES ('43', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475309671');
INSERT INTO `cms_action_log` VALUES ('44', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475309681');
INSERT INTO `cms_action_log` VALUES ('45', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475310024');
INSERT INTO `cms_action_log` VALUES ('46', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475310029');
INSERT INTO `cms_action_log` VALUES ('47', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475310032');
INSERT INTO `cms_action_log` VALUES ('48', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310035');
INSERT INTO `cms_action_log` VALUES ('49', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475310037');
INSERT INTO `cms_action_log` VALUES ('50', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310039');
INSERT INTO `cms_action_log` VALUES ('51', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310042');
INSERT INTO `cms_action_log` VALUES ('52', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310045');
INSERT INTO `cms_action_log` VALUES ('53', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310046');
INSERT INTO `cms_action_log` VALUES ('54', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310047');
INSERT INTO `cms_action_log` VALUES ('55', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310048');
INSERT INTO `cms_action_log` VALUES ('56', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310050');
INSERT INTO `cms_action_log` VALUES ('57', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310051');
INSERT INTO `cms_action_log` VALUES ('58', 'backend', '39', '/system/group/add', '[]', '[]', '', '', '1475310059');
INSERT INTO `cms_action_log` VALUES ('59', 'backend', '39', '/system/group/add', '[]', '[]', '', '', '1475310061');
INSERT INTO `cms_action_log` VALUES ('60', 'backend', '39', '/system/group/add', '[]', '[]', '', '', '1475310061');
INSERT INTO `cms_action_log` VALUES ('61', 'backend', '39', '/system/group/add', '[]', '[]', '', '', '1475310064');
INSERT INTO `cms_action_log` VALUES ('62', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475310068');
INSERT INTO `cms_action_log` VALUES ('63', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475310070');
INSERT INTO `cms_action_log` VALUES ('64', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475310070');
INSERT INTO `cms_action_log` VALUES ('65', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475310071');
INSERT INTO `cms_action_log` VALUES ('66', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475310073');
INSERT INTO `cms_action_log` VALUES ('67', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475310074');
INSERT INTO `cms_action_log` VALUES ('68', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310076');
INSERT INTO `cms_action_log` VALUES ('69', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310079');
INSERT INTO `cms_action_log` VALUES ('70', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310079');
INSERT INTO `cms_action_log` VALUES ('71', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310080');
INSERT INTO `cms_action_log` VALUES ('72', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310081');
INSERT INTO `cms_action_log` VALUES ('73', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310082');
INSERT INTO `cms_action_log` VALUES ('74', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310082');
INSERT INTO `cms_action_log` VALUES ('75', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310083');
INSERT INTO `cms_action_log` VALUES ('76', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310090');
INSERT INTO `cms_action_log` VALUES ('77', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310091');
INSERT INTO `cms_action_log` VALUES ('78', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475310092');
INSERT INTO `cms_action_log` VALUES ('79', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310098');
INSERT INTO `cms_action_log` VALUES ('80', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310126');
INSERT INTO `cms_action_log` VALUES ('81', 'backend', '39', '/system/node/update', '{\"id\":\"33\"}', '[]', '', '', '1475310132');
INSERT INTO `cms_action_log` VALUES ('82', 'backend', '39', '/system/node/update', '{\"id\":\"33\"}', '{\"_csrf\":\"SXFOLkdNOVAmXHxfIw9.FT0UC0gqKnZlOEZjfT47UwcvHzxJCBRoEw==\",\"Node\":{\"name\":\"\\u9996\\u9875\",\"pid\":\"0\",\"type\":\"1\",\"uri\":\"\\/system\\/main\\/index\",\"class\":\"icon-glass\",\"mark\":\"\\u5c55\\u793a\\u7cfb\\u7edf\\u4fe1\\u606f\",\"level\":\"2\"}}', '', '', '1475310140');
INSERT INTO `cms_action_log` VALUES ('83', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310141');
INSERT INTO `cms_action_log` VALUES ('84', 'backend', '39', '/system/node/delete', '{\"id\":\"49\"}', '[]', '', '', '1475310147');
INSERT INTO `cms_action_log` VALUES ('85', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310147');
INSERT INTO `cms_action_log` VALUES ('86', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310152');
INSERT INTO `cms_action_log` VALUES ('87', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310153');
INSERT INTO `cms_action_log` VALUES ('88', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310154');
INSERT INTO `cms_action_log` VALUES ('89', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310155');
INSERT INTO `cms_action_log` VALUES ('90', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310155');
INSERT INTO `cms_action_log` VALUES ('91', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310156');
INSERT INTO `cms_action_log` VALUES ('92', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310157');
INSERT INTO `cms_action_log` VALUES ('93', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310158');
INSERT INTO `cms_action_log` VALUES ('94', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310158');
INSERT INTO `cms_action_log` VALUES ('95', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310159');
INSERT INTO `cms_action_log` VALUES ('96', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475310161');
INSERT INTO `cms_action_log` VALUES ('97', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475310162');
INSERT INTO `cms_action_log` VALUES ('98', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475310163');
INSERT INTO `cms_action_log` VALUES ('99', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310163');
INSERT INTO `cms_action_log` VALUES ('100', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310168');
INSERT INTO `cms_action_log` VALUES ('101', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310169');
INSERT INTO `cms_action_log` VALUES ('102', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310170');
INSERT INTO `cms_action_log` VALUES ('103', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310174');
INSERT INTO `cms_action_log` VALUES ('104', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310291');
INSERT INTO `cms_action_log` VALUES ('105', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310292');
INSERT INTO `cms_action_log` VALUES ('106', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310294');
INSERT INTO `cms_action_log` VALUES ('107', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310298');
INSERT INTO `cms_action_log` VALUES ('108', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310302');
INSERT INTO `cms_action_log` VALUES ('109', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475310310');
INSERT INTO `cms_action_log` VALUES ('110', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310313');
INSERT INTO `cms_action_log` VALUES ('111', 'backend', '39', '/system/node/update', '{\"id\":\"33\"}', '[]', '', '', '1475310315');
INSERT INTO `cms_action_log` VALUES ('112', 'backend', '39', '/system/node/update', '{\"id\":\"33\"}', '{\"_csrf\":\"bVR3d1g2eFkCeUUGPHQ\\/HBkxMhE1UTdsHGNaJCFAEg4LOgUQF28pGg==\",\"Node\":{\"name\":\"\\u9996\\u9875\",\"pid\":\"0\",\"type\":\"1\",\"uri\":\"\\/system\\/main\\/index\",\"class\":\"icon-google-plus\",\"mark\":\"\\u5c55\\u793a\\u7cfb\\u7edf\\u4fe1\\u606f\",\"level\":\"1\"}}', '', '', '1475310366');
INSERT INTO `cms_action_log` VALUES ('113', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310366');
INSERT INTO `cms_action_log` VALUES ('114', 'backend', '39', '/system/group/add', '[]', '[]', '', '', '1475310378');
INSERT INTO `cms_action_log` VALUES ('115', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475310383');
INSERT INTO `cms_action_log` VALUES ('116', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310387');
INSERT INTO `cms_action_log` VALUES ('117', 'backend', '39', '/system/node/update', '{\"id\":\"38\"}', '[]', '', '', '1475310392');
INSERT INTO `cms_action_log` VALUES ('118', 'backend', '39', '/system/node/update', '{\"id\":\"38\"}', '{\"_csrf\":\"VGlyQWVYZ3E7REAwARogNCAMNycIPyhEJV5fEhwuDSYyBwAmKgE2Mg==\",\"Node\":{\"name\":\"\\u6dfb\\u52a0\\u7ba1\\u7406\\u7ec4\",\"pid\":\"52\",\"type\":\"1\",\"uri\":\"\\/system\\/group\\/add\",\"class\":\"icon-glass\",\"mark\":\"\\u6dfb\\u52a0\\u4e00\\u4e2a\\u7ba1\\u7406\\u7ec4\",\"level\":\"1\"}}', '', '', '1475310400');
INSERT INTO `cms_action_log` VALUES ('119', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310400');
INSERT INTO `cms_action_log` VALUES ('120', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475310402');
INSERT INTO `cms_action_log` VALUES ('121', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475310408');
INSERT INTO `cms_action_log` VALUES ('122', 'backend', '39', '/system/group/add', '[]', '[]', '', '', '1475310409');
INSERT INTO `cms_action_log` VALUES ('123', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475310410');
INSERT INTO `cms_action_log` VALUES ('124', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475310413');
INSERT INTO `cms_action_log` VALUES ('125', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310415');
INSERT INTO `cms_action_log` VALUES ('126', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475310415');
INSERT INTO `cms_action_log` VALUES ('127', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475310418');
INSERT INTO `cms_action_log` VALUES ('128', 'backend', '39', '/system/admin/add', '[]', '[]', '', '', '1475310419');
INSERT INTO `cms_action_log` VALUES ('129', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475310420');
INSERT INTO `cms_action_log` VALUES ('130', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475310422');
INSERT INTO `cms_action_log` VALUES ('131', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475310423');
INSERT INTO `cms_action_log` VALUES ('132', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475310425');
INSERT INTO `cms_action_log` VALUES ('133', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475310427');
INSERT INTO `cms_action_log` VALUES ('134', 'backend', '39', '/system/group/add', '[]', '[]', '', '', '1475310428');
INSERT INTO `cms_action_log` VALUES ('135', 'backend', '39', '/system/group/add', '[]', '[]', '', '', '1475310514');
INSERT INTO `cms_action_log` VALUES ('136', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310545');
INSERT INTO `cms_action_log` VALUES ('137', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310586');
INSERT INTO `cms_action_log` VALUES ('138', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310587');
INSERT INTO `cms_action_log` VALUES ('139', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310587');
INSERT INTO `cms_action_log` VALUES ('140', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310716');
INSERT INTO `cms_action_log` VALUES ('141', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310718');
INSERT INTO `cms_action_log` VALUES ('142', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310764');
INSERT INTO `cms_action_log` VALUES ('143', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310765');
INSERT INTO `cms_action_log` VALUES ('144', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310766');
INSERT INTO `cms_action_log` VALUES ('145', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310766');
INSERT INTO `cms_action_log` VALUES ('146', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310766');
INSERT INTO `cms_action_log` VALUES ('147', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310766');
INSERT INTO `cms_action_log` VALUES ('148', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310767');
INSERT INTO `cms_action_log` VALUES ('149', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310768');
INSERT INTO `cms_action_log` VALUES ('150', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310795');
INSERT INTO `cms_action_log` VALUES ('151', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310796');
INSERT INTO `cms_action_log` VALUES ('152', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310806');
INSERT INTO `cms_action_log` VALUES ('153', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310827');
INSERT INTO `cms_action_log` VALUES ('154', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310828');
INSERT INTO `cms_action_log` VALUES ('155', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310829');
INSERT INTO `cms_action_log` VALUES ('156', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310829');
INSERT INTO `cms_action_log` VALUES ('157', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310843');
INSERT INTO `cms_action_log` VALUES ('158', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310844');
INSERT INTO `cms_action_log` VALUES ('159', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310844');
INSERT INTO `cms_action_log` VALUES ('160', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310845');
INSERT INTO `cms_action_log` VALUES ('161', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310846');
INSERT INTO `cms_action_log` VALUES ('162', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310846');
INSERT INTO `cms_action_log` VALUES ('163', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310847');
INSERT INTO `cms_action_log` VALUES ('164', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310847');
INSERT INTO `cms_action_log` VALUES ('165', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310847');
INSERT INTO `cms_action_log` VALUES ('166', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310848');
INSERT INTO `cms_action_log` VALUES ('167', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310848');
INSERT INTO `cms_action_log` VALUES ('168', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310849');
INSERT INTO `cms_action_log` VALUES ('169', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310849');
INSERT INTO `cms_action_log` VALUES ('170', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310850');
INSERT INTO `cms_action_log` VALUES ('171', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310850');
INSERT INTO `cms_action_log` VALUES ('172', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310850');
INSERT INTO `cms_action_log` VALUES ('173', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310851');
INSERT INTO `cms_action_log` VALUES ('174', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310851');
INSERT INTO `cms_action_log` VALUES ('175', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310852');
INSERT INTO `cms_action_log` VALUES ('176', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310855');
INSERT INTO `cms_action_log` VALUES ('177', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310856');
INSERT INTO `cms_action_log` VALUES ('178', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310856');
INSERT INTO `cms_action_log` VALUES ('179', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310860');
INSERT INTO `cms_action_log` VALUES ('180', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310861');
INSERT INTO `cms_action_log` VALUES ('181', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310861');
INSERT INTO `cms_action_log` VALUES ('182', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310862');
INSERT INTO `cms_action_log` VALUES ('183', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310862');
INSERT INTO `cms_action_log` VALUES ('184', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310863');
INSERT INTO `cms_action_log` VALUES ('185', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310863');
INSERT INTO `cms_action_log` VALUES ('186', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310863');
INSERT INTO `cms_action_log` VALUES ('187', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310864');
INSERT INTO `cms_action_log` VALUES ('188', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310864');
INSERT INTO `cms_action_log` VALUES ('189', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310945');
INSERT INTO `cms_action_log` VALUES ('190', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310947');
INSERT INTO `cms_action_log` VALUES ('191', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310973');
INSERT INTO `cms_action_log` VALUES ('192', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310974');
INSERT INTO `cms_action_log` VALUES ('193', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310975');
INSERT INTO `cms_action_log` VALUES ('194', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310976');
INSERT INTO `cms_action_log` VALUES ('195', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310976');
INSERT INTO `cms_action_log` VALUES ('196', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310977');
INSERT INTO `cms_action_log` VALUES ('197', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310978');
INSERT INTO `cms_action_log` VALUES ('198', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310985');
INSERT INTO `cms_action_log` VALUES ('199', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310986');
INSERT INTO `cms_action_log` VALUES ('200', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310986');
INSERT INTO `cms_action_log` VALUES ('201', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475310998');
INSERT INTO `cms_action_log` VALUES ('202', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311069');
INSERT INTO `cms_action_log` VALUES ('203', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311073');
INSERT INTO `cms_action_log` VALUES ('204', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311074');
INSERT INTO `cms_action_log` VALUES ('205', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311074');
INSERT INTO `cms_action_log` VALUES ('206', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311075');
INSERT INTO `cms_action_log` VALUES ('207', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311075');
INSERT INTO `cms_action_log` VALUES ('208', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311076');
INSERT INTO `cms_action_log` VALUES ('209', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311076');
INSERT INTO `cms_action_log` VALUES ('210', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311077');
INSERT INTO `cms_action_log` VALUES ('211', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311077');
INSERT INTO `cms_action_log` VALUES ('212', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311077');
INSERT INTO `cms_action_log` VALUES ('213', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311078');
INSERT INTO `cms_action_log` VALUES ('214', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311078');
INSERT INTO `cms_action_log` VALUES ('215', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311079');
INSERT INTO `cms_action_log` VALUES ('216', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311082');
INSERT INTO `cms_action_log` VALUES ('217', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311083');
INSERT INTO `cms_action_log` VALUES ('218', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475311083');
INSERT INTO `cms_action_log` VALUES ('219', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475311086');
INSERT INTO `cms_action_log` VALUES ('220', 'backend', '39', '/system/group/add', '[]', '[]', '', '', '1475311088');
INSERT INTO `cms_action_log` VALUES ('221', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475311091');
INSERT INTO `cms_action_log` VALUES ('222', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311093');
INSERT INTO `cms_action_log` VALUES ('223', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311094');
INSERT INTO `cms_action_log` VALUES ('224', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475311095');
INSERT INTO `cms_action_log` VALUES ('225', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311097');
INSERT INTO `cms_action_log` VALUES ('226', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475311099');
INSERT INTO `cms_action_log` VALUES ('227', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311107');
INSERT INTO `cms_action_log` VALUES ('228', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475311109');
INSERT INTO `cms_action_log` VALUES ('229', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311162');
INSERT INTO `cms_action_log` VALUES ('230', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311465');
INSERT INTO `cms_action_log` VALUES ('231', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475311470');
INSERT INTO `cms_action_log` VALUES ('232', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311472');
INSERT INTO `cms_action_log` VALUES ('233', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475311474');
INSERT INTO `cms_action_log` VALUES ('234', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311475');
INSERT INTO `cms_action_log` VALUES ('235', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475311476');
INSERT INTO `cms_action_log` VALUES ('236', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311478');
INSERT INTO `cms_action_log` VALUES ('237', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475311481');
INSERT INTO `cms_action_log` VALUES ('238', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311482');
INSERT INTO `cms_action_log` VALUES ('239', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475311484');
INSERT INTO `cms_action_log` VALUES ('240', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311485');
INSERT INTO `cms_action_log` VALUES ('241', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475311486');
INSERT INTO `cms_action_log` VALUES ('242', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311488');
INSERT INTO `cms_action_log` VALUES ('243', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475311739');
INSERT INTO `cms_action_log` VALUES ('244', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311740');
INSERT INTO `cms_action_log` VALUES ('245', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475311743');
INSERT INTO `cms_action_log` VALUES ('246', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311743');
INSERT INTO `cms_action_log` VALUES ('247', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475311744');
INSERT INTO `cms_action_log` VALUES ('248', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475311746');
INSERT INTO `cms_action_log` VALUES ('249', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475311761');
INSERT INTO `cms_action_log` VALUES ('250', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475311761');
INSERT INTO `cms_action_log` VALUES ('251', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475311762');
INSERT INTO `cms_action_log` VALUES ('252', 'backend', '39', '/system/admin/add', '[]', '[]', '', '', '1475311763');
INSERT INTO `cms_action_log` VALUES ('253', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475311771');
INSERT INTO `cms_action_log` VALUES ('254', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311774');
INSERT INTO `cms_action_log` VALUES ('255', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475311776');
INSERT INTO `cms_action_log` VALUES ('256', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475311778');
INSERT INTO `cms_action_log` VALUES ('257', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475311779');
INSERT INTO `cms_action_log` VALUES ('258', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475311793');
INSERT INTO `cms_action_log` VALUES ('259', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475311794');
INSERT INTO `cms_action_log` VALUES ('260', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475311799');
INSERT INTO `cms_action_log` VALUES ('261', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475311802');
INSERT INTO `cms_action_log` VALUES ('262', 'backend', '39', '/system/node/add', '[]', '{\"_csrf\":\"UG1URVFtUFc\\/QGY0NS8XEiQIESM8Ch9iIVp5FigbOgA2AyYiHjQBFA==\",\"Node\":{\"name\":\"\\u67e5\\u770b\\u7ba1\\u7406\\u5458\",\"pid\":\"52\",\"type\":\"3\",\"uri\":\"\\/system\\/group\\/admin\",\"class\":\"icon-glass\",\"mark\":\"\\u67e5\\u770b\\u7ec4\\u6210\\u5458\"}}', '', '', '1475311854');
INSERT INTO `cms_action_log` VALUES ('263', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311854');
INSERT INTO `cms_action_log` VALUES ('264', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475311856');
INSERT INTO `cms_action_log` VALUES ('265', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475311857');
INSERT INTO `cms_action_log` VALUES ('266', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475311860');
INSERT INTO `cms_action_log` VALUES ('267', 'backend', '39', '/system/group/node', '{\"id\":\"95\"}', '[]', '', '', '1475311867');
INSERT INTO `cms_action_log` VALUES ('268', 'backend', '39', '/system/group/node-add', '{\"nodeId\":\"63\",\"groupId\":\"95\"}', '[]', '', '', '1475311871');
INSERT INTO `cms_action_log` VALUES ('269', 'backend', '39', '/system/group/node', '{\"id\":\"95\"}', '[]', '', '', '1475311871');
INSERT INTO `cms_action_log` VALUES ('270', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475311875');
INSERT INTO `cms_action_log` VALUES ('271', 'backend', '39', '/system/group/add', '[]', '[]', '', '', '1475311902');
INSERT INTO `cms_action_log` VALUES ('272', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475311903');
INSERT INTO `cms_action_log` VALUES ('273', 'backend', '39', '/system/group/add', '[]', '[]', '', '', '1475311905');
INSERT INTO `cms_action_log` VALUES ('274', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475311906');
INSERT INTO `cms_action_log` VALUES ('275', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475311919');
INSERT INTO `cms_action_log` VALUES ('276', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475311922');
INSERT INTO `cms_action_log` VALUES ('277', 'backend', '39', '/system/group/add', '[]', '[]', '', '', '1475311924');
INSERT INTO `cms_action_log` VALUES ('278', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475311925');
INSERT INTO `cms_action_log` VALUES ('279', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475312091');
INSERT INTO `cms_action_log` VALUES ('280', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475312092');
INSERT INTO `cms_action_log` VALUES ('281', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475312093');
INSERT INTO `cms_action_log` VALUES ('282', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475312093');
INSERT INTO `cms_action_log` VALUES ('283', 'backend', '39', '/system/group/admin', '{\"id\":\"95\"}', '[]', '', '', '1475312095');
INSERT INTO `cms_action_log` VALUES ('284', 'backend', '39', '/system/group/admin', '{\"id\":\"95\"}', '[]', '', '', '1475312097');
INSERT INTO `cms_action_log` VALUES ('285', 'backend', '39', '/system/group/admin', '{\"id\":\"95\"}', '[]', '', '', '1475312111');
INSERT INTO `cms_action_log` VALUES ('286', 'backend', '39', '/system/group/admin', '{\"id\":\"95\"}', '[]', '', '', '1475312112');
INSERT INTO `cms_action_log` VALUES ('287', 'backend', '39', '/system/group/admin', '{\"id\":\"95\"}', '[]', '', '', '1475312113');
INSERT INTO `cms_action_log` VALUES ('288', 'backend', '39', '/system/admin/delete', '{\"id\":\"39\"}', '[]', '', '', '1475312119');
INSERT INTO `cms_action_log` VALUES ('289', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312119');
INSERT INTO `cms_action_log` VALUES ('290', 'backend', '39', '/system/admin/delete', '{\"id\":\"39\"}', '[]', '', '', '1475312123');
INSERT INTO `cms_action_log` VALUES ('291', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312123');
INSERT INTO `cms_action_log` VALUES ('292', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312124');
INSERT INTO `cms_action_log` VALUES ('293', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312125');
INSERT INTO `cms_action_log` VALUES ('294', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312126');
INSERT INTO `cms_action_log` VALUES ('295', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312126');
INSERT INTO `cms_action_log` VALUES ('296', 'backend', '39', '/system/admin/delete', '{\"id\":\"39\"}', '[]', '', '', '1475312127');
INSERT INTO `cms_action_log` VALUES ('297', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312128');
INSERT INTO `cms_action_log` VALUES ('298', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312128');
INSERT INTO `cms_action_log` VALUES ('299', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312129');
INSERT INTO `cms_action_log` VALUES ('300', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312129');
INSERT INTO `cms_action_log` VALUES ('301', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312129');
INSERT INTO `cms_action_log` VALUES ('302', 'backend', '39', '/system/admin/delete', '{\"id\":\"39\"}', '[]', '', '', '1475312133');
INSERT INTO `cms_action_log` VALUES ('303', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312134');
INSERT INTO `cms_action_log` VALUES ('304', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312270');
INSERT INTO `cms_action_log` VALUES ('305', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312271');
INSERT INTO `cms_action_log` VALUES ('306', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312272');
INSERT INTO `cms_action_log` VALUES ('307', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312272');
INSERT INTO `cms_action_log` VALUES ('308', 'backend', '39', '/system/admin/delete', '{\"id\":\"39\"}', '[]', '', '', '1475312274');
INSERT INTO `cms_action_log` VALUES ('309', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312274');
INSERT INTO `cms_action_log` VALUES ('310', 'backend', '39', '/system/admin/delete', '{\"id\":\"39\"}', '[]', '', '', '1475312274');
INSERT INTO `cms_action_log` VALUES ('311', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312274');
INSERT INTO `cms_action_log` VALUES ('312', 'backend', '39', '/system/admin/delete', '{\"id\":\"39\"}', '[]', '', '', '1475312275');
INSERT INTO `cms_action_log` VALUES ('313', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312275');
INSERT INTO `cms_action_log` VALUES ('314', 'backend', '39', '/system/admin/delete', '{\"id\":\"39\"}', '[]', '', '', '1475312275');
INSERT INTO `cms_action_log` VALUES ('315', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312276');
INSERT INTO `cms_action_log` VALUES ('316', 'backend', '39', '/system/admin/delete', '{\"id\":\"39\"}', '[]', '', '', '1475312276');
INSERT INTO `cms_action_log` VALUES ('317', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312276');
INSERT INTO `cms_action_log` VALUES ('318', 'backend', '39', '/system/admin/delete', '{\"id\":\"39\"}', '[]', '', '', '1475312280');
INSERT INTO `cms_action_log` VALUES ('319', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312280');
INSERT INTO `cms_action_log` VALUES ('320', 'backend', '39', '/system/admin/delete', '{\"id\":\"39\"}', '[]', '', '', '1475312280');
INSERT INTO `cms_action_log` VALUES ('321', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312280');
INSERT INTO `cms_action_log` VALUES ('322', 'backend', '39', '/system/admin/delete', '{\"id\":\"39\"}', '[]', '', '', '1475312281');
INSERT INTO `cms_action_log` VALUES ('323', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312281');
INSERT INTO `cms_action_log` VALUES ('324', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312301');
INSERT INTO `cms_action_log` VALUES ('325', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312302');
INSERT INTO `cms_action_log` VALUES ('326', 'backend', '39', '/site/error', '[]', '[]', '', '', '1475312305');
INSERT INTO `cms_action_log` VALUES ('327', 'backend', '39', '/site/error', '[]', '[]', '', '', '1475312312');
INSERT INTO `cms_action_log` VALUES ('328', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312314');
INSERT INTO `cms_action_log` VALUES ('329', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312314');
INSERT INTO `cms_action_log` VALUES ('330', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312315');
INSERT INTO `cms_action_log` VALUES ('331', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312323');
INSERT INTO `cms_action_log` VALUES ('332', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312323');
INSERT INTO `cms_action_log` VALUES ('333', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312351');
INSERT INTO `cms_action_log` VALUES ('334', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312352');
INSERT INTO `cms_action_log` VALUES ('335', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475312355');
INSERT INTO `cms_action_log` VALUES ('336', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312363');
INSERT INTO `cms_action_log` VALUES ('337', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312395');
INSERT INTO `cms_action_log` VALUES ('338', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312397');
INSERT INTO `cms_action_log` VALUES ('339', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312397');
INSERT INTO `cms_action_log` VALUES ('340', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312398');
INSERT INTO `cms_action_log` VALUES ('341', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312399');
INSERT INTO `cms_action_log` VALUES ('342', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312402');
INSERT INTO `cms_action_log` VALUES ('343', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312413');
INSERT INTO `cms_action_log` VALUES ('344', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312414');
INSERT INTO `cms_action_log` VALUES ('345', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312415');
INSERT INTO `cms_action_log` VALUES ('346', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312417');
INSERT INTO `cms_action_log` VALUES ('347', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312418');
INSERT INTO `cms_action_log` VALUES ('348', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312418');
INSERT INTO `cms_action_log` VALUES ('349', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312419');
INSERT INTO `cms_action_log` VALUES ('350', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312426');
INSERT INTO `cms_action_log` VALUES ('351', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312427');
INSERT INTO `cms_action_log` VALUES ('352', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312428');
INSERT INTO `cms_action_log` VALUES ('353', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312428');
INSERT INTO `cms_action_log` VALUES ('354', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312429');
INSERT INTO `cms_action_log` VALUES ('355', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475312430');
INSERT INTO `cms_action_log` VALUES ('356', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312433');
INSERT INTO `cms_action_log` VALUES ('357', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312439');
INSERT INTO `cms_action_log` VALUES ('358', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312454');
INSERT INTO `cms_action_log` VALUES ('359', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312454');
INSERT INTO `cms_action_log` VALUES ('360', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312455');
INSERT INTO `cms_action_log` VALUES ('361', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312456');
INSERT INTO `cms_action_log` VALUES ('362', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312457');
INSERT INTO `cms_action_log` VALUES ('363', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312458');
INSERT INTO `cms_action_log` VALUES ('364', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312459');
INSERT INTO `cms_action_log` VALUES ('365', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312460');
INSERT INTO `cms_action_log` VALUES ('366', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312467');
INSERT INTO `cms_action_log` VALUES ('367', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312468');
INSERT INTO `cms_action_log` VALUES ('368', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312468');
INSERT INTO `cms_action_log` VALUES ('369', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312469');
INSERT INTO `cms_action_log` VALUES ('370', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312469');
INSERT INTO `cms_action_log` VALUES ('371', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312486');
INSERT INTO `cms_action_log` VALUES ('372', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312486');
INSERT INTO `cms_action_log` VALUES ('373', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312488');
INSERT INTO `cms_action_log` VALUES ('374', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312488');
INSERT INTO `cms_action_log` VALUES ('375', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312489');
INSERT INTO `cms_action_log` VALUES ('376', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312490');
INSERT INTO `cms_action_log` VALUES ('377', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312491');
INSERT INTO `cms_action_log` VALUES ('378', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312491');
INSERT INTO `cms_action_log` VALUES ('379', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312492');
INSERT INTO `cms_action_log` VALUES ('380', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312503');
INSERT INTO `cms_action_log` VALUES ('381', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312504');
INSERT INTO `cms_action_log` VALUES ('382', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312505');
INSERT INTO `cms_action_log` VALUES ('383', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312506');
INSERT INTO `cms_action_log` VALUES ('384', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312511');
INSERT INTO `cms_action_log` VALUES ('385', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312512');
INSERT INTO `cms_action_log` VALUES ('386', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312513');
INSERT INTO `cms_action_log` VALUES ('387', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475312548');
INSERT INTO `cms_action_log` VALUES ('388', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560475');
INSERT INTO `cms_action_log` VALUES ('389', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560518');
INSERT INTO `cms_action_log` VALUES ('390', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560549');
INSERT INTO `cms_action_log` VALUES ('391', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560550');
INSERT INTO `cms_action_log` VALUES ('392', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560551');
INSERT INTO `cms_action_log` VALUES ('393', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560551');
INSERT INTO `cms_action_log` VALUES ('394', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560552');
INSERT INTO `cms_action_log` VALUES ('395', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560552');
INSERT INTO `cms_action_log` VALUES ('396', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560552');
INSERT INTO `cms_action_log` VALUES ('397', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560553');
INSERT INTO `cms_action_log` VALUES ('398', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560554');
INSERT INTO `cms_action_log` VALUES ('399', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560554');
INSERT INTO `cms_action_log` VALUES ('400', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560555');
INSERT INTO `cms_action_log` VALUES ('401', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560557');
INSERT INTO `cms_action_log` VALUES ('402', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560557');
INSERT INTO `cms_action_log` VALUES ('403', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560558');
INSERT INTO `cms_action_log` VALUES ('404', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560559');
INSERT INTO `cms_action_log` VALUES ('405', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560559');
INSERT INTO `cms_action_log` VALUES ('406', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475560591');
INSERT INTO `cms_action_log` VALUES ('407', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475561093');
INSERT INTO `cms_action_log` VALUES ('408', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475561098');
INSERT INTO `cms_action_log` VALUES ('409', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561100');
INSERT INTO `cms_action_log` VALUES ('410', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475561178');
INSERT INTO `cms_action_log` VALUES ('411', 'backend', '39', '/system/node/add', '[]', '{\"_csrf\":\"bjZ6dGJVYWIUQhJBJD1WCi1hIi4xJCBaFHouPw8ENSkbY0krKBYCFg==\",\"Node\":{\"name\":\"\\u5f3a\\u5236\\u4e0b\\u7ebf\",\"pid\":\"0\",\"type\":\"1\",\"uri\":\"\\/system\\/admin\\/off-line\",\"class\":\"icon-heart\",\"mark\":\"\\u5f3a\\u5236\\u7ba1\\u7406\\u5458\\u4e0b\\u7ebf\"}}', '', '', '1475561215');
INSERT INTO `cms_action_log` VALUES ('412', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475561215');
INSERT INTO `cms_action_log` VALUES ('413', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475561219');
INSERT INTO `cms_action_log` VALUES ('414', 'backend', '39', '/system/group/node', '{\"id\":\"95\"}', '[]', '', '', '1475561226');
INSERT INTO `cms_action_log` VALUES ('415', 'backend', '39', '/system/group/node-add', '{\"nodeId\":\"64\",\"groupId\":\"95\"}', '[]', '', '', '1475561232');
INSERT INTO `cms_action_log` VALUES ('416', 'backend', '39', '/system/group/node', '{\"id\":\"95\"}', '[]', '', '', '1475561232');
INSERT INTO `cms_action_log` VALUES ('417', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475561239');
INSERT INTO `cms_action_log` VALUES ('418', 'backend', '39', '/system/node/update', '{\"id\":\"64\"}', '[]', '', '', '1475561242');
INSERT INTO `cms_action_log` VALUES ('419', 'backend', '39', '/system/node/update', '{\"id\":\"64\"}', '{\"_csrf\":\"eTlqYVh3QU0DTQJUHh92JTpuMjsLBgB1A3U.KjUmFQYMbFk.EjQiOQ==\",\"Node\":{\"name\":\"\\u5f3a\\u5236\\u4e0b\\u7ebf\",\"pid\":\"51\",\"type\":\"1\",\"uri\":\"\\/system\\/admin\\/off-line\",\"class\":\"icon-heart\",\"mark\":\"\\u5f3a\\u5236\\u7ba1\\u7406\\u5458\\u4e0b\\u7ebf\",\"level\":\"1\"}}', '', '', '1475561254');
INSERT INTO `cms_action_log` VALUES ('420', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475561254');
INSERT INTO `cms_action_log` VALUES ('421', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475561257');
INSERT INTO `cms_action_log` VALUES ('422', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475561264');
INSERT INTO `cms_action_log` VALUES ('423', 'backend', '39', '/system/node/update', '{\"id\":\"64\"}', '[]', '', '', '1475561280');
INSERT INTO `cms_action_log` VALUES ('424', 'backend', '39', '/system/node/update', '{\"id\":\"64\"}', '{\"_csrf\":\"N1M1bGo1ZHFNJ11ZLF1TGXQEbTY5RCVJTR9hJwdkMDpCBgYzIHYHBQ==\",\"Node\":{\"name\":\"\\u5f3a\\u5236\\u4e0b\\u7ebf\",\"pid\":\"50\",\"type\":\"3\",\"uri\":\"\\/system\\/admin\\/off-line\",\"class\":\"icon-heart\",\"mark\":\"\\u5f3a\\u5236\\u7ba1\\u7406\\u5458\\u4e0b\\u7ebf\",\"level\":\"2\"}}', '', '', '1475561290');
INSERT INTO `cms_action_log` VALUES ('425', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475561290');
INSERT INTO `cms_action_log` VALUES ('426', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475561293');
INSERT INTO `cms_action_log` VALUES ('427', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475561300');
INSERT INTO `cms_action_log` VALUES ('428', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475561302');
INSERT INTO `cms_action_log` VALUES ('429', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475561302');
INSERT INTO `cms_action_log` VALUES ('430', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561308');
INSERT INTO `cms_action_log` VALUES ('431', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561312');
INSERT INTO `cms_action_log` VALUES ('432', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561348');
INSERT INTO `cms_action_log` VALUES ('433', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561349');
INSERT INTO `cms_action_log` VALUES ('434', 'backend', '39', '/system/admin/off-line', '{\"id\":\"39\"}', '[]', '', '', '1475561512');
INSERT INTO `cms_action_log` VALUES ('435', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561512');
INSERT INTO `cms_action_log` VALUES ('436', 'backend', '39', '/system/admin/off-line', '{\"id\":\"40\"}', '[]', '', '', '1475561514');
INSERT INTO `cms_action_log` VALUES ('437', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561514');
INSERT INTO `cms_action_log` VALUES ('438', 'backend', '39', '/system/admin/off-line', '{\"id\":\"41\"}', '[]', '', '', '1475561515');
INSERT INTO `cms_action_log` VALUES ('439', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561515');
INSERT INTO `cms_action_log` VALUES ('440', 'backend', '39', '/system/admin/off-line', '{\"id\":\"40\"}', '[]', '', '', '1475561516');
INSERT INTO `cms_action_log` VALUES ('441', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561516');
INSERT INTO `cms_action_log` VALUES ('442', 'backend', '39', '/system/admin/off-line', '{\"id\":\"39\"}', '[]', '', '', '1475561517');
INSERT INTO `cms_action_log` VALUES ('443', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561518');
INSERT INTO `cms_action_log` VALUES ('444', 'backend', '39', '/system/admin/off-line', '{\"id\":\"40\"}', '[]', '', '', '1475561519');
INSERT INTO `cms_action_log` VALUES ('445', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561519');
INSERT INTO `cms_action_log` VALUES ('446', 'backend', '39', '/system/admin/off-line', '{\"id\":\"41\"}', '[]', '', '', '1475561520');
INSERT INTO `cms_action_log` VALUES ('447', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561520');
INSERT INTO `cms_action_log` VALUES ('448', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561521');
INSERT INTO `cms_action_log` VALUES ('449', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561522');
INSERT INTO `cms_action_log` VALUES ('450', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561522');
INSERT INTO `cms_action_log` VALUES ('451', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561523');
INSERT INTO `cms_action_log` VALUES ('452', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561523');
INSERT INTO `cms_action_log` VALUES ('453', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561524');
INSERT INTO `cms_action_log` VALUES ('454', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561524');
INSERT INTO `cms_action_log` VALUES ('455', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561524');
INSERT INTO `cms_action_log` VALUES ('456', 'backend', '39', '/system/admin/off-line', '{\"id\":\"41\"}', '[]', '', '', '1475561561');
INSERT INTO `cms_action_log` VALUES ('457', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561561');
INSERT INTO `cms_action_log` VALUES ('458', 'backend', '39', '/system/admin/off-line', '{\"uid\":\"40\"}', '[]', '', '', '1475561563');
INSERT INTO `cms_action_log` VALUES ('459', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561563');
INSERT INTO `cms_action_log` VALUES ('460', 'backend', '39', '/system/admin/off-line', '{\"uid\":\"39\"}', '[]', '', '', '1475561564');
INSERT INTO `cms_action_log` VALUES ('461', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561564');
INSERT INTO `cms_action_log` VALUES ('462', 'backend', '39', '/system/admin/off-line', '{\"uid\":\"39\"}', '[]', '', '', '1475561565');
INSERT INTO `cms_action_log` VALUES ('463', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561565');
INSERT INTO `cms_action_log` VALUES ('464', 'backend', '39', '/system/admin/off-line', '{\"uid\":\"40\"}', '[]', '', '', '1475561566');
INSERT INTO `cms_action_log` VALUES ('465', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561566');
INSERT INTO `cms_action_log` VALUES ('466', 'backend', '39', '/system/admin/off-line', '{\"uid\":\"41\"}', '[]', '', '', '1475561567');
INSERT INTO `cms_action_log` VALUES ('467', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561567');
INSERT INTO `cms_action_log` VALUES ('468', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561574');
INSERT INTO `cms_action_log` VALUES ('469', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561575');
INSERT INTO `cms_action_log` VALUES ('470', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561616');
INSERT INTO `cms_action_log` VALUES ('471', 'backend', '39', '/system/admin/off-line', '{\"id\":\"39\"}', '[]', '', '', '1475561617');
INSERT INTO `cms_action_log` VALUES ('472', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561621');
INSERT INTO `cms_action_log` VALUES ('473', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561720');
INSERT INTO `cms_action_log` VALUES ('474', 'backend', '39', '/system/admin/off-line', '{\"id\":\"39\"}', '[]', '', '', '1475561722');
INSERT INTO `cms_action_log` VALUES ('475', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561722');
INSERT INTO `cms_action_log` VALUES ('476', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561723');
INSERT INTO `cms_action_log` VALUES ('477', 'backend', '39', '/system/admin/off-line', '{\"id\":\"39\"}', '[]', '', '', '1475561724');
INSERT INTO `cms_action_log` VALUES ('478', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561724');
INSERT INTO `cms_action_log` VALUES ('479', 'backend', '39', '/system/admin/off-line', '{\"id\":\"40\"}', '[]', '', '', '1475561725');
INSERT INTO `cms_action_log` VALUES ('480', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561725');
INSERT INTO `cms_action_log` VALUES ('481', 'backend', '39', '/system/admin/off-line', '{\"id\":\"41\"}', '[]', '', '', '1475561726');
INSERT INTO `cms_action_log` VALUES ('482', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561726');
INSERT INTO `cms_action_log` VALUES ('483', 'backend', '39', '/system/admin/off-line', '{\"id\":\"40\"}', '[]', '', '', '1475561726');
INSERT INTO `cms_action_log` VALUES ('484', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561726');
INSERT INTO `cms_action_log` VALUES ('485', 'backend', '39', '/system/admin/off-line', '{\"id\":\"39\"}', '[]', '', '', '1475561727');
INSERT INTO `cms_action_log` VALUES ('486', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561727');
INSERT INTO `cms_action_log` VALUES ('487', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561779');
INSERT INTO `cms_action_log` VALUES ('488', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561780');
INSERT INTO `cms_action_log` VALUES ('489', 'backend', '39', '/system/admin/off-line', '{\"id\":\"39\"}', '[]', '', '', '1475561781');
INSERT INTO `cms_action_log` VALUES ('490', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561781');
INSERT INTO `cms_action_log` VALUES ('491', 'backend', '39', '/system/admin/off-line', '{\"id\":\"40\"}', '[]', '', '', '1475561782');
INSERT INTO `cms_action_log` VALUES ('492', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561783');
INSERT INTO `cms_action_log` VALUES ('493', 'backend', '39', '/system/admin/off-line', '{\"id\":\"41\"}', '[]', '', '', '1475561784');
INSERT INTO `cms_action_log` VALUES ('494', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561784');
INSERT INTO `cms_action_log` VALUES ('495', 'backend', '39', '/system/admin/off-line', '{\"id\":\"40\"}', '[]', '', '', '1475561785');
INSERT INTO `cms_action_log` VALUES ('496', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561785');
INSERT INTO `cms_action_log` VALUES ('497', 'backend', '39', '/system/admin/off-line', '{\"id\":\"39\"}', '[]', '', '', '1475561785');
INSERT INTO `cms_action_log` VALUES ('498', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561785');
INSERT INTO `cms_action_log` VALUES ('499', 'backend', '39', '/system/admin/off-line', '{\"id\":\"40\"}', '[]', '', '', '1475561786');
INSERT INTO `cms_action_log` VALUES ('500', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561786');
INSERT INTO `cms_action_log` VALUES ('501', 'backend', '39', '/system/admin/off-line', '{\"id\":\"41\"}', '[]', '', '', '1475561787');
INSERT INTO `cms_action_log` VALUES ('502', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561787');
INSERT INTO `cms_action_log` VALUES ('503', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561813');
INSERT INTO `cms_action_log` VALUES ('504', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561814');
INSERT INTO `cms_action_log` VALUES ('505', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561814');
INSERT INTO `cms_action_log` VALUES ('506', 'backend', '39', '/system/admin/off-line', '{\"id\":\"39\"}', '[]', '', '', '1475561815');
INSERT INTO `cms_action_log` VALUES ('507', 'backend', '39', '/system/admin/off-line', '{\"id\":\"39\"}', '[]', '', '', '1475561887');
INSERT INTO `cms_action_log` VALUES ('508', 'backend', '39', '/system/admin/off-line', '{\"id\":\"39\"}', '[]', '', '', '1475561897');
INSERT INTO `cms_action_log` VALUES ('509', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561897');
INSERT INTO `cms_action_log` VALUES ('510', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561898');
INSERT INTO `cms_action_log` VALUES ('511', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561898');
INSERT INTO `cms_action_log` VALUES ('512', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561899');
INSERT INTO `cms_action_log` VALUES ('513', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561907');
INSERT INTO `cms_action_log` VALUES ('514', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561908');
INSERT INTO `cms_action_log` VALUES ('515', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561909');
INSERT INTO `cms_action_log` VALUES ('516', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561909');
INSERT INTO `cms_action_log` VALUES ('517', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561910');
INSERT INTO `cms_action_log` VALUES ('518', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561911');
INSERT INTO `cms_action_log` VALUES ('519', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561912');
INSERT INTO `cms_action_log` VALUES ('520', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561913');
INSERT INTO `cms_action_log` VALUES ('521', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561916');
INSERT INTO `cms_action_log` VALUES ('522', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561917');
INSERT INTO `cms_action_log` VALUES ('523', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561918');
INSERT INTO `cms_action_log` VALUES ('524', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561919');
INSERT INTO `cms_action_log` VALUES ('525', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561920');
INSERT INTO `cms_action_log` VALUES ('526', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561920');
INSERT INTO `cms_action_log` VALUES ('527', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561922');
INSERT INTO `cms_action_log` VALUES ('528', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561923');
INSERT INTO `cms_action_log` VALUES ('529', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561923');
INSERT INTO `cms_action_log` VALUES ('530', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561924');
INSERT INTO `cms_action_log` VALUES ('531', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561924');
INSERT INTO `cms_action_log` VALUES ('532', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561925');
INSERT INTO `cms_action_log` VALUES ('533', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561925');
INSERT INTO `cms_action_log` VALUES ('534', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561926');
INSERT INTO `cms_action_log` VALUES ('535', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561945');
INSERT INTO `cms_action_log` VALUES ('536', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561946');
INSERT INTO `cms_action_log` VALUES ('537', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561946');
INSERT INTO `cms_action_log` VALUES ('538', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561952');
INSERT INTO `cms_action_log` VALUES ('539', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561952');
INSERT INTO `cms_action_log` VALUES ('540', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561953');
INSERT INTO `cms_action_log` VALUES ('541', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561953');
INSERT INTO `cms_action_log` VALUES ('542', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561954');
INSERT INTO `cms_action_log` VALUES ('543', 'backend', '39', '/system/admin/add', '[]', '[]', '', '', '1475561954');
INSERT INTO `cms_action_log` VALUES ('544', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561956');
INSERT INTO `cms_action_log` VALUES ('545', 'backend', '39', '/system/admin/add', '[]', '[]', '', '', '1475561958');
INSERT INTO `cms_action_log` VALUES ('546', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561958');
INSERT INTO `cms_action_log` VALUES ('547', 'backend', '39', '/system/admin/add', '[]', '[]', '', '', '1475561959');
INSERT INTO `cms_action_log` VALUES ('548', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475561960');
INSERT INTO `cms_action_log` VALUES ('549', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475562008');
INSERT INTO `cms_action_log` VALUES ('550', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475562009');
INSERT INTO `cms_action_log` VALUES ('551', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475562009');
INSERT INTO `cms_action_log` VALUES ('552', 'backend', '39', '/system/admin/list', '[]', '[]', '', '', '1475562010');
INSERT INTO `cms_action_log` VALUES ('553', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475562015');
INSERT INTO `cms_action_log` VALUES ('554', 'backend', '39', '/article/main/list', '[]', '[]', '', '', '1475562021');
INSERT INTO `cms_action_log` VALUES ('555', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475562023');
INSERT INTO `cms_action_log` VALUES ('556', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562025');
INSERT INTO `cms_action_log` VALUES ('557', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562030');
INSERT INTO `cms_action_log` VALUES ('558', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562030');
INSERT INTO `cms_action_log` VALUES ('559', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562031');
INSERT INTO `cms_action_log` VALUES ('560', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562031');
INSERT INTO `cms_action_log` VALUES ('561', 'backend', '39', '/site/logout', '[]', '[]', '', '', '1475562033');
INSERT INTO `cms_action_log` VALUES ('562', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562037');
INSERT INTO `cms_action_log` VALUES ('563', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562038');
INSERT INTO `cms_action_log` VALUES ('564', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562039');
INSERT INTO `cms_action_log` VALUES ('565', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562039');
INSERT INTO `cms_action_log` VALUES ('566', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562040');
INSERT INTO `cms_action_log` VALUES ('567', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562041');
INSERT INTO `cms_action_log` VALUES ('568', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562107');
INSERT INTO `cms_action_log` VALUES ('569', 'backend', '39', '/site/logout', '[]', '[]', '', '', '1475562109');
INSERT INTO `cms_action_log` VALUES ('570', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562317');
INSERT INTO `cms_action_log` VALUES ('571', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562318');
INSERT INTO `cms_action_log` VALUES ('572', 'backend', '39', '/site/logout', '[]', '[]', '', '', '1475562327');
INSERT INTO `cms_action_log` VALUES ('573', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562352');
INSERT INTO `cms_action_log` VALUES ('574', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562360');
INSERT INTO `cms_action_log` VALUES ('575', 'backend', '39', '/site/logout', '[]', '[]', '', '', '1475562363');
INSERT INTO `cms_action_log` VALUES ('576', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562373');
INSERT INTO `cms_action_log` VALUES ('577', 'backend', '39', '/site/error', '[]', '[]', '', '', '1475562395');
INSERT INTO `cms_action_log` VALUES ('578', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475562427');
INSERT INTO `cms_action_log` VALUES ('579', 'backend', '39', '/site/error', '[]', '[]', '', '', '1475562427');
INSERT INTO `cms_action_log` VALUES ('580', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475562432');
INSERT INTO `cms_action_log` VALUES ('581', 'backend', '39', '/site/error', '[]', '[]', '', '', '1475562432');
INSERT INTO `cms_action_log` VALUES ('582', 'backend', '39', '/site/error', '[]', '[]', '', '', '1475562433');
INSERT INTO `cms_action_log` VALUES ('583', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562437');
INSERT INTO `cms_action_log` VALUES ('584', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562439');
INSERT INTO `cms_action_log` VALUES ('585', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562439');
INSERT INTO `cms_action_log` VALUES ('586', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562441');
INSERT INTO `cms_action_log` VALUES ('587', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562442');
INSERT INTO `cms_action_log` VALUES ('588', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562442');
INSERT INTO `cms_action_log` VALUES ('589', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475562455');
INSERT INTO `cms_action_log` VALUES ('590', 'backend', '39', '/site/error', '[]', '[]', '', '', '1475562455');
INSERT INTO `cms_action_log` VALUES ('591', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562461');
INSERT INTO `cms_action_log` VALUES ('592', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475562464');
INSERT INTO `cms_action_log` VALUES ('593', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475562465');
INSERT INTO `cms_action_log` VALUES ('594', 'backend', '39', '/system/node/add', '[]', '{\"_csrf\":\"aUJtTEpzQmUTNgV5DBt1DSoVNRYZAgNdEw45ByciFi4cF14TADAhEQ==\",\"Node\":{\"name\":\"\\u65e5\\u5fd7\\u7ba1\\u7406\",\"pid\":\"0\",\"type\":\"1\",\"uri\":\"\\/log\\/action\\/index\",\"class\":\"icon-th-large\",\"mark\":\"\"}}', '', '', '1475562488');
INSERT INTO `cms_action_log` VALUES ('595', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475562488');
INSERT INTO `cms_action_log` VALUES ('596', 'backend', '39', '/system/node/sort-down', '{\"id\":\"65\"}', '[]', '', '', '1475562497');
INSERT INTO `cms_action_log` VALUES ('597', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475562497');
INSERT INTO `cms_action_log` VALUES ('598', 'backend', '39', '/system/node/update', '{\"id\":\"39\"}', '[]', '', '', '1475562500');
INSERT INTO `cms_action_log` VALUES ('599', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475562508');
INSERT INTO `cms_action_log` VALUES ('600', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475562518');
INSERT INTO `cms_action_log` VALUES ('601', 'backend', '39', '/system/main/index', '[]', '[]', '', '', '1475562526');
INSERT INTO `cms_action_log` VALUES ('602', 'backend', '39', '/system/group/list', '[]', '[]', '', '', '1475562529');
INSERT INTO `cms_action_log` VALUES ('603', 'backend', '39', '/system/group/node', '{\"id\":\"95\"}', '[]', '', '', '1475562531');
INSERT INTO `cms_action_log` VALUES ('604', 'backend', '39', '/system/group/node-add', '{\"nodeId\":\"65\",\"groupId\":\"95\"}', '[]', '', '', '1475562534');
INSERT INTO `cms_action_log` VALUES ('605', 'backend', '39', '/system/group/node', '{\"id\":\"95\"}', '[]', '', '', '1475562534');
INSERT INTO `cms_action_log` VALUES ('606', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475562537');
INSERT INTO `cms_action_log` VALUES ('607', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475562563');
INSERT INTO `cms_action_log` VALUES ('608', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563033');
INSERT INTO `cms_action_log` VALUES ('609', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563033');
INSERT INTO `cms_action_log` VALUES ('610', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563482');
INSERT INTO `cms_action_log` VALUES ('611', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563494');
INSERT INTO `cms_action_log` VALUES ('612', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563495');
INSERT INTO `cms_action_log` VALUES ('613', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563707');
INSERT INTO `cms_action_log` VALUES ('614', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563708');
INSERT INTO `cms_action_log` VALUES ('615', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563709');
INSERT INTO `cms_action_log` VALUES ('616', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563709');
INSERT INTO `cms_action_log` VALUES ('617', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563721');
INSERT INTO `cms_action_log` VALUES ('618', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563722');
INSERT INTO `cms_action_log` VALUES ('619', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563733');
INSERT INTO `cms_action_log` VALUES ('620', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563734');
INSERT INTO `cms_action_log` VALUES ('621', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563805');
INSERT INTO `cms_action_log` VALUES ('622', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563806');
INSERT INTO `cms_action_log` VALUES ('623', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563807');
INSERT INTO `cms_action_log` VALUES ('624', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563834');
INSERT INTO `cms_action_log` VALUES ('625', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563835');
INSERT INTO `cms_action_log` VALUES ('626', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563836');
INSERT INTO `cms_action_log` VALUES ('627', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563858');
INSERT INTO `cms_action_log` VALUES ('628', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563885');
INSERT INTO `cms_action_log` VALUES ('629', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563886');
INSERT INTO `cms_action_log` VALUES ('630', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563923');
INSERT INTO `cms_action_log` VALUES ('631', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475563924');
INSERT INTO `cms_action_log` VALUES ('632', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564084');
INSERT INTO `cms_action_log` VALUES ('633', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564095');
INSERT INTO `cms_action_log` VALUES ('634', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564096');
INSERT INTO `cms_action_log` VALUES ('635', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564098');
INSERT INTO `cms_action_log` VALUES ('636', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564098');
INSERT INTO `cms_action_log` VALUES ('637', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564108');
INSERT INTO `cms_action_log` VALUES ('638', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564109');
INSERT INTO `cms_action_log` VALUES ('639', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564110');
INSERT INTO `cms_action_log` VALUES ('640', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564110');
INSERT INTO `cms_action_log` VALUES ('641', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564111');
INSERT INTO `cms_action_log` VALUES ('642', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564111');
INSERT INTO `cms_action_log` VALUES ('643', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564112');
INSERT INTO `cms_action_log` VALUES ('644', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564113');
INSERT INTO `cms_action_log` VALUES ('645', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564113');
INSERT INTO `cms_action_log` VALUES ('646', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564114');
INSERT INTO `cms_action_log` VALUES ('647', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564115');
INSERT INTO `cms_action_log` VALUES ('648', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564115');
INSERT INTO `cms_action_log` VALUES ('649', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564116');
INSERT INTO `cms_action_log` VALUES ('650', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564116');
INSERT INTO `cms_action_log` VALUES ('651', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564117');
INSERT INTO `cms_action_log` VALUES ('652', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564117');
INSERT INTO `cms_action_log` VALUES ('653', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564118');
INSERT INTO `cms_action_log` VALUES ('654', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564145');
INSERT INTO `cms_action_log` VALUES ('655', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564146');
INSERT INTO `cms_action_log` VALUES ('656', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564146');
INSERT INTO `cms_action_log` VALUES ('657', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564147');
INSERT INTO `cms_action_log` VALUES ('658', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564161');
INSERT INTO `cms_action_log` VALUES ('659', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564223');
INSERT INTO `cms_action_log` VALUES ('660', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564243');
INSERT INTO `cms_action_log` VALUES ('661', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564298');
INSERT INTO `cms_action_log` VALUES ('662', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564299');
INSERT INTO `cms_action_log` VALUES ('663', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564378');
INSERT INTO `cms_action_log` VALUES ('664', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564490');
INSERT INTO `cms_action_log` VALUES ('665', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564491');
INSERT INTO `cms_action_log` VALUES ('666', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564510');
INSERT INTO `cms_action_log` VALUES ('667', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564523');
INSERT INTO `cms_action_log` VALUES ('668', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564587');
INSERT INTO `cms_action_log` VALUES ('669', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564632');
INSERT INTO `cms_action_log` VALUES ('670', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564711');
INSERT INTO `cms_action_log` VALUES ('671', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564742');
INSERT INTO `cms_action_log` VALUES ('672', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564773');
INSERT INTO `cms_action_log` VALUES ('673', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475564792');
INSERT INTO `cms_action_log` VALUES ('674', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475565517');
INSERT INTO `cms_action_log` VALUES ('675', 'backend', '39', '/system/group/node', '{\"id\":\"95\"}', '[]', '', '', '1475565558');
INSERT INTO `cms_action_log` VALUES ('676', 'backend', '39', '/system/group/node', '{\"id\":\"95\"}', '[]', '', '', '1475565640');
INSERT INTO `cms_action_log` VALUES ('677', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475565644');
INSERT INTO `cms_action_log` VALUES ('678', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475566210');
INSERT INTO `cms_action_log` VALUES ('679', 'backend', '39', '/log/action/view', '{\"id\":\"678\"}', '[]', '', '', '1475566223');
INSERT INTO `cms_action_log` VALUES ('680', 'backend', '39', '/site/error', '{\"id\":\"678\"}', '[]', '', '', '1475566223');
INSERT INTO `cms_action_log` VALUES ('681', 'backend', '39', '/log/action/view', '{\"id\":\"678\"}', '[]', '', '', '1475566252');
INSERT INTO `cms_action_log` VALUES ('682', 'backend', '39', '/site/error', '{\"id\":\"678\"}', '[]', '', '', '1475566252');
INSERT INTO `cms_action_log` VALUES ('683', 'backend', '39', '/log/action/view', '{\"id\":\"678\"}', '[]', '', '', '1475566253');
INSERT INTO `cms_action_log` VALUES ('684', 'backend', '39', '/site/error', '{\"id\":\"678\"}', '[]', '', '', '1475566253');
INSERT INTO `cms_action_log` VALUES ('685', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475566253');
INSERT INTO `cms_action_log` VALUES ('686', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475566343');
INSERT INTO `cms_action_log` VALUES ('687', 'backend', '39', '/log/action/view', '{\"id\":\"678\"}', '[]', '', '', '1475566350');
INSERT INTO `cms_action_log` VALUES ('688', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475566398');
INSERT INTO `cms_action_log` VALUES ('689', 'backend', '39', '/system/node/add', '[]', '[]', '', '', '1475566402');
INSERT INTO `cms_action_log` VALUES ('690', 'backend', '39', '/system/node/add', '[]', '{\"_csrf\":\"cTlTVHlXekYLTTthPz9NLjJuCw4qJjt.C3UHHxQGLg0EbGALMxQZMg==\",\"Node\":{\"name\":\"\\u67e5\\u770b\\u8be6\\u60c5\",\"pid\":\"65\",\"type\":\"3\",\"uri\":\"\\/log\\/action\\/view\",\"class\":\"icon-film\",\"mark\":\"\"}}', '', '', '1475566513');
INSERT INTO `cms_action_log` VALUES ('691', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475566513');
INSERT INTO `cms_action_log` VALUES ('692', 'backend', '39', '/system/node/list', '[]', '[]', '', '', '1475566671');
INSERT INTO `cms_action_log` VALUES ('693', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475566673');
INSERT INTO `cms_action_log` VALUES ('694', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475566718');
INSERT INTO `cms_action_log` VALUES ('695', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475566719');
INSERT INTO `cms_action_log` VALUES ('696', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566723');
INSERT INTO `cms_action_log` VALUES ('697', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566743');
INSERT INTO `cms_action_log` VALUES ('698', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566759');
INSERT INTO `cms_action_log` VALUES ('699', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566760');
INSERT INTO `cms_action_log` VALUES ('700', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566761');
INSERT INTO `cms_action_log` VALUES ('701', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566763');
INSERT INTO `cms_action_log` VALUES ('702', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566792');
INSERT INTO `cms_action_log` VALUES ('703', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566793');
INSERT INTO `cms_action_log` VALUES ('704', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566794');
INSERT INTO `cms_action_log` VALUES ('705', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566794');
INSERT INTO `cms_action_log` VALUES ('706', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566795');
INSERT INTO `cms_action_log` VALUES ('707', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566795');
INSERT INTO `cms_action_log` VALUES ('708', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566795');
INSERT INTO `cms_action_log` VALUES ('709', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566796');
INSERT INTO `cms_action_log` VALUES ('710', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566796');
INSERT INTO `cms_action_log` VALUES ('711', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566796');
INSERT INTO `cms_action_log` VALUES ('712', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566796');
INSERT INTO `cms_action_log` VALUES ('713', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566801');
INSERT INTO `cms_action_log` VALUES ('714', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566802');
INSERT INTO `cms_action_log` VALUES ('715', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566806');
INSERT INTO `cms_action_log` VALUES ('716', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566807');
INSERT INTO `cms_action_log` VALUES ('717', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566807');
INSERT INTO `cms_action_log` VALUES ('718', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566808');
INSERT INTO `cms_action_log` VALUES ('719', 'backend', '39', '/log/action/view', '{\"id\":\"695\"}', '[]', '', '', '1475566808');
INSERT INTO `cms_action_log` VALUES ('720', 'backend', '39', '/log/action/index', '[]', '[]', '', '', '1475566809');
INSERT INTO `cms_action_log` VALUES ('721', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566821');
INSERT INTO `cms_action_log` VALUES ('722', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566864');
INSERT INTO `cms_action_log` VALUES ('723', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566865');
INSERT INTO `cms_action_log` VALUES ('724', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566866');
INSERT INTO `cms_action_log` VALUES ('725', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566867');
INSERT INTO `cms_action_log` VALUES ('726', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566889');
INSERT INTO `cms_action_log` VALUES ('727', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566890');
INSERT INTO `cms_action_log` VALUES ('728', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566891');
INSERT INTO `cms_action_log` VALUES ('729', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566891');
INSERT INTO `cms_action_log` VALUES ('730', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566891');
INSERT INTO `cms_action_log` VALUES ('731', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566892');
INSERT INTO `cms_action_log` VALUES ('732', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566892');
INSERT INTO `cms_action_log` VALUES ('733', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566892');
INSERT INTO `cms_action_log` VALUES ('734', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566913');
INSERT INTO `cms_action_log` VALUES ('735', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566914');
INSERT INTO `cms_action_log` VALUES ('736', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566915');
INSERT INTO `cms_action_log` VALUES ('737', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566946');
INSERT INTO `cms_action_log` VALUES ('738', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566969');
INSERT INTO `cms_action_log` VALUES ('739', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566970');
INSERT INTO `cms_action_log` VALUES ('740', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566971');
INSERT INTO `cms_action_log` VALUES ('741', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566971');
INSERT INTO `cms_action_log` VALUES ('742', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566971');
INSERT INTO `cms_action_log` VALUES ('743', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566972');
INSERT INTO `cms_action_log` VALUES ('744', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566972');
INSERT INTO `cms_action_log` VALUES ('745', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566987');
INSERT INTO `cms_action_log` VALUES ('746', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566987');
INSERT INTO `cms_action_log` VALUES ('747', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566988');
INSERT INTO `cms_action_log` VALUES ('748', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566989');
INSERT INTO `cms_action_log` VALUES ('749', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566989');
INSERT INTO `cms_action_log` VALUES ('750', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566990');
INSERT INTO `cms_action_log` VALUES ('751', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566990');
INSERT INTO `cms_action_log` VALUES ('752', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566991');
INSERT INTO `cms_action_log` VALUES ('753', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566991');
INSERT INTO `cms_action_log` VALUES ('754', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566992');
INSERT INTO `cms_action_log` VALUES ('755', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566992');
INSERT INTO `cms_action_log` VALUES ('756', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566993');
INSERT INTO `cms_action_log` VALUES ('757', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566993');
INSERT INTO `cms_action_log` VALUES ('758', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566993');
INSERT INTO `cms_action_log` VALUES ('759', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566994');
INSERT INTO `cms_action_log` VALUES ('760', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475566994');
INSERT INTO `cms_action_log` VALUES ('761', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567166');
INSERT INTO `cms_action_log` VALUES ('762', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567183');
INSERT INTO `cms_action_log` VALUES ('763', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567184');
INSERT INTO `cms_action_log` VALUES ('764', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567184');
INSERT INTO `cms_action_log` VALUES ('765', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567185');
INSERT INTO `cms_action_log` VALUES ('766', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567188');
INSERT INTO `cms_action_log` VALUES ('767', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567189');
INSERT INTO `cms_action_log` VALUES ('768', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567189');
INSERT INTO `cms_action_log` VALUES ('769', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567190');
INSERT INTO `cms_action_log` VALUES ('770', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567190');
INSERT INTO `cms_action_log` VALUES ('771', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567190');
INSERT INTO `cms_action_log` VALUES ('772', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567191');
INSERT INTO `cms_action_log` VALUES ('773', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567191');
INSERT INTO `cms_action_log` VALUES ('774', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567191');
INSERT INTO `cms_action_log` VALUES ('775', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567192');
INSERT INTO `cms_action_log` VALUES ('776', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567192');
INSERT INTO `cms_action_log` VALUES ('777', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567193');
INSERT INTO `cms_action_log` VALUES ('778', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567193');
INSERT INTO `cms_action_log` VALUES ('779', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567194');
INSERT INTO `cms_action_log` VALUES ('780', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567194');
INSERT INTO `cms_action_log` VALUES ('781', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567195');
INSERT INTO `cms_action_log` VALUES ('782', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567195');
INSERT INTO `cms_action_log` VALUES ('783', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567195');
INSERT INTO `cms_action_log` VALUES ('784', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567196');
INSERT INTO `cms_action_log` VALUES ('785', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567196');
INSERT INTO `cms_action_log` VALUES ('786', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567196');
INSERT INTO `cms_action_log` VALUES ('787', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567197');
INSERT INTO `cms_action_log` VALUES ('788', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567197');
INSERT INTO `cms_action_log` VALUES ('789', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567198');
INSERT INTO `cms_action_log` VALUES ('790', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567198');
INSERT INTO `cms_action_log` VALUES ('791', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567198');
INSERT INTO `cms_action_log` VALUES ('792', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567240');
INSERT INTO `cms_action_log` VALUES ('793', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567240');
INSERT INTO `cms_action_log` VALUES ('794', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567241');
INSERT INTO `cms_action_log` VALUES ('795', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567244');
INSERT INTO `cms_action_log` VALUES ('796', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567245');
INSERT INTO `cms_action_log` VALUES ('797', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567245');
INSERT INTO `cms_action_log` VALUES ('798', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567246');
INSERT INTO `cms_action_log` VALUES ('799', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567246');
INSERT INTO `cms_action_log` VALUES ('800', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567247');
INSERT INTO `cms_action_log` VALUES ('801', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567247');
INSERT INTO `cms_action_log` VALUES ('802', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567248');
INSERT INTO `cms_action_log` VALUES ('803', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567249');
INSERT INTO `cms_action_log` VALUES ('804', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567249');
INSERT INTO `cms_action_log` VALUES ('805', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567250');
INSERT INTO `cms_action_log` VALUES ('806', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567250');
INSERT INTO `cms_action_log` VALUES ('807', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567281');
INSERT INTO `cms_action_log` VALUES ('808', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567282');
INSERT INTO `cms_action_log` VALUES ('809', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567282');
INSERT INTO `cms_action_log` VALUES ('810', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567287');
INSERT INTO `cms_action_log` VALUES ('811', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567287');
INSERT INTO `cms_action_log` VALUES ('812', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567288');
INSERT INTO `cms_action_log` VALUES ('813', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567295');
INSERT INTO `cms_action_log` VALUES ('814', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567296');
INSERT INTO `cms_action_log` VALUES ('815', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567297');
INSERT INTO `cms_action_log` VALUES ('816', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567299');
INSERT INTO `cms_action_log` VALUES ('817', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567300');
INSERT INTO `cms_action_log` VALUES ('818', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567301');
INSERT INTO `cms_action_log` VALUES ('819', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567302');
INSERT INTO `cms_action_log` VALUES ('820', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567303');
INSERT INTO `cms_action_log` VALUES ('821', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567304');
INSERT INTO `cms_action_log` VALUES ('822', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567304');
INSERT INTO `cms_action_log` VALUES ('823', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567305');
INSERT INTO `cms_action_log` VALUES ('824', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567305');
INSERT INTO `cms_action_log` VALUES ('825', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567305');
INSERT INTO `cms_action_log` VALUES ('826', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567306');
INSERT INTO `cms_action_log` VALUES ('827', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567307');
INSERT INTO `cms_action_log` VALUES ('828', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567307');
INSERT INTO `cms_action_log` VALUES ('829', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567308');
INSERT INTO `cms_action_log` VALUES ('830', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567308');
INSERT INTO `cms_action_log` VALUES ('831', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567440');
INSERT INTO `cms_action_log` VALUES ('832', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567441');
INSERT INTO `cms_action_log` VALUES ('833', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '', '', '1475567468');
INSERT INTO `cms_action_log` VALUES ('834', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '{}', '', '1475567555');
INSERT INTO `cms_action_log` VALUES ('835', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '{}', '', '1475567556');
INSERT INTO `cms_action_log` VALUES ('836', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '{}', '', '1475567557');
INSERT INTO `cms_action_log` VALUES ('837', 'backend', '39', '/log/action/view', '{\"id\":\"598\"}', '[]', '{}', '', '1475567722');
INSERT INTO `cms_action_log` VALUES ('838', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '', '1475567725');
INSERT INTO `cms_action_log` VALUES ('839', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '', '1475567727');
INSERT INTO `cms_action_log` VALUES ('840', 'backend', '39', '/system/admin/add', '[]', '{\"_csrf\":\"dERNNm9WYnUOMCUDKT5VHTcTFWw8JyNNDggZfQIHNj4BEX5pJRUBAQ==\",\"Admin\":{\"name\":\"admin\",\"password\":\"admin\",\"group_id\":\"95\",\"disabled\":\"0\"}}', '{}', '_csrf=dERNNm9WYnUOMCUDKT5VHTcTFWw8JyNNDggZfQIHNj4BEX5pJRUBAQ%3D%3D&Admin%5Bname%5D=admin&Admin%5Bpassword%5D=admin&Admin%5Bgroup_id%5D=95&Admin%5Bdisabled%5D=&Admin%5Bdisabled%5D=0', '1475567729');
INSERT INTO `cms_action_log` VALUES ('841', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '', '1475567729');
INSERT INTO `cms_action_log` VALUES ('842', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '', '1475567732');
INSERT INTO `cms_action_log` VALUES ('843', 'backend', '39', '/log/action/view', '{\"id\":\"840\"}', '[]', '{}', '', '1475567736');
INSERT INTO `cms_action_log` VALUES ('844', 'backend', '39', '/log/action/view', '{\n    \"id\": \"840\"\n}', '[]', '{}', '', '1475567939');
INSERT INTO `cms_action_log` VALUES ('845', 'backend', '39', '/log/action/view', '{\n    \"id\": \"840\"\n}', '[]', '{}', '', '1475567940');
INSERT INTO `cms_action_log` VALUES ('846', 'backend', '39', '/system/group/add', '[]', '[]', '{}', '', '1475567944');
INSERT INTO `cms_action_log` VALUES ('847', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '', '1475567949');
INSERT INTO `cms_action_log` VALUES ('848', 'backend', '39', '/system/admin/add', '[]', '{\n    \"_csrf\": \"X1A1UkhHMG8lJF1nDi8HBxwHbQgbNnFXJRxhGSUWZCQqBQYNAgRTGw==\",\n    \"Admin\": {\n        \"name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '{}', '_csrf=X1A1UkhHMG8lJF1nDi8HBxwHbQgbNnFXJRxhGSUWZCQqBQYNAgRTGw%3D%3D&Admin%5Bname%5D=admin&Admin%5Bpassword%5D=admin&Admin%5Bgroup_id%5D=95&Admin%5Bdisabled%5D=&Admin%5Bdisabled%5D=0', '1475567951');
INSERT INTO `cms_action_log` VALUES ('849', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '', '1475567951');
INSERT INTO `cms_action_log` VALUES ('850', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '', '1475567953');
INSERT INTO `cms_action_log` VALUES ('851', 'backend', '39', '/log/action/view', '{\n    \"id\": \"848\"\n}', '[]', '{}', '', '1475567957');
INSERT INTO `cms_action_log` VALUES ('852', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475568031');
INSERT INTO `cms_action_log` VALUES ('853', 'backend', '39', '/system/admin/add', '[]', '{\n    \"_csrf\": \"dE9qcDMxcWYOOwJFdVlGDjcYMipgQDBeDgM.O15gJS0BGlkveXISEg==\",\n    \"Admin\": {\n        \"name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '{}', '{\n    \"_csrf\": \"dE9qcDMxcWYOOwJFdVlGDjcYMipgQDBeDgM.O15gJS0BGlkveXISEg==\",\n    \"Admin\": {\n        \"name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '1475568032');
INSERT INTO `cms_action_log` VALUES ('854', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475568032');
INSERT INTO `cms_action_log` VALUES ('855', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475568034');
INSERT INTO `cms_action_log` VALUES ('856', 'backend', '39', '/log/action/view', '{\n    \"id\": \"853\"\n}', '[]', '{}', '[]', '1475568037');
INSERT INTO `cms_action_log` VALUES ('857', 'backend', '39', '/log/action/view', '{\n    \"id\": \"853\"\n}', '[]', '{}', '[]', '1475568093');
INSERT INTO `cms_action_log` VALUES ('858', 'backend', '39', '/log/action/view', '{\n    \"id\": \"853\"\n}', '[]', '{}', '[]', '1475568094');
INSERT INTO `cms_action_log` VALUES ('859', 'backend', '39', '/log/action/view', '{\n    \"id\": \"853\"\n}', '[]', '{}', '[]', '1475568095');
INSERT INTO `cms_action_log` VALUES ('860', 'backend', '39', '/log/action/view', '{\n    \"id\": \"853\"\n}', '[]', '{}', '[]', '1475568095');
INSERT INTO `cms_action_log` VALUES ('861', 'backend', '39', '/log/action/view', '{\n    \"id\": \"853\"\n}', '[]', '{}', '[]', '1475568096');
INSERT INTO `cms_action_log` VALUES ('862', 'backend', '39', '/log/action/view', '{\n    \"id\": \"853\"\n}', '[]', '{}', '[]', '1475568097');
INSERT INTO `cms_action_log` VALUES ('863', 'backend', '39', '/log/action/view', '{\n    \"id\": \"853\"\n}', '[]', '{}', '[]', '1475568097');
INSERT INTO `cms_action_log` VALUES ('864', 'backend', '39', '/log/action/view', '{\n    \"id\": \"853\"\n}', '[]', '{}', '[]', '1475568098');
INSERT INTO `cms_action_log` VALUES ('865', 'backend', '39', '/log/action/view', '{\n    \"id\": \"853\"\n}', '[]', '{}', '[]', '1475568099');
INSERT INTO `cms_action_log` VALUES ('866', 'backend', '39', '/log/action/view', '{\n    \"id\": \"853\"\n}', '[]', '{}', '[]', '1475568099');
INSERT INTO `cms_action_log` VALUES ('867', 'backend', '39', '/log/action/view', '{\n    \"id\": \"853\"\n}', '[]', '{}', '[]', '1475568100');
INSERT INTO `cms_action_log` VALUES ('868', 'backend', '39', '/log/action/view', '{\n    \"id\": \"853\"\n}', '[]', '{}', '[]', '1475568100');
INSERT INTO `cms_action_log` VALUES ('869', 'backend', '39', '/log/action/view', '{\n    \"id\": \"853\"\n}', '[]', '{}', '[]', '1475568101');
INSERT INTO `cms_action_log` VALUES ('870', 'backend', '39', '/log/action/view', '{\n    \"id\": \"853\"\n}', '[]', '{}', '[]', '1475568101');
INSERT INTO `cms_action_log` VALUES ('871', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475568184');
INSERT INTO `cms_action_log` VALUES ('872', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475568186');
INSERT INTO `cms_action_log` VALUES ('873', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475568513');
INSERT INTO `cms_action_log` VALUES ('874', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475568543');
INSERT INTO `cms_action_log` VALUES ('875', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475568579');
INSERT INTO `cms_action_log` VALUES ('876', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475568580');
INSERT INTO `cms_action_log` VALUES ('877', 'backend', '39', '/log/action/index', '{\n    \"page\": \"2\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568582');
INSERT INTO `cms_action_log` VALUES ('878', 'backend', '39', '/log/action/index', '{\n    \"page\": \"3\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568584');
INSERT INTO `cms_action_log` VALUES ('879', 'backend', '39', '/log/action/index', '{\n    \"page\": \"4\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568597');
INSERT INTO `cms_action_log` VALUES ('880', 'backend', '39', '/log/action/index', '{\n    \"page\": \"4\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568608');
INSERT INTO `cms_action_log` VALUES ('881', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568635');
INSERT INTO `cms_action_log` VALUES ('882', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568703');
INSERT INTO `cms_action_log` VALUES ('883', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568713');
INSERT INTO `cms_action_log` VALUES ('884', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568718');
INSERT INTO `cms_action_log` VALUES ('885', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568719');
INSERT INTO `cms_action_log` VALUES ('886', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568770');
INSERT INTO `cms_action_log` VALUES ('887', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568791');
INSERT INTO `cms_action_log` VALUES ('888', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568810');
INSERT INTO `cms_action_log` VALUES ('889', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568865');
INSERT INTO `cms_action_log` VALUES ('890', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568889');
INSERT INTO `cms_action_log` VALUES ('891', 'backend', '39', '/log/action/index', '{\n    \"page\": \"4\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568893');
INSERT INTO `cms_action_log` VALUES ('892', 'backend', '39', '/log/action/index', '{\n    \"page\": \"8\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568895');
INSERT INTO `cms_action_log` VALUES ('893', 'backend', '39', '/log/action/index', '{\n    \"page\": \"12\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568898');
INSERT INTO `cms_action_log` VALUES ('894', 'backend', '39', '/log/action/index', '{\n    \"page\": \"13\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568899');
INSERT INTO `cms_action_log` VALUES ('895', 'backend', '39', '/log/action/index', '{\n    \"page\": \"14\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568901');
INSERT INTO `cms_action_log` VALUES ('896', 'backend', '39', '/log/action/index', '{\n    \"page\": \"15\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568902');
INSERT INTO `cms_action_log` VALUES ('897', 'backend', '39', '/log/action/index', '{\n    \"page\": \"10\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568908');
INSERT INTO `cms_action_log` VALUES ('898', 'backend', '39', '/log/action/index', '{\n    \"page\": \"5\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568910');
INSERT INTO `cms_action_log` VALUES ('899', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568911');
INSERT INTO `cms_action_log` VALUES ('900', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568954');
INSERT INTO `cms_action_log` VALUES ('901', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568955');
INSERT INTO `cms_action_log` VALUES ('902', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568956');
INSERT INTO `cms_action_log` VALUES ('903', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568956');
INSERT INTO `cms_action_log` VALUES ('904', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568957');
INSERT INTO `cms_action_log` VALUES ('905', 'backend', '39', '/log/action/index', '{\n    \"page\": \"1\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475568958');
INSERT INTO `cms_action_log` VALUES ('906', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475568992');
INSERT INTO `cms_action_log` VALUES ('907', 'backend', '39', '/system/node/update', '{\n    \"id\": \"65\"\n}', '[]', '{}', '[]', '1475569000');
INSERT INTO `cms_action_log` VALUES ('908', 'backend', '39', '/system/node/update', '{\n    \"id\": \"65\"\n}', '{\n    \"_csrf\": \"NTA3eENtdzhPRF9NBQVAUHZnbyIQHDYAT3xjMy48I3NAZQQnCS4UTA==\",\n    \"Node\": {\n        \"name\": \"日志管理\",\n        \"pid\": \"0\",\n        \"type\": \"2\",\n        \"uri\": \"\",\n        \"class\": \"icon-th-large\",\n        \"mark\": \"\",\n        \"level\": \"1\"\n    }\n}', '{}', '{\n    \"_csrf\": \"NTA3eENtdzhPRF9NBQVAUHZnbyIQHDYAT3xjMy48I3NAZQQnCS4UTA==\",\n    \"Node\": {\n        \"name\": \"日志管理\",\n        \"pid\": \"0\",\n        \"type\": \"2\",\n        \"uri\": \"\",\n        \"class\": \"icon-th-large\",\n        \"mark\": \"\",\n        \"level\": \"1\"\n    }\n}', '1475569005');
INSERT INTO `cms_action_log` VALUES ('909', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475569005');
INSERT INTO `cms_action_log` VALUES ('910', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475569010');
INSERT INTO `cms_action_log` VALUES ('911', 'backend', '39', '/system/node/add', '[]', '[]', '{}', '[]', '1475569013');
INSERT INTO `cms_action_log` VALUES ('912', 'backend', '39', '/system/node/add', '[]', '{\n    \"_csrf\": \"T3hkWG1XWHU1DAxtKz9vHQwvPAI.JhlNNTQwEwAGDD46LVcHJxQ7AQ==\",\n    \"Node\": {\n        \"name\": \"日志列表\",\n        \"pid\": \"65\",\n        \"type\": \"1\",\n        \"uri\": \"\\/log\\/action\\/index\",\n        \"class\": \"icon-glass\",\n        \"mark\": \"日志列表\"\n    }\n}', '{}', '{\n    \"_csrf\": \"T3hkWG1XWHU1DAxtKz9vHQwvPAI.JhlNNTQwEwAGDD46LVcHJxQ7AQ==\",\n    \"Node\": {\n        \"name\": \"日志列表\",\n        \"pid\": \"65\",\n        \"type\": \"1\",\n        \"uri\": \"\\/log\\/action\\/index\",\n        \"class\": \"icon-glass\",\n        \"mark\": \"日志列表\"\n    }\n}', '1475569038');
INSERT INTO `cms_action_log` VALUES ('913', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475569038');
INSERT INTO `cms_action_log` VALUES ('914', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475569045');
INSERT INTO `cms_action_log` VALUES ('915', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475569046');
INSERT INTO `cms_action_log` VALUES ('916', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475569047');
INSERT INTO `cms_action_log` VALUES ('917', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475569075');
INSERT INTO `cms_action_log` VALUES ('918', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475569077');
INSERT INTO `cms_action_log` VALUES ('919', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475569079');
INSERT INTO `cms_action_log` VALUES ('920', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475569080');
INSERT INTO `cms_action_log` VALUES ('921', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475569115');
INSERT INTO `cms_action_log` VALUES ('922', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475569117');
INSERT INTO `cms_action_log` VALUES ('923', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475569121');
INSERT INTO `cms_action_log` VALUES ('924', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475569124');
INSERT INTO `cms_action_log` VALUES ('925', 'backend', '39', '/system/group/node', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475569126');
INSERT INTO `cms_action_log` VALUES ('926', 'backend', '39', '/system/group/node-add', '{\n    \"nodeId\": \"67\",\n    \"groupId\": \"95\"\n}', '[]', '{}', '[]', '1475569133');
INSERT INTO `cms_action_log` VALUES ('927', 'backend', '39', '/system/group/node', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475569133');
INSERT INTO `cms_action_log` VALUES ('928', 'backend', '39', '/system/group/node-add', '{\n    \"nodeId\": \"66\",\n    \"groupId\": \"95\"\n}', '[]', '{}', '[]', '1475569135');
INSERT INTO `cms_action_log` VALUES ('929', 'backend', '39', '/system/group/node', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475569135');
INSERT INTO `cms_action_log` VALUES ('930', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475569147');
INSERT INTO `cms_action_log` VALUES ('931', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475569158');
INSERT INTO `cms_action_log` VALUES ('932', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475569190');
INSERT INTO `cms_action_log` VALUES ('933', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475569190');
INSERT INTO `cms_action_log` VALUES ('934', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475577225');
INSERT INTO `cms_action_log` VALUES ('935', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475577228');
INSERT INTO `cms_action_log` VALUES ('936', 'backend', '39', '/system/admin/add', '[]', '{\n    \"_csrf\": \"MS1xVFFPVEdLWRlhFydjL3J6KQ4CPhV\\/S2ElHzweAAxEeEILGww3Mw==\",\n    \"Admin\": {\n        \"name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '{}', '{\n    \"_csrf\": \"MS1xVFFPVEdLWRlhFydjL3J6KQ4CPhV\\/S2ElHzweAAxEeEILGww3Mw==\",\n    \"Admin\": {\n        \"name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '1475577229');
INSERT INTO `cms_action_log` VALUES ('937', 'backend', '39', '/system/admin/add', '[]', '{\n    \"_csrf\": \"MS1xVFFPVEdLWRlhFydjL3J6KQ4CPhV\\/S2ElHzweAAxEeEILGww3Mw==\",\n    \"Admin\": {\n        \"name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '{}', '{\n    \"_csrf\": \"MS1xVFFPVEdLWRlhFydjL3J6KQ4CPhV\\/S2ElHzweAAxEeEILGww3Mw==\",\n    \"Admin\": {\n        \"name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '1475577286');
INSERT INTO `cms_action_log` VALUES ('938', 'backend', '39', '/system/admin/add', '[]', '{\n    \"_csrf\": \"MS1xVFFPVEdLWRlhFydjL3J6KQ4CPhV\\/S2ElHzweAAxEeEILGww3Mw==\",\n    \"Admin\": {\n        \"name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '{}', '{\n    \"_csrf\": \"MS1xVFFPVEdLWRlhFydjL3J6KQ4CPhV\\/S2ElHzweAAxEeEILGww3Mw==\",\n    \"Admin\": {\n        \"name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '1475577330');
INSERT INTO `cms_action_log` VALUES ('939', 'backend', '39', '/system/admin/add', '[]', '{\n    \"_csrf\": \"MS1xVFFPVEdLWRlhFydjL3J6KQ4CPhV\\/S2ElHzweAAxEeEILGww3Mw==\",\n    \"Admin\": {\n        \"name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '{}', '{\n    \"_csrf\": \"MS1xVFFPVEdLWRlhFydjL3J6KQ4CPhV\\/S2ElHzweAAxEeEILGww3Mw==\",\n    \"Admin\": {\n        \"name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '1475577332');
INSERT INTO `cms_action_log` VALUES ('940', 'backend', '39', '/system/admin/add', '[]', '{\n    \"_csrf\": \"MS1xVFFPVEdLWRlhFydjL3J6KQ4CPhV\\/S2ElHzweAAxEeEILGww3Mw==\",\n    \"Admin\": {\n        \"name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '{}', '{\n    \"_csrf\": \"MS1xVFFPVEdLWRlhFydjL3J6KQ4CPhV\\/S2ElHzweAAxEeEILGww3Mw==\",\n    \"Admin\": {\n        \"name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '1475577400');
INSERT INTO `cms_action_log` VALUES ('941', 'backend', '39', '/system/admin/add', '[]', '{\n    \"_csrf\": \"X3AuQmxTeHMlBEZ3KjtPGxwndhg\\/IjlLJTx6CQECLDgqJR0dJhAbBw==\",\n    \"Admin\": {\n        \"name\": \"adminis\",\n        \"real_name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '{}', '{\n    \"_csrf\": \"X3AuQmxTeHMlBEZ3KjtPGxwndhg\\/IjlLJTx6CQECLDgqJR0dJhAbBw==\",\n    \"Admin\": {\n        \"name\": \"adminis\",\n        \"real_name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '1475577409');
INSERT INTO `cms_action_log` VALUES ('942', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475577409');
INSERT INTO `cms_action_log` VALUES ('943', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475577598');
INSERT INTO `cms_action_log` VALUES ('944', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475577601');
INSERT INTO `cms_action_log` VALUES ('945', 'backend', '39', '/system/group/add', '[]', '[]', '{}', '[]', '1475577602');
INSERT INTO `cms_action_log` VALUES ('946', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475577604');
INSERT INTO `cms_action_log` VALUES ('947', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475577605');
INSERT INTO `cms_action_log` VALUES ('948', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475577786');
INSERT INTO `cms_action_log` VALUES ('949', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475577787');
INSERT INTO `cms_action_log` VALUES ('950', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475577788');
INSERT INTO `cms_action_log` VALUES ('951', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475577788');
INSERT INTO `cms_action_log` VALUES ('952', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475577791');
INSERT INTO `cms_action_log` VALUES ('953', 'backend', '39', '/system/group/add', '[]', '[]', '{}', '[]', '1475577792');
INSERT INTO `cms_action_log` VALUES ('954', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475577793');
INSERT INTO `cms_action_log` VALUES ('955', 'backend', '39', '/system/group/add', '[]', '[]', '{}', '[]', '1475577795');
INSERT INTO `cms_action_log` VALUES ('956', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475577796');
INSERT INTO `cms_action_log` VALUES ('957', 'backend', '39', '/system/group/add', '[]', '[]', '{}', '[]', '1475577799');
INSERT INTO `cms_action_log` VALUES ('958', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475577801');
INSERT INTO `cms_action_log` VALUES ('959', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475577806');
INSERT INTO `cms_action_log` VALUES ('960', 'backend', '39', '/system/node/add', '[]', '[]', '{}', '[]', '1475577808');
INSERT INTO `cms_action_log` VALUES ('961', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475577810');
INSERT INTO `cms_action_log` VALUES ('962', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475577811');
INSERT INTO `cms_action_log` VALUES ('963', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475577814');
INSERT INTO `cms_action_log` VALUES ('964', 'backend', '39', '/log/action/index', '{\n    \"page\": \"2\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475577878');
INSERT INTO `cms_action_log` VALUES ('965', 'backend', '39', '/log/action/index', '{\n    \"page\": \"3\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475577880');
INSERT INTO `cms_action_log` VALUES ('966', 'backend', '39', '/log/action/index', '{\n    \"page\": \"3\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475577882');
INSERT INTO `cms_action_log` VALUES ('967', 'backend', '39', '/log/action/index', '{\n    \"page\": \"4\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475577885');
INSERT INTO `cms_action_log` VALUES ('968', 'backend', '39', '/log/action/index', '{\n    \"page\": \"5\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475577887');
INSERT INTO `cms_action_log` VALUES ('969', 'backend', '39', '/log/action/index', '{\n    \"page\": \"6\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475577889');
INSERT INTO `cms_action_log` VALUES ('970', 'backend', '39', '/log/action/index', '{\n    \"page\": \"7\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475577891');
INSERT INTO `cms_action_log` VALUES ('971', 'backend', '39', '/log/action/index', '{\n    \"page\": \"9\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475577893');
INSERT INTO `cms_action_log` VALUES ('972', 'backend', '39', '/log/action/index', '{\n    \"page\": \"10\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475577895');
INSERT INTO `cms_action_log` VALUES ('973', 'backend', '39', '/log/action/index', '{\n    \"page\": \"12\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475577897');
INSERT INTO `cms_action_log` VALUES ('974', 'backend', '39', '/log/action/index', '{\n    \"page\": \"13\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475577915');
INSERT INTO `cms_action_log` VALUES ('975', 'backend', '39', '/log/action/index', '{\n    \"page\": \"14\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475577918');
INSERT INTO `cms_action_log` VALUES ('976', 'backend', '39', '/log/action/index', '{\n    \"page\": \"14\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475578374');
INSERT INTO `cms_action_log` VALUES ('977', 'backend', '39', '/log/action/index', '{\n    \"page\": \"14\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475578375');
INSERT INTO `cms_action_log` VALUES ('978', 'backend', '39', '/log/action/index', '{\n    \"page\": \"14\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475578375');
INSERT INTO `cms_action_log` VALUES ('979', 'backend', '39', '/log/action/index', '{\n    \"page\": \"14\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475578376');
INSERT INTO `cms_action_log` VALUES ('980', 'backend', '39', '/log/action/index', '{\n    \"page\": \"14\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475578376');
INSERT INTO `cms_action_log` VALUES ('981', 'backend', '39', '/log/action/index', '{\n    \"page\": \"14\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475578377');
INSERT INTO `cms_action_log` VALUES ('982', 'backend', '39', '/log/action/index', '{\n    \"page\": \"14\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475578377');
INSERT INTO `cms_action_log` VALUES ('983', 'backend', '39', '/log/action/index', '{\n    \"page\": \"14\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475578378');
INSERT INTO `cms_action_log` VALUES ('984', 'backend', '39', '/log/action/index', '{\n    \"page\": \"14\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475578378');
INSERT INTO `cms_action_log` VALUES ('985', 'backend', '39', '/log/action/index', '{\n    \"page\": \"14\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475578436');
INSERT INTO `cms_action_log` VALUES ('986', 'backend', '39', '/log/action/index', '{\n    \"page\": \"14\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475578437');
INSERT INTO `cms_action_log` VALUES ('987', 'backend', '39', '/log/action/index', '{\n    \"page\": \"14\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475578440');
INSERT INTO `cms_action_log` VALUES ('988', 'backend', '39', '/log/action/index', '{\n    \"page\": \"15\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475578442');
INSERT INTO `cms_action_log` VALUES ('989', 'backend', '39', '/log/action/index', '{\n    \"page\": \"17\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475578443');
INSERT INTO `cms_action_log` VALUES ('990', 'backend', '39', '/log/action/index', '{\n    \"page\": \"20\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475578445');
INSERT INTO `cms_action_log` VALUES ('991', 'backend', '39', '/log/action/index', '{\n    \"page\": \"24\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475578446');
INSERT INTO `cms_action_log` VALUES ('992', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475578471');
INSERT INTO `cms_action_log` VALUES ('993', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475578472');
INSERT INTO `cms_action_log` VALUES ('994', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475578474');
INSERT INTO `cms_action_log` VALUES ('995', 'backend', '39', '/article/main/view', '{\n    \"id\": \"14\"\n}', '[]', '{}', '[]', '1475578479');
INSERT INTO `cms_action_log` VALUES ('996', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475578553');
INSERT INTO `cms_action_log` VALUES ('997', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475578555');
INSERT INTO `cms_action_log` VALUES ('998', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475578559');
INSERT INTO `cms_action_log` VALUES ('999', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475578561');
INSERT INTO `cms_action_log` VALUES ('1000', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475578669');
INSERT INTO `cms_action_log` VALUES ('1001', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475578766');
INSERT INTO `cms_action_log` VALUES ('1002', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475578767');
INSERT INTO `cms_action_log` VALUES ('1003', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475578769');
INSERT INTO `cms_action_log` VALUES ('1004', 'backend', '39', '/system/node/add', '[]', '[]', '{}', '[]', '1475578770');
INSERT INTO `cms_action_log` VALUES ('1005', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475578772');
INSERT INTO `cms_action_log` VALUES ('1006', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475578774');
INSERT INTO `cms_action_log` VALUES ('1007', 'backend', '39', '/system/group/add', '[]', '[]', '{}', '[]', '1475578775');
INSERT INTO `cms_action_log` VALUES ('1008', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475578776');
INSERT INTO `cms_action_log` VALUES ('1009', 'backend', '39', '/system/group/add', '[]', '[]', '{}', '[]', '1475578777');
INSERT INTO `cms_action_log` VALUES ('1010', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475578779');
INSERT INTO `cms_action_log` VALUES ('1011', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475579036');
INSERT INTO `cms_action_log` VALUES ('1012', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475579037');
INSERT INTO `cms_action_log` VALUES ('1013', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475579038');
INSERT INTO `cms_action_log` VALUES ('1014', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475579041');
INSERT INTO `cms_action_log` VALUES ('1015', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475579042');
INSERT INTO `cms_action_log` VALUES ('1016', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475579044');
INSERT INTO `cms_action_log` VALUES ('1017', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475579046');
INSERT INTO `cms_action_log` VALUES ('1018', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475579050');
INSERT INTO `cms_action_log` VALUES ('1019', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475579051');
INSERT INTO `cms_action_log` VALUES ('1020', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475579053');
INSERT INTO `cms_action_log` VALUES ('1021', 'backend', '39', '/system/group/admin', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475579056');
INSERT INTO `cms_action_log` VALUES ('1022', 'backend', '39', '/system/group/admin', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475579258');
INSERT INTO `cms_action_log` VALUES ('1023', 'backend', '39', '/system/group/admin', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475579259');
INSERT INTO `cms_action_log` VALUES ('1024', 'backend', '39', '/system/group/admin', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475579276');
INSERT INTO `cms_action_log` VALUES ('1025', 'backend', '39', '/system/group/admin', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475579277');
INSERT INTO `cms_action_log` VALUES ('1026', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475579608');
INSERT INTO `cms_action_log` VALUES ('1027', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475579611');
INSERT INTO `cms_action_log` VALUES ('1028', 'backend', '39', '/system/node/update', '{\n    \"id\": \"33\"\n}', '[]', '{}', '[]', '1475579614');
INSERT INTO `cms_action_log` VALUES ('1029', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475579626');
INSERT INTO `cms_action_log` VALUES ('1030', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475579743');
INSERT INTO `cms_action_log` VALUES ('1031', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475579863');
INSERT INTO `cms_action_log` VALUES ('1032', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475582909');
INSERT INTO `cms_action_log` VALUES ('1033', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475583890');
INSERT INTO `cms_action_log` VALUES ('1034', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475583903');
INSERT INTO `cms_action_log` VALUES ('1035', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475583928');
INSERT INTO `cms_action_log` VALUES ('1036', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475583929');
INSERT INTO `cms_action_log` VALUES ('1037', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475583932');
INSERT INTO `cms_action_log` VALUES ('1038', 'backend', '39', '/system/group/admin', '{\n    \"id\": \"98\"\n}', '[]', '{}', '[]', '1475583936');
INSERT INTO `cms_action_log` VALUES ('1039', 'backend', '39', '/system/admin/delete', '{\n    \"id\": \"41\"\n}', '[]', '{}', '[]', '1475583941');
INSERT INTO `cms_action_log` VALUES ('1040', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583941');
INSERT INTO `cms_action_log` VALUES ('1041', 'backend', '39', '/system/admin/delete', '{\n    \"id\": \"45\"\n}', '[]', '{}', '[]', '1475583947');
INSERT INTO `cms_action_log` VALUES ('1042', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583948');
INSERT INTO `cms_action_log` VALUES ('1043', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475583968');
INSERT INTO `cms_action_log` VALUES ('1044', 'backend', '39', '/system/admin/add', '[]', '{\n    \"_csrf\": \"LVpZZVhEYmJXLjFQHixVCm4NAT8LNSNaVxYNLjUVNilYD2o6EgcBFg==\",\n    \"Admin\": {\n        \"name\": \"adminsdf\",\n        \"real_name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '{}', '{\n    \"_csrf\": \"LVpZZVhEYmJXLjFQHixVCm4NAT8LNSNaVxYNLjUVNilYD2o6EgcBFg==\",\n    \"Admin\": {\n        \"name\": \"adminsdf\",\n        \"real_name\": \"admin\",\n        \"password\": \"admin\",\n        \"group_id\": \"95\",\n        \"disabled\": \"0\"\n    }\n}', '1475583974');
INSERT INTO `cms_action_log` VALUES ('1045', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583974');
INSERT INTO `cms_action_log` VALUES ('1046', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583979');
INSERT INTO `cms_action_log` VALUES ('1047', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583979');
INSERT INTO `cms_action_log` VALUES ('1048', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583980');
INSERT INTO `cms_action_log` VALUES ('1049', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583980');
INSERT INTO `cms_action_log` VALUES ('1050', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583980');
INSERT INTO `cms_action_log` VALUES ('1051', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583981');
INSERT INTO `cms_action_log` VALUES ('1052', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583981');
INSERT INTO `cms_action_log` VALUES ('1053', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583982');
INSERT INTO `cms_action_log` VALUES ('1054', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583982');
INSERT INTO `cms_action_log` VALUES ('1055', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583983');
INSERT INTO `cms_action_log` VALUES ('1056', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583983');
INSERT INTO `cms_action_log` VALUES ('1057', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583983');
INSERT INTO `cms_action_log` VALUES ('1058', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583984');
INSERT INTO `cms_action_log` VALUES ('1059', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583984');
INSERT INTO `cms_action_log` VALUES ('1060', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583985');
INSERT INTO `cms_action_log` VALUES ('1061', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583985');
INSERT INTO `cms_action_log` VALUES ('1062', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583986');
INSERT INTO `cms_action_log` VALUES ('1063', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583986');
INSERT INTO `cms_action_log` VALUES ('1064', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583986');
INSERT INTO `cms_action_log` VALUES ('1065', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583987');
INSERT INTO `cms_action_log` VALUES ('1066', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583987');
INSERT INTO `cms_action_log` VALUES ('1067', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583987');
INSERT INTO `cms_action_log` VALUES ('1068', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583988');
INSERT INTO `cms_action_log` VALUES ('1069', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583988');
INSERT INTO `cms_action_log` VALUES ('1070', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475583988');
INSERT INTO `cms_action_log` VALUES ('1071', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475584028');
INSERT INTO `cms_action_log` VALUES ('1072', 'backend', '39', '/log/action/index', '{\n    \"page\": \"2\",\n    \"per-page\": \"15\"\n}', '[]', '{}', '[]', '1475584037');
INSERT INTO `cms_action_log` VALUES ('1073', 'backend', '39', '/log/action/view', '{\n    \"id\": \"1044\"\n}', '[]', '{}', '[]', '1475584040');
INSERT INTO `cms_action_log` VALUES ('1074', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475584126');
INSERT INTO `cms_action_log` VALUES ('1075', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475584129');
INSERT INTO `cms_action_log` VALUES ('1076', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475584194');
INSERT INTO `cms_action_log` VALUES ('1077', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584215');
INSERT INTO `cms_action_log` VALUES ('1078', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475584227');
INSERT INTO `cms_action_log` VALUES ('1079', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475584227');
INSERT INTO `cms_action_log` VALUES ('1080', 'backend', '39', '/system/node/add', '[]', '[]', '{}', '[]', '1475584231');
INSERT INTO `cms_action_log` VALUES ('1081', 'backend', '39', '/system/node/add', '[]', '{\n    \"_csrf\": \"UFdBTlZJd2sqIyl7ECFAAxMAGRQFODZTKhsVBTsYIyAlAnIRHAoUHw==\",\n    \"Node\": {\n        \"name\": \"个人欣喜\",\n        \"pid\": \"0\",\n        \"type\": \"1\",\n        \"uri\": \"\\/system\\/admin\\/person\",\n        \"class\": \"icon-leaf\",\n        \"mark\": \"\"\n    }\n}', '{}', '{\n    \"_csrf\": \"UFdBTlZJd2sqIyl7ECFAAxMAGRQFODZTKhsVBTsYIyAlAnIRHAoUHw==\",\n    \"Node\": {\n        \"name\": \"个人欣喜\",\n        \"pid\": \"0\",\n        \"type\": \"1\",\n        \"uri\": \"\\/system\\/admin\\/person\",\n        \"class\": \"icon-leaf\",\n        \"mark\": \"\"\n    }\n}', '1475584277');
INSERT INTO `cms_action_log` VALUES ('1082', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475584277');
INSERT INTO `cms_action_log` VALUES ('1083', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475584281');
INSERT INTO `cms_action_log` VALUES ('1084', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475584283');
INSERT INTO `cms_action_log` VALUES ('1085', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475584287');
INSERT INTO `cms_action_log` VALUES ('1086', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475584290');
INSERT INTO `cms_action_log` VALUES ('1087', 'backend', '39', '/system/group/admin', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475584294');
INSERT INTO `cms_action_log` VALUES ('1088', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475584298');
INSERT INTO `cms_action_log` VALUES ('1089', 'backend', '39', '/system/group/node', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475584300');
INSERT INTO `cms_action_log` VALUES ('1090', 'backend', '39', '/system/group/node-add', '{\n    \"nodeId\": \"68\",\n    \"groupId\": \"95\"\n}', '[]', '{}', '[]', '1475584308');
INSERT INTO `cms_action_log` VALUES ('1091', 'backend', '39', '/system/group/node', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475584308');
INSERT INTO `cms_action_log` VALUES ('1092', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584317');
INSERT INTO `cms_action_log` VALUES ('1093', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584389');
INSERT INTO `cms_action_log` VALUES ('1094', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584390');
INSERT INTO `cms_action_log` VALUES ('1095', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584391');
INSERT INTO `cms_action_log` VALUES ('1096', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584393');
INSERT INTO `cms_action_log` VALUES ('1097', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584394');
INSERT INTO `cms_action_log` VALUES ('1098', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584394');
INSERT INTO `cms_action_log` VALUES ('1099', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584402');
INSERT INTO `cms_action_log` VALUES ('1100', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584403');
INSERT INTO `cms_action_log` VALUES ('1101', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584403');
INSERT INTO `cms_action_log` VALUES ('1102', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584404');
INSERT INTO `cms_action_log` VALUES ('1103', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584404');
INSERT INTO `cms_action_log` VALUES ('1104', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584405');
INSERT INTO `cms_action_log` VALUES ('1105', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584405');
INSERT INTO `cms_action_log` VALUES ('1106', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584417');
INSERT INTO `cms_action_log` VALUES ('1107', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584418');
INSERT INTO `cms_action_log` VALUES ('1108', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584481');
INSERT INTO `cms_action_log` VALUES ('1109', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584482');
INSERT INTO `cms_action_log` VALUES ('1110', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584483');
INSERT INTO `cms_action_log` VALUES ('1111', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584497');
INSERT INTO `cms_action_log` VALUES ('1112', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584498');
INSERT INTO `cms_action_log` VALUES ('1113', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584498');
INSERT INTO `cms_action_log` VALUES ('1114', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584499');
INSERT INTO `cms_action_log` VALUES ('1115', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584499');
INSERT INTO `cms_action_log` VALUES ('1116', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584499');
INSERT INTO `cms_action_log` VALUES ('1117', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584500');
INSERT INTO `cms_action_log` VALUES ('1118', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584500');
INSERT INTO `cms_action_log` VALUES ('1119', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584501');
INSERT INTO `cms_action_log` VALUES ('1120', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584501');
INSERT INTO `cms_action_log` VALUES ('1121', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584705');
INSERT INTO `cms_action_log` VALUES ('1122', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475584705');
INSERT INTO `cms_action_log` VALUES ('1123', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475585140');
INSERT INTO `cms_action_log` VALUES ('1124', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475585141');
INSERT INTO `cms_action_log` VALUES ('1125', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475585141');
INSERT INTO `cms_action_log` VALUES ('1126', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475585142');
INSERT INTO `cms_action_log` VALUES ('1127', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475585143');
INSERT INTO `cms_action_log` VALUES ('1128', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475585144');
INSERT INTO `cms_action_log` VALUES ('1129', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475585145');
INSERT INTO `cms_action_log` VALUES ('1130', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475585145');
INSERT INTO `cms_action_log` VALUES ('1131', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475585146');
INSERT INTO `cms_action_log` VALUES ('1132', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475585147');
INSERT INTO `cms_action_log` VALUES ('1133', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475585147');
INSERT INTO `cms_action_log` VALUES ('1134', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475585147');
INSERT INTO `cms_action_log` VALUES ('1135', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586875');
INSERT INTO `cms_action_log` VALUES ('1136', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586876');
INSERT INTO `cms_action_log` VALUES ('1137', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586877');
INSERT INTO `cms_action_log` VALUES ('1138', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586877');
INSERT INTO `cms_action_log` VALUES ('1139', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586878');
INSERT INTO `cms_action_log` VALUES ('1140', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586879');
INSERT INTO `cms_action_log` VALUES ('1141', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586879');
INSERT INTO `cms_action_log` VALUES ('1142', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586879');
INSERT INTO `cms_action_log` VALUES ('1143', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586880');
INSERT INTO `cms_action_log` VALUES ('1144', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586881');
INSERT INTO `cms_action_log` VALUES ('1145', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586891');
INSERT INTO `cms_action_log` VALUES ('1146', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586891');
INSERT INTO `cms_action_log` VALUES ('1147', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586892');
INSERT INTO `cms_action_log` VALUES ('1148', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586892');
INSERT INTO `cms_action_log` VALUES ('1149', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586893');
INSERT INTO `cms_action_log` VALUES ('1150', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586893');
INSERT INTO `cms_action_log` VALUES ('1151', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475586893');
INSERT INTO `cms_action_log` VALUES ('1152', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475586899');
INSERT INTO `cms_action_log` VALUES ('1153', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475586900');
INSERT INTO `cms_action_log` VALUES ('1154', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475586900');
INSERT INTO `cms_action_log` VALUES ('1155', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475586901');
INSERT INTO `cms_action_log` VALUES ('1156', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475586901');
INSERT INTO `cms_action_log` VALUES ('1157', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475586901');
INSERT INTO `cms_action_log` VALUES ('1158', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475586902');
INSERT INTO `cms_action_log` VALUES ('1159', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475586902');
INSERT INTO `cms_action_log` VALUES ('1160', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475586903');
INSERT INTO `cms_action_log` VALUES ('1161', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475586903');
INSERT INTO `cms_action_log` VALUES ('1162', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475586904');
INSERT INTO `cms_action_log` VALUES ('1163', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475586904');
INSERT INTO `cms_action_log` VALUES ('1164', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475586904');
INSERT INTO `cms_action_log` VALUES ('1165', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588142');
INSERT INTO `cms_action_log` VALUES ('1166', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588642');
INSERT INTO `cms_action_log` VALUES ('1167', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588643');
INSERT INTO `cms_action_log` VALUES ('1168', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588644');
INSERT INTO `cms_action_log` VALUES ('1169', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588735');
INSERT INTO `cms_action_log` VALUES ('1170', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588736');
INSERT INTO `cms_action_log` VALUES ('1171', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588737');
INSERT INTO `cms_action_log` VALUES ('1172', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588738');
INSERT INTO `cms_action_log` VALUES ('1173', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588739');
INSERT INTO `cms_action_log` VALUES ('1174', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588739');
INSERT INTO `cms_action_log` VALUES ('1175', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588740');
INSERT INTO `cms_action_log` VALUES ('1176', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588740');
INSERT INTO `cms_action_log` VALUES ('1177', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588740');
INSERT INTO `cms_action_log` VALUES ('1178', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588741');
INSERT INTO `cms_action_log` VALUES ('1179', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588741');
INSERT INTO `cms_action_log` VALUES ('1180', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588741');
INSERT INTO `cms_action_log` VALUES ('1181', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588755');
INSERT INTO `cms_action_log` VALUES ('1182', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588756');
INSERT INTO `cms_action_log` VALUES ('1183', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588756');
INSERT INTO `cms_action_log` VALUES ('1184', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588756');
INSERT INTO `cms_action_log` VALUES ('1185', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588757');
INSERT INTO `cms_action_log` VALUES ('1186', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588805');
INSERT INTO `cms_action_log` VALUES ('1187', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588806');
INSERT INTO `cms_action_log` VALUES ('1188', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588806');
INSERT INTO `cms_action_log` VALUES ('1189', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588806');
INSERT INTO `cms_action_log` VALUES ('1190', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588806');
INSERT INTO `cms_action_log` VALUES ('1191', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588807');
INSERT INTO `cms_action_log` VALUES ('1192', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588807');
INSERT INTO `cms_action_log` VALUES ('1193', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588807');
INSERT INTO `cms_action_log` VALUES ('1194', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588808');
INSERT INTO `cms_action_log` VALUES ('1195', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588808');
INSERT INTO `cms_action_log` VALUES ('1196', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588810');
INSERT INTO `cms_action_log` VALUES ('1197', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588810');
INSERT INTO `cms_action_log` VALUES ('1198', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588810');
INSERT INTO `cms_action_log` VALUES ('1199', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588811');
INSERT INTO `cms_action_log` VALUES ('1200', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588811');
INSERT INTO `cms_action_log` VALUES ('1201', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588811');
INSERT INTO `cms_action_log` VALUES ('1202', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588812');
INSERT INTO `cms_action_log` VALUES ('1203', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588812');
INSERT INTO `cms_action_log` VALUES ('1204', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475588812');
INSERT INTO `cms_action_log` VALUES ('1205', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589046');
INSERT INTO `cms_action_log` VALUES ('1206', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589047');
INSERT INTO `cms_action_log` VALUES ('1207', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589047');
INSERT INTO `cms_action_log` VALUES ('1208', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589047');
INSERT INTO `cms_action_log` VALUES ('1209', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589048');
INSERT INTO `cms_action_log` VALUES ('1210', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589048');
INSERT INTO `cms_action_log` VALUES ('1211', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589048');
INSERT INTO `cms_action_log` VALUES ('1212', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589049');
INSERT INTO `cms_action_log` VALUES ('1213', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589053');
INSERT INTO `cms_action_log` VALUES ('1214', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589054');
INSERT INTO `cms_action_log` VALUES ('1215', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589054');
INSERT INTO `cms_action_log` VALUES ('1216', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589055');
INSERT INTO `cms_action_log` VALUES ('1217', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589055');
INSERT INTO `cms_action_log` VALUES ('1218', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589056');
INSERT INTO `cms_action_log` VALUES ('1219', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589056');
INSERT INTO `cms_action_log` VALUES ('1220', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589056');
INSERT INTO `cms_action_log` VALUES ('1221', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589056');
INSERT INTO `cms_action_log` VALUES ('1222', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589057');
INSERT INTO `cms_action_log` VALUES ('1223', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589057');
INSERT INTO `cms_action_log` VALUES ('1224', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589057');
INSERT INTO `cms_action_log` VALUES ('1225', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589058');
INSERT INTO `cms_action_log` VALUES ('1226', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589058');
INSERT INTO `cms_action_log` VALUES ('1227', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589058');
INSERT INTO `cms_action_log` VALUES ('1228', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589058');
INSERT INTO `cms_action_log` VALUES ('1229', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589059');
INSERT INTO `cms_action_log` VALUES ('1230', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589059');
INSERT INTO `cms_action_log` VALUES ('1231', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589059');
INSERT INTO `cms_action_log` VALUES ('1232', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589059');
INSERT INTO `cms_action_log` VALUES ('1233', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589060');
INSERT INTO `cms_action_log` VALUES ('1234', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589060');
INSERT INTO `cms_action_log` VALUES ('1235', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589060');
INSERT INTO `cms_action_log` VALUES ('1236', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589060');
INSERT INTO `cms_action_log` VALUES ('1237', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589061');
INSERT INTO `cms_action_log` VALUES ('1238', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589061');
INSERT INTO `cms_action_log` VALUES ('1239', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589062');
INSERT INTO `cms_action_log` VALUES ('1240', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589062');
INSERT INTO `cms_action_log` VALUES ('1241', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589063');
INSERT INTO `cms_action_log` VALUES ('1242', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589063');
INSERT INTO `cms_action_log` VALUES ('1243', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589064');
INSERT INTO `cms_action_log` VALUES ('1244', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589064');
INSERT INTO `cms_action_log` VALUES ('1245', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589064');
INSERT INTO `cms_action_log` VALUES ('1246', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589064');
INSERT INTO `cms_action_log` VALUES ('1247', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589065');
INSERT INTO `cms_action_log` VALUES ('1248', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589065');
INSERT INTO `cms_action_log` VALUES ('1249', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589065');
INSERT INTO `cms_action_log` VALUES ('1250', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589077');
INSERT INTO `cms_action_log` VALUES ('1251', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589078');
INSERT INTO `cms_action_log` VALUES ('1252', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589078');
INSERT INTO `cms_action_log` VALUES ('1253', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589079');
INSERT INTO `cms_action_log` VALUES ('1254', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589079');
INSERT INTO `cms_action_log` VALUES ('1255', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475589079');
INSERT INTO `cms_action_log` VALUES ('1256', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475590066');
INSERT INTO `cms_action_log` VALUES ('1257', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475590067');
INSERT INTO `cms_action_log` VALUES ('1258', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475590068');
INSERT INTO `cms_action_log` VALUES ('1259', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475590068');
INSERT INTO `cms_action_log` VALUES ('1260', 'backend', '39', '/site/test', '[]', '[]', '{}', '[]', '1475590068');
INSERT INTO `cms_action_log` VALUES ('1261', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475590071');
INSERT INTO `cms_action_log` VALUES ('1262', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475590072');
INSERT INTO `cms_action_log` VALUES ('1263', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475590073');
INSERT INTO `cms_action_log` VALUES ('1264', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475590074');
INSERT INTO `cms_action_log` VALUES ('1265', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475590074');
INSERT INTO `cms_action_log` VALUES ('1266', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475590075');
INSERT INTO `cms_action_log` VALUES ('1267', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475590075');
INSERT INTO `cms_action_log` VALUES ('1268', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475590075');
INSERT INTO `cms_action_log` VALUES ('1269', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475590079');
INSERT INTO `cms_action_log` VALUES ('1270', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475590079');
INSERT INTO `cms_action_log` VALUES ('1271', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475590080');
INSERT INTO `cms_action_log` VALUES ('1272', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475590080');
INSERT INTO `cms_action_log` VALUES ('1273', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475590080');
INSERT INTO `cms_action_log` VALUES ('1274', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475590081');
INSERT INTO `cms_action_log` VALUES ('1275', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590266');
INSERT INTO `cms_action_log` VALUES ('1276', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590306');
INSERT INTO `cms_action_log` VALUES ('1277', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590307');
INSERT INTO `cms_action_log` VALUES ('1278', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590308');
INSERT INTO `cms_action_log` VALUES ('1279', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590309');
INSERT INTO `cms_action_log` VALUES ('1280', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590310');
INSERT INTO `cms_action_log` VALUES ('1281', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590311');
INSERT INTO `cms_action_log` VALUES ('1282', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590311');
INSERT INTO `cms_action_log` VALUES ('1283', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590312');
INSERT INTO `cms_action_log` VALUES ('1284', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590364');
INSERT INTO `cms_action_log` VALUES ('1285', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590364');
INSERT INTO `cms_action_log` VALUES ('1286', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590365');
INSERT INTO `cms_action_log` VALUES ('1287', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590366');
INSERT INTO `cms_action_log` VALUES ('1288', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590366');
INSERT INTO `cms_action_log` VALUES ('1289', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590367');
INSERT INTO `cms_action_log` VALUES ('1290', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590367');
INSERT INTO `cms_action_log` VALUES ('1291', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590368');
INSERT INTO `cms_action_log` VALUES ('1292', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590368');
INSERT INTO `cms_action_log` VALUES ('1293', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590369');
INSERT INTO `cms_action_log` VALUES ('1294', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590369');
INSERT INTO `cms_action_log` VALUES ('1295', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590369');
INSERT INTO `cms_action_log` VALUES ('1296', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590370');
INSERT INTO `cms_action_log` VALUES ('1297', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590405');
INSERT INTO `cms_action_log` VALUES ('1298', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475590406');
INSERT INTO `cms_action_log` VALUES ('1299', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475590425');
INSERT INTO `cms_action_log` VALUES ('1300', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590460');
INSERT INTO `cms_action_log` VALUES ('1301', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590787');
INSERT INTO `cms_action_log` VALUES ('1302', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475590788');
INSERT INTO `cms_action_log` VALUES ('1303', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590789');
INSERT INTO `cms_action_log` VALUES ('1304', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475590789');
INSERT INTO `cms_action_log` VALUES ('1305', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590790');
INSERT INTO `cms_action_log` VALUES ('1306', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475590790');
INSERT INTO `cms_action_log` VALUES ('1307', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590791');
INSERT INTO `cms_action_log` VALUES ('1308', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475590791');
INSERT INTO `cms_action_log` VALUES ('1309', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590792');
INSERT INTO `cms_action_log` VALUES ('1310', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475590792');
INSERT INTO `cms_action_log` VALUES ('1311', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590815');
INSERT INTO `cms_action_log` VALUES ('1312', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475590815');
INSERT INTO `cms_action_log` VALUES ('1313', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590816');
INSERT INTO `cms_action_log` VALUES ('1314', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475590816');
INSERT INTO `cms_action_log` VALUES ('1315', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590816');
INSERT INTO `cms_action_log` VALUES ('1316', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475590817');
INSERT INTO `cms_action_log` VALUES ('1317', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590817');
INSERT INTO `cms_action_log` VALUES ('1318', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475590817');
INSERT INTO `cms_action_log` VALUES ('1319', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590818');
INSERT INTO `cms_action_log` VALUES ('1320', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475590818');
INSERT INTO `cms_action_log` VALUES ('1321', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590874');
INSERT INTO `cms_action_log` VALUES ('1322', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590878');
INSERT INTO `cms_action_log` VALUES ('1323', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590879');
INSERT INTO `cms_action_log` VALUES ('1324', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590969');
INSERT INTO `cms_action_log` VALUES ('1325', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590970');
INSERT INTO `cms_action_log` VALUES ('1326', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590989');
INSERT INTO `cms_action_log` VALUES ('1327', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475590990');
INSERT INTO `cms_action_log` VALUES ('1328', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591022');
INSERT INTO `cms_action_log` VALUES ('1329', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591023');
INSERT INTO `cms_action_log` VALUES ('1330', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591024');
INSERT INTO `cms_action_log` VALUES ('1331', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591025');
INSERT INTO `cms_action_log` VALUES ('1332', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591025');
INSERT INTO `cms_action_log` VALUES ('1333', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591031');
INSERT INTO `cms_action_log` VALUES ('1334', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591031');
INSERT INTO `cms_action_log` VALUES ('1335', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591032');
INSERT INTO `cms_action_log` VALUES ('1336', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591054');
INSERT INTO `cms_action_log` VALUES ('1337', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591055');
INSERT INTO `cms_action_log` VALUES ('1338', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591068');
INSERT INTO `cms_action_log` VALUES ('1339', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591068');
INSERT INTO `cms_action_log` VALUES ('1340', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591069');
INSERT INTO `cms_action_log` VALUES ('1341', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591070');
INSERT INTO `cms_action_log` VALUES ('1342', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591071');
INSERT INTO `cms_action_log` VALUES ('1343', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591071');
INSERT INTO `cms_action_log` VALUES ('1344', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591072');
INSERT INTO `cms_action_log` VALUES ('1345', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591072');
INSERT INTO `cms_action_log` VALUES ('1346', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591073');
INSERT INTO `cms_action_log` VALUES ('1347', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591357');
INSERT INTO `cms_action_log` VALUES ('1348', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591357');
INSERT INTO `cms_action_log` VALUES ('1349', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475591362');
INSERT INTO `cms_action_log` VALUES ('1350', 'backend', '39', '/system/node/update', '{\n    \"id\": \"68\"\n}', '[]', '{}', '[]', '1475591365');
INSERT INTO `cms_action_log` VALUES ('1351', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475591372');
INSERT INTO `cms_action_log` VALUES ('1352', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475591374');
INSERT INTO `cms_action_log` VALUES ('1353', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475591375');
INSERT INTO `cms_action_log` VALUES ('1354', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591376');
INSERT INTO `cms_action_log` VALUES ('1355', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591377');
INSERT INTO `cms_action_log` VALUES ('1356', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591378');
INSERT INTO `cms_action_log` VALUES ('1357', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591379');
INSERT INTO `cms_action_log` VALUES ('1358', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591396');
INSERT INTO `cms_action_log` VALUES ('1359', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591396');
INSERT INTO `cms_action_log` VALUES ('1360', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591397');
INSERT INTO `cms_action_log` VALUES ('1361', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591397');
INSERT INTO `cms_action_log` VALUES ('1362', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591398');
INSERT INTO `cms_action_log` VALUES ('1363', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591401');
INSERT INTO `cms_action_log` VALUES ('1364', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591404');
INSERT INTO `cms_action_log` VALUES ('1365', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591405');
INSERT INTO `cms_action_log` VALUES ('1366', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591407');
INSERT INTO `cms_action_log` VALUES ('1367', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591411');
INSERT INTO `cms_action_log` VALUES ('1368', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591411');
INSERT INTO `cms_action_log` VALUES ('1369', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475591413');
INSERT INTO `cms_action_log` VALUES ('1370', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591416');
INSERT INTO `cms_action_log` VALUES ('1371', 'backend', '39', '/system/node/add', '[]', '[]', '{}', '[]', '1475591418');
INSERT INTO `cms_action_log` VALUES ('1372', 'backend', '39', '/system/node/add', '[]', '[]', '{}', '[]', '1475591435');
INSERT INTO `cms_action_log` VALUES ('1373', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591436');
INSERT INTO `cms_action_log` VALUES ('1374', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591437');
INSERT INTO `cms_action_log` VALUES ('1375', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591453');
INSERT INTO `cms_action_log` VALUES ('1376', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591934');
INSERT INTO `cms_action_log` VALUES ('1377', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475591935');
INSERT INTO `cms_action_log` VALUES ('1378', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475591937');
INSERT INTO `cms_action_log` VALUES ('1379', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475592015');
INSERT INTO `cms_action_log` VALUES ('1380', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475592018');
INSERT INTO `cms_action_log` VALUES ('1381', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475592040');
INSERT INTO `cms_action_log` VALUES ('1382', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475592043');
INSERT INTO `cms_action_log` VALUES ('1383', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475592046');
INSERT INTO `cms_action_log` VALUES ('1384', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475592048');
INSERT INTO `cms_action_log` VALUES ('1385', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475592060');
INSERT INTO `cms_action_log` VALUES ('1386', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475592845');
INSERT INTO `cms_action_log` VALUES ('1387', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475592846');
INSERT INTO `cms_action_log` VALUES ('1388', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475592847');
INSERT INTO `cms_action_log` VALUES ('1389', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475592848');
INSERT INTO `cms_action_log` VALUES ('1390', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475592848');
INSERT INTO `cms_action_log` VALUES ('1391', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475592849');
INSERT INTO `cms_action_log` VALUES ('1392', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475592849');
INSERT INTO `cms_action_log` VALUES ('1393', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475592850');
INSERT INTO `cms_action_log` VALUES ('1394', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475592850');
INSERT INTO `cms_action_log` VALUES ('1395', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475592851');
INSERT INTO `cms_action_log` VALUES ('1396', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475592852');
INSERT INTO `cms_action_log` VALUES ('1397', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475592852');
INSERT INTO `cms_action_log` VALUES ('1398', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475592853');
INSERT INTO `cms_action_log` VALUES ('1399', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475592859');
INSERT INTO `cms_action_log` VALUES ('1400', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475592886');
INSERT INTO `cms_action_log` VALUES ('1401', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475592888');
INSERT INTO `cms_action_log` VALUES ('1402', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475592890');
INSERT INTO `cms_action_log` VALUES ('1403', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475592893');
INSERT INTO `cms_action_log` VALUES ('1404', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475593557');
INSERT INTO `cms_action_log` VALUES ('1405', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475593559');
INSERT INTO `cms_action_log` VALUES ('1406', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475593560');
INSERT INTO `cms_action_log` VALUES ('1407', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475593561');
INSERT INTO `cms_action_log` VALUES ('1408', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475593640');
INSERT INTO `cms_action_log` VALUES ('1409', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475628248');
INSERT INTO `cms_action_log` VALUES ('1410', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475628280');
INSERT INTO `cms_action_log` VALUES ('1411', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475628284');
INSERT INTO `cms_action_log` VALUES ('1412', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475628287');
INSERT INTO `cms_action_log` VALUES ('1413', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475628289');
INSERT INTO `cms_action_log` VALUES ('1414', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475628683');
INSERT INTO `cms_action_log` VALUES ('1415', 'backend', '39', '/log/action/view', '{\n    \"id\": \"1412\"\n}', '[]', '{}', '[]', '1475628688');
INSERT INTO `cms_action_log` VALUES ('1416', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475628706');
INSERT INTO `cms_action_log` VALUES ('1417', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475628707');
INSERT INTO `cms_action_log` VALUES ('1418', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475628714');
INSERT INTO `cms_action_log` VALUES ('1419', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475628716');
INSERT INTO `cms_action_log` VALUES ('1420', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475628719');
INSERT INTO `cms_action_log` VALUES ('1421', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475628721');
INSERT INTO `cms_action_log` VALUES ('1422', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475629496');
INSERT INTO `cms_action_log` VALUES ('1423', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475629498');
INSERT INTO `cms_action_log` VALUES ('1424', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475629501');
INSERT INTO `cms_action_log` VALUES ('1425', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475629502');
INSERT INTO `cms_action_log` VALUES ('1426', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475629739');
INSERT INTO `cms_action_log` VALUES ('1427', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475629742');
INSERT INTO `cms_action_log` VALUES ('1428', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475629748');
INSERT INTO `cms_action_log` VALUES ('1429', 'backend', '39', '/article/main/delete', '{\n    \"id\": \"17\"\n}', '[]', '{}', '[]', '1475629804');
INSERT INTO `cms_action_log` VALUES ('1430', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475629804');
INSERT INTO `cms_action_log` VALUES ('1431', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475631129');
INSERT INTO `cms_action_log` VALUES ('1432', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475631132');
INSERT INTO `cms_action_log` VALUES ('1433', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475631174');
INSERT INTO `cms_action_log` VALUES ('1434', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475631177');
INSERT INTO `cms_action_log` VALUES ('1435', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475631179');
INSERT INTO `cms_action_log` VALUES ('1436', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475631184');
INSERT INTO `cms_action_log` VALUES ('1437', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475631186');
INSERT INTO `cms_action_log` VALUES ('1438', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475631199');
INSERT INTO `cms_action_log` VALUES ('1439', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475631202');
INSERT INTO `cms_action_log` VALUES ('1440', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475631203');
INSERT INTO `cms_action_log` VALUES ('1441', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475631205');
INSERT INTO `cms_action_log` VALUES ('1442', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475631212');
INSERT INTO `cms_action_log` VALUES ('1443', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475631214');
INSERT INTO `cms_action_log` VALUES ('1444', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475631218');
INSERT INTO `cms_action_log` VALUES ('1445', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475631231');
INSERT INTO `cms_action_log` VALUES ('1446', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475632109');
INSERT INTO `cms_action_log` VALUES ('1447', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475632181');
INSERT INTO `cms_action_log` VALUES ('1448', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475632182');
INSERT INTO `cms_action_log` VALUES ('1449', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475634774');
INSERT INTO `cms_action_log` VALUES ('1450', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475634785');
INSERT INTO `cms_action_log` VALUES ('1451', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475841548');
INSERT INTO `cms_action_log` VALUES ('1452', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475843821');
INSERT INTO `cms_action_log` VALUES ('1453', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475843823');
INSERT INTO `cms_action_log` VALUES ('1454', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475843826');
INSERT INTO `cms_action_log` VALUES ('1455', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475843828');
INSERT INTO `cms_action_log` VALUES ('1456', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475843858');
INSERT INTO `cms_action_log` VALUES ('1457', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475843860');
INSERT INTO `cms_action_log` VALUES ('1458', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475843863');
INSERT INTO `cms_action_log` VALUES ('1459', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475843866');
INSERT INTO `cms_action_log` VALUES ('1460', 'backend', '39', '/system/group/add', '[]', '[]', '{}', '[]', '1475843868');
INSERT INTO `cms_action_log` VALUES ('1461', 'backend', '39', '/article/main/list', '[]', '[]', '{}', '[]', '1475843870');
INSERT INTO `cms_action_log` VALUES ('1462', 'backend', '39', '/system/admin/person', '[]', '[]', '{}', '[]', '1475843877');
INSERT INTO `cms_action_log` VALUES ('1463', 'backend', '39', '/system/admin/list', '[]', '[]', '{}', '[]', '1475843882');
INSERT INTO `cms_action_log` VALUES ('1464', 'backend', '39', '/system/admin/add', '[]', '[]', '{}', '[]', '1475843901');
INSERT INTO `cms_action_log` VALUES ('1465', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475843905');
INSERT INTO `cms_action_log` VALUES ('1466', 'backend', '39', '/system/node/add', '[]', '[]', '{}', '[]', '1475843906');
INSERT INTO `cms_action_log` VALUES ('1467', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475843908');
INSERT INTO `cms_action_log` VALUES ('1468', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475843994');
INSERT INTO `cms_action_log` VALUES ('1469', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475843995');
INSERT INTO `cms_action_log` VALUES ('1470', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475843995');
INSERT INTO `cms_action_log` VALUES ('1471', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475845976');
INSERT INTO `cms_action_log` VALUES ('1472', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475845977');
INSERT INTO `cms_action_log` VALUES ('1473', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475845978');
INSERT INTO `cms_action_log` VALUES ('1474', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475894428');
INSERT INTO `cms_action_log` VALUES ('1475', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475895036');
INSERT INTO `cms_action_log` VALUES ('1476', 'backend', '39', '/log/action/index', '[]', '[]', '{}', '[]', '1475895041');
INSERT INTO `cms_action_log` VALUES ('1477', 'backend', '39', '/system/node/add', '[]', '[]', '{}', '[]', '1475895064');
INSERT INTO `cms_action_log` VALUES ('1478', 'backend', '39', '/system/node/add', '[]', '{\n    \"_csrf\": \"TkstaG1UZVUhe0kYCgFcADkkeCNdJlcSCh4YJCwjAQwefh8cPREPMQ==\",\n    \"Node\": {\n        \"name\": \"微信管理\",\n        \"pid\": \"0\",\n        \"type\": \"2\",\n        \"uri\": \"\",\n        \"class\": \"icon-glass\",\n        \"mark\": \"微信相关\"\n    }\n}', '{}', '{\n    \"_csrf\": \"TkstaG1UZVUhe0kYCgFcADkkeCNdJlcSCh4YJCwjAQwefh8cPREPMQ==\",\n    \"Node\": {\n        \"name\": \"微信管理\",\n        \"pid\": \"0\",\n        \"type\": \"2\",\n        \"uri\": \"\",\n        \"class\": \"icon-glass\",\n        \"mark\": \"微信相关\"\n    }\n}', '1475895088');
INSERT INTO `cms_action_log` VALUES ('1479', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475895088');
INSERT INTO `cms_action_log` VALUES ('1480', 'backend', '39', '/system/node/sort-down', '{\n    \"id\": \"69\"\n}', '[]', '{}', '[]', '1475895096');
INSERT INTO `cms_action_log` VALUES ('1481', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475895096');
INSERT INTO `cms_action_log` VALUES ('1482', 'backend', '39', '/system/node/sort-down', '{\n    \"id\": \"69\"\n}', '[]', '{}', '[]', '1475895099');
INSERT INTO `cms_action_log` VALUES ('1483', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475895100');
INSERT INTO `cms_action_log` VALUES ('1484', 'backend', '39', '/system/node/add', '[]', '[]', '{}', '[]', '1475895104');
INSERT INTO `cms_action_log` VALUES ('1485', 'backend', '39', '/system/node/add', '[]', '{\n    \"_csrf\": \"dS5TYWJ0VDMaHjcRBSFtZgJBBipSBmZ0MXtmLSMDMGolG2EVMjE.Vw==\",\n    \"Node\": {\n        \"name\": \"应用列表\",\n        \"pid\": \"69\",\n        \"type\": \"1\",\n        \"uri\": \"\\/wechat\\/app\\/list\",\n        \"class\": \"icon-glass\",\n        \"mark\": \"\"\n    }\n}', '{}', '{\n    \"_csrf\": \"dS5TYWJ0VDMaHjcRBSFtZgJBBipSBmZ0MXtmLSMDMGolG2EVMjE.Vw==\",\n    \"Node\": {\n        \"name\": \"应用列表\",\n        \"pid\": \"69\",\n        \"type\": \"1\",\n        \"uri\": \"\\/wechat\\/app\\/list\",\n        \"class\": \"icon-glass\",\n        \"mark\": \"\"\n    }\n}', '1475895154');
INSERT INTO `cms_action_log` VALUES ('1486', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475895154');
INSERT INTO `cms_action_log` VALUES ('1487', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475895158');
INSERT INTO `cms_action_log` VALUES ('1488', 'backend', '39', '/system/group/node', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475895160');
INSERT INTO `cms_action_log` VALUES ('1489', 'backend', '39', '/system/group/node-add', '{\n    \"nodeId\": \"70\",\n    \"groupId\": \"95\"\n}', '[]', '{}', '[]', '1475895163');
INSERT INTO `cms_action_log` VALUES ('1490', 'backend', '39', '/system/group/node', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475895164');
INSERT INTO `cms_action_log` VALUES ('1491', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895219');
INSERT INTO `cms_action_log` VALUES ('1492', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895220');
INSERT INTO `cms_action_log` VALUES ('1493', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895221');
INSERT INTO `cms_action_log` VALUES ('1494', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895221');
INSERT INTO `cms_action_log` VALUES ('1495', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895221');
INSERT INTO `cms_action_log` VALUES ('1496', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895222');
INSERT INTO `cms_action_log` VALUES ('1497', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895222');
INSERT INTO `cms_action_log` VALUES ('1498', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895223');
INSERT INTO `cms_action_log` VALUES ('1499', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895223');
INSERT INTO `cms_action_log` VALUES ('1500', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895224');
INSERT INTO `cms_action_log` VALUES ('1501', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895224');
INSERT INTO `cms_action_log` VALUES ('1502', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895224');
INSERT INTO `cms_action_log` VALUES ('1503', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895225');
INSERT INTO `cms_action_log` VALUES ('1504', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895226');
INSERT INTO `cms_action_log` VALUES ('1505', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895226');
INSERT INTO `cms_action_log` VALUES ('1506', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895226');
INSERT INTO `cms_action_log` VALUES ('1507', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895227');
INSERT INTO `cms_action_log` VALUES ('1508', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895227');
INSERT INTO `cms_action_log` VALUES ('1509', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895227');
INSERT INTO `cms_action_log` VALUES ('1510', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895227');
INSERT INTO `cms_action_log` VALUES ('1511', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895228');
INSERT INTO `cms_action_log` VALUES ('1512', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895228');
INSERT INTO `cms_action_log` VALUES ('1513', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895229');
INSERT INTO `cms_action_log` VALUES ('1514', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895229');
INSERT INTO `cms_action_log` VALUES ('1515', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895230');
INSERT INTO `cms_action_log` VALUES ('1516', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895230');
INSERT INTO `cms_action_log` VALUES ('1517', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895231');
INSERT INTO `cms_action_log` VALUES ('1518', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895231');
INSERT INTO `cms_action_log` VALUES ('1519', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895231');
INSERT INTO `cms_action_log` VALUES ('1520', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895231');
INSERT INTO `cms_action_log` VALUES ('1521', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895232');
INSERT INTO `cms_action_log` VALUES ('1522', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895232');
INSERT INTO `cms_action_log` VALUES ('1523', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895232');
INSERT INTO `cms_action_log` VALUES ('1524', 'backend', '39', '/site/error', '[]', '[]', '{}', '[]', '1475895233');
INSERT INTO `cms_action_log` VALUES ('1525', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475895323');
INSERT INTO `cms_action_log` VALUES ('1526', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475895324');
INSERT INTO `cms_action_log` VALUES ('1527', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475895325');
INSERT INTO `cms_action_log` VALUES ('1528', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475895325');
INSERT INTO `cms_action_log` VALUES ('1529', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475895326');
INSERT INTO `cms_action_log` VALUES ('1530', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475895326');
INSERT INTO `cms_action_log` VALUES ('1531', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475895360');
INSERT INTO `cms_action_log` VALUES ('1532', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475895361');
INSERT INTO `cms_action_log` VALUES ('1533', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475895361');
INSERT INTO `cms_action_log` VALUES ('1534', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475895361');
INSERT INTO `cms_action_log` VALUES ('1535', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475895362');
INSERT INTO `cms_action_log` VALUES ('1536', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895431');
INSERT INTO `cms_action_log` VALUES ('1537', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475895457');
INSERT INTO `cms_action_log` VALUES ('1538', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475895462');
INSERT INTO `cms_action_log` VALUES ('1539', 'backend', '39', '/system/node/add', '[]', '[]', '{}', '[]', '1475895467');
INSERT INTO `cms_action_log` VALUES ('1540', 'backend', '39', '/system/node/add', '[]', '{\n    \"_csrf\": \"a0pLVFpneXYEei8kPTJAIxwlHh9qFUsxLx9.GBsQHS87f3kgCiITEg==\",\n    \"Node\": {\n        \"name\": \"添加应用\",\n        \"pid\": \"69\",\n        \"type\": \"1\",\n        \"uri\": \"\\/wechat\\/app\\/add\",\n        \"class\": \"icon-th\",\n        \"mark\": \"添加微信app\"\n    }\n}', '{}', '{\n    \"_csrf\": \"a0pLVFpneXYEei8kPTJAIxwlHh9qFUsxLx9.GBsQHS87f3kgCiITEg==\",\n    \"Node\": {\n        \"name\": \"添加应用\",\n        \"pid\": \"69\",\n        \"type\": \"1\",\n        \"uri\": \"\\/wechat\\/app\\/add\",\n        \"class\": \"icon-th\",\n        \"mark\": \"添加微信app\"\n    }\n}', '1475895501');
INSERT INTO `cms_action_log` VALUES ('1541', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475895501');
INSERT INTO `cms_action_log` VALUES ('1542', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475895505');
INSERT INTO `cms_action_log` VALUES ('1543', 'backend', '39', '/system/group/node', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475895507');
INSERT INTO `cms_action_log` VALUES ('1544', 'backend', '39', '/system/group/node-add', '{\n    \"nodeId\": \"71\",\n    \"groupId\": \"95\"\n}', '[]', '{}', '[]', '1475895509');
INSERT INTO `cms_action_log` VALUES ('1545', 'backend', '39', '/system/group/node', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475895510');
INSERT INTO `cms_action_log` VALUES ('1546', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895514');
INSERT INTO `cms_action_log` VALUES ('1547', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895629');
INSERT INTO `cms_action_log` VALUES ('1548', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895630');
INSERT INTO `cms_action_log` VALUES ('1549', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895631');
INSERT INTO `cms_action_log` VALUES ('1550', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895632');
INSERT INTO `cms_action_log` VALUES ('1551', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895737');
INSERT INTO `cms_action_log` VALUES ('1552', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895811');
INSERT INTO `cms_action_log` VALUES ('1553', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895813');
INSERT INTO `cms_action_log` VALUES ('1554', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895813');
INSERT INTO `cms_action_log` VALUES ('1555', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895849');
INSERT INTO `cms_action_log` VALUES ('1556', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895850');
INSERT INTO `cms_action_log` VALUES ('1557', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895851');
INSERT INTO `cms_action_log` VALUES ('1558', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895851');
INSERT INTO `cms_action_log` VALUES ('1559', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895852');
INSERT INTO `cms_action_log` VALUES ('1560', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895852');
INSERT INTO `cms_action_log` VALUES ('1561', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895853');
INSERT INTO `cms_action_log` VALUES ('1562', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895853');
INSERT INTO `cms_action_log` VALUES ('1563', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895854');
INSERT INTO `cms_action_log` VALUES ('1564', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895854');
INSERT INTO `cms_action_log` VALUES ('1565', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895855');
INSERT INTO `cms_action_log` VALUES ('1566', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895855');
INSERT INTO `cms_action_log` VALUES ('1567', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895855');
INSERT INTO `cms_action_log` VALUES ('1568', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895856');
INSERT INTO `cms_action_log` VALUES ('1569', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895856');
INSERT INTO `cms_action_log` VALUES ('1570', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895909');
INSERT INTO `cms_action_log` VALUES ('1571', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895910');
INSERT INTO `cms_action_log` VALUES ('1572', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895911');
INSERT INTO `cms_action_log` VALUES ('1573', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895911');
INSERT INTO `cms_action_log` VALUES ('1574', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895912');
INSERT INTO `cms_action_log` VALUES ('1575', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895912');
INSERT INTO `cms_action_log` VALUES ('1576', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895913');
INSERT INTO `cms_action_log` VALUES ('1577', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895913');
INSERT INTO `cms_action_log` VALUES ('1578', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895914');
INSERT INTO `cms_action_log` VALUES ('1579', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895914');
INSERT INTO `cms_action_log` VALUES ('1580', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895915');
INSERT INTO `cms_action_log` VALUES ('1581', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895915');
INSERT INTO `cms_action_log` VALUES ('1582', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895916');
INSERT INTO `cms_action_log` VALUES ('1583', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895916');
INSERT INTO `cms_action_log` VALUES ('1584', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895916');
INSERT INTO `cms_action_log` VALUES ('1585', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895917');
INSERT INTO `cms_action_log` VALUES ('1586', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895955');
INSERT INTO `cms_action_log` VALUES ('1587', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475895956');
INSERT INTO `cms_action_log` VALUES ('1588', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475896004');
INSERT INTO `cms_action_log` VALUES ('1589', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475896005');
INSERT INTO `cms_action_log` VALUES ('1590', 'backend', '39', '/wechat/app/add', '[]', '{\n    \"_csrf\": \"VGNyWlFXTnY7UxYqNgJ3IyMMJxFhJXwxEDZHFhAgKi8EVkAuARIkEg==\",\n    \"WechatApp\": {\n        \"appId\": \"玩儿\",\n        \"appToken\": \"玩儿\",\n        \"appSecret\": \"ewerw\",\n        \"appAesKey\": \"werwer\",\n        \"mark\": \"沃尔沃\"\n    }\n}', '{}', '{\n    \"_csrf\": \"VGNyWlFXTnY7UxYqNgJ3IyMMJxFhJXwxEDZHFhAgKi8EVkAuARIkEg==\",\n    \"WechatApp\": {\n        \"appId\": \"玩儿\",\n        \"appToken\": \"玩儿\",\n        \"appSecret\": \"ewerw\",\n        \"appAesKey\": \"werwer\",\n        \"mark\": \"沃尔沃\"\n    }\n}', '1475896016');
INSERT INTO `cms_action_log` VALUES ('1591', 'backend', '39', '/wechat/app/add', '[]', '{\n    \"_csrf\": \"a29PQktSZC0EXysyLAddeBwAGgl7IFZqLzp6DgolAHQ7Wn02GxcOSQ==\",\n    \"WechatApp\": {\n        \"appId\": \"玩儿\",\n        \"appToken\": \"玩儿\",\n        \"appSecret\": \"ewerw\",\n        \"appAesKey\": \"werwer\",\n        \"mark\": \"沃尔沃\"\n    }\n}', '{}', '{\n    \"_csrf\": \"a29PQktSZC0EXysyLAddeBwAGgl7IFZqLzp6DgolAHQ7Wn02GxcOSQ==\",\n    \"WechatApp\": {\n        \"appId\": \"玩儿\",\n        \"appToken\": \"玩儿\",\n        \"appSecret\": \"ewerw\",\n        \"appAesKey\": \"werwer\",\n        \"mark\": \"沃尔沃\"\n    }\n}', '1475896077');
INSERT INTO `cms_action_log` VALUES ('1592', 'backend', '39', '/wechat/app/add', '[]', '{\n    \"_csrf\": \"a29PQktSZC0EXysyLAddeBwAGgl7IFZqLzp6DgolAHQ7Wn02GxcOSQ==\",\n    \"WechatApp\": {\n        \"appId\": \"玩儿\",\n        \"appToken\": \"玩儿\",\n        \"appSecret\": \"ewerw\",\n        \"appAesKey\": \"werwer\",\n        \"mark\": \"沃尔沃\"\n    }\n}', '{}', '{\n    \"_csrf\": \"a29PQktSZC0EXysyLAddeBwAGgl7IFZqLzp6DgolAHQ7Wn02GxcOSQ==\",\n    \"WechatApp\": {\n        \"appId\": \"玩儿\",\n        \"appToken\": \"玩儿\",\n        \"appSecret\": \"ewerw\",\n        \"appAesKey\": \"werwer\",\n        \"mark\": \"沃尔沃\"\n    }\n}', '1475896162');
INSERT INTO `cms_action_log` VALUES ('1593', 'backend', '39', '/wechat/app/add', '[]', '{\n    \"_csrf\": \"a29PQktSZC0EXysyLAddeBwAGgl7IFZqLzp6DgolAHQ7Wn02GxcOSQ==\",\n    \"WechatApp\": {\n        \"appId\": \"玩儿\",\n        \"appToken\": \"玩儿\",\n        \"appSecret\": \"ewerw\",\n        \"appAesKey\": \"werwer\",\n        \"mark\": \"沃尔沃\"\n    }\n}', '{}', '{\n    \"_csrf\": \"a29PQktSZC0EXysyLAddeBwAGgl7IFZqLzp6DgolAHQ7Wn02GxcOSQ==\",\n    \"WechatApp\": {\n        \"appId\": \"玩儿\",\n        \"appToken\": \"玩儿\",\n        \"appSecret\": \"ewerw\",\n        \"appAesKey\": \"werwer\",\n        \"mark\": \"沃尔沃\"\n    }\n}', '1475896189');
INSERT INTO `cms_action_log` VALUES ('1594', 'backend', '39', '/wechat/app/add', '[]', '{\n    \"_csrf\": \"a29PQktSZC0EXysyLAddeBwAGgl7IFZqLzp6DgolAHQ7Wn02GxcOSQ==\",\n    \"WechatApp\": {\n        \"appId\": \"玩儿\",\n        \"appToken\": \"玩儿\",\n        \"appSecret\": \"ewerw\",\n        \"appAesKey\": \"werwer\",\n        \"mark\": \"沃尔沃\"\n    }\n}', '{}', '{\n    \"_csrf\": \"a29PQktSZC0EXysyLAddeBwAGgl7IFZqLzp6DgolAHQ7Wn02GxcOSQ==\",\n    \"WechatApp\": {\n        \"appId\": \"玩儿\",\n        \"appToken\": \"玩儿\",\n        \"appSecret\": \"ewerw\",\n        \"appAesKey\": \"werwer\",\n        \"mark\": \"沃尔沃\"\n    }\n}', '1475896210');
INSERT INTO `cms_action_log` VALUES ('1595', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896210');
INSERT INTO `cms_action_log` VALUES ('1596', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896249');
INSERT INTO `cms_action_log` VALUES ('1597', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896250');
INSERT INTO `cms_action_log` VALUES ('1598', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475896296');
INSERT INTO `cms_action_log` VALUES ('1599', 'backend', '39', '/wechat/app/add', '[]', '{\n    \"_csrf\": \"S2wtQ0JfUnokXEkzJQprLzwDeAhyLWA9DzkYDwMoNiMbWR83Eho4Hg==\",\n    \"WechatApp\": {\n        \"appId\": \"23423234234\",\n        \"appToken\": \"23423\",\n        \"appSecret\": \"sfdfsdf\",\n        \"appAesKey\": \"werwer\",\n        \"mark\": \"玩儿玩儿\"\n    }\n}', '{}', '{\n    \"_csrf\": \"S2wtQ0JfUnokXEkzJQprLzwDeAhyLWA9DzkYDwMoNiMbWR83Eho4Hg==\",\n    \"WechatApp\": {\n        \"appId\": \"23423234234\",\n        \"appToken\": \"23423\",\n        \"appSecret\": \"sfdfsdf\",\n        \"appAesKey\": \"werwer\",\n        \"mark\": \"玩儿玩儿\"\n    }\n}', '1475896313');
INSERT INTO `cms_action_log` VALUES ('1600', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896314');
INSERT INTO `cms_action_log` VALUES ('1601', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896654');
INSERT INTO `cms_action_log` VALUES ('1602', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896656');
INSERT INTO `cms_action_log` VALUES ('1603', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475896656');
INSERT INTO `cms_action_log` VALUES ('1604', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896657');
INSERT INTO `cms_action_log` VALUES ('1605', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896872');
INSERT INTO `cms_action_log` VALUES ('1606', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896873');
INSERT INTO `cms_action_log` VALUES ('1607', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896874');
INSERT INTO `cms_action_log` VALUES ('1608', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896875');
INSERT INTO `cms_action_log` VALUES ('1609', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896875');
INSERT INTO `cms_action_log` VALUES ('1610', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896876');
INSERT INTO `cms_action_log` VALUES ('1611', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896876');
INSERT INTO `cms_action_log` VALUES ('1612', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896876');
INSERT INTO `cms_action_log` VALUES ('1613', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896876');
INSERT INTO `cms_action_log` VALUES ('1614', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896877');
INSERT INTO `cms_action_log` VALUES ('1615', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896877');
INSERT INTO `cms_action_log` VALUES ('1616', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896877');
INSERT INTO `cms_action_log` VALUES ('1617', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475896878');
INSERT INTO `cms_action_log` VALUES ('1618', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897010');
INSERT INTO `cms_action_log` VALUES ('1619', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897031');
INSERT INTO `cms_action_log` VALUES ('1620', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897032');
INSERT INTO `cms_action_log` VALUES ('1621', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897041');
INSERT INTO `cms_action_log` VALUES ('1622', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897042');
INSERT INTO `cms_action_log` VALUES ('1623', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897042');
INSERT INTO `cms_action_log` VALUES ('1624', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897066');
INSERT INTO `cms_action_log` VALUES ('1625', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897067');
INSERT INTO `cms_action_log` VALUES ('1626', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897068');
INSERT INTO `cms_action_log` VALUES ('1627', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897068');
INSERT INTO `cms_action_log` VALUES ('1628', 'backend', '39', '/wechat/app/update', '{\n    \"id\": \"1\"\n}', '[]', '{}', '[]', '1475897071');
INSERT INTO `cms_action_log` VALUES ('1629', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897073');
INSERT INTO `cms_action_log` VALUES ('1630', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897086');
INSERT INTO `cms_action_log` VALUES ('1631', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897087');
INSERT INTO `cms_action_log` VALUES ('1632', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897231');
INSERT INTO `cms_action_log` VALUES ('1633', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897231');
INSERT INTO `cms_action_log` VALUES ('1634', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897232');
INSERT INTO `cms_action_log` VALUES ('1635', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897233');
INSERT INTO `cms_action_log` VALUES ('1636', 'backend', '39', '/system/node/add', '[]', '[]', '{}', '[]', '1475897386');
INSERT INTO `cms_action_log` VALUES ('1637', 'backend', '39', '/system/node/add', '[]', '{\n    \"_csrf\": \"V1VVUVR3NGk4ZTEhMyINPCA6ABpkBQYuEwBgHRUAUDAHYGclBDJeDQ==\",\n    \"Node\": {\n        \"name\": \"修改配置\",\n        \"pid\": \"69\",\n        \"type\": \"3\",\n        \"uri\": \"\\/wechat\\/app\\/update\",\n        \"class\": \"icon-zoom-out\",\n        \"mark\": \"\"\n    }\n}', '{}', '{\n    \"_csrf\": \"V1VVUVR3NGk4ZTEhMyINPCA6ABpkBQYuEwBgHRUAUDAHYGclBDJeDQ==\",\n    \"Node\": {\n        \"name\": \"修改配置\",\n        \"pid\": \"69\",\n        \"type\": \"3\",\n        \"uri\": \"\\/wechat\\/app\\/update\",\n        \"class\": \"icon-zoom-out\",\n        \"mark\": \"\"\n    }\n}', '1475897422');
INSERT INTO `cms_action_log` VALUES ('1638', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475897422');
INSERT INTO `cms_action_log` VALUES ('1639', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475897429');
INSERT INTO `cms_action_log` VALUES ('1640', 'backend', '39', '/system/group/node', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475897431');
INSERT INTO `cms_action_log` VALUES ('1641', 'backend', '39', '/system/group/node-add', '{\n    \"nodeId\": \"72\",\n    \"groupId\": \"95\"\n}', '[]', '{}', '[]', '1475897433');
INSERT INTO `cms_action_log` VALUES ('1642', 'backend', '39', '/system/group/node', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475897434');
INSERT INTO `cms_action_log` VALUES ('1643', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897436');
INSERT INTO `cms_action_log` VALUES ('1644', 'backend', '39', '/wechat/app/update', '{\n    \"id\": \"1\"\n}', '[]', '{}', '[]', '1475897438');
INSERT INTO `cms_action_log` VALUES ('1645', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475897446');
INSERT INTO `cms_action_log` VALUES ('1646', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475897448');
INSERT INTO `cms_action_log` VALUES ('1647', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897449');
INSERT INTO `cms_action_log` VALUES ('1648', 'backend', '39', '/wechat/app/update', '{\n    \"id\": \"1\"\n}', '[]', '{}', '[]', '1475897452');
INSERT INTO `cms_action_log` VALUES ('1649', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475897465');
INSERT INTO `cms_action_log` VALUES ('1650', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475897466');
INSERT INTO `cms_action_log` VALUES ('1651', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897469');
INSERT INTO `cms_action_log` VALUES ('1652', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475897474');
INSERT INTO `cms_action_log` VALUES ('1653', 'backend', '39', '/system/node/sort-up', '{\n    \"id\": \"70\"\n}', '[]', '{}', '[]', '1475897476');
INSERT INTO `cms_action_log` VALUES ('1654', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475897477');
INSERT INTO `cms_action_log` VALUES ('1655', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897489');
INSERT INTO `cms_action_log` VALUES ('1656', 'backend', '39', '/wechat/app/update', '{\n    \"id\": \"1\"\n}', '[]', '{}', '[]', '1475897498');
INSERT INTO `cms_action_log` VALUES ('1657', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897501');
INSERT INTO `cms_action_log` VALUES ('1658', 'backend', '39', '/wechat/app/update', '{\n    \"id\": \"2\"\n}', '[]', '{}', '[]', '1475897502');
INSERT INTO `cms_action_log` VALUES ('1659', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897504');
INSERT INTO `cms_action_log` VALUES ('1660', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897586');
INSERT INTO `cms_action_log` VALUES ('1661', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897587');
INSERT INTO `cms_action_log` VALUES ('1662', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897600');
INSERT INTO `cms_action_log` VALUES ('1663', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897601');
INSERT INTO `cms_action_log` VALUES ('1664', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897704');
INSERT INTO `cms_action_log` VALUES ('1665', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897705');
INSERT INTO `cms_action_log` VALUES ('1666', 'backend', '39', '/wechat/app/delete', '{\n    \"id\": \"1\"\n}', '[]', '{}', '[]', '1475897708');
INSERT INTO `cms_action_log` VALUES ('1667', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897838');
INSERT INTO `cms_action_log` VALUES ('1668', 'backend', '39', '/system/node/add', '[]', '[]', '{}', '[]', '1475897841');
INSERT INTO `cms_action_log` VALUES ('1669', 'backend', '39', '/system/node/add', '[]', '{\n    \"_csrf\": \"Vi5hbktVWnE5HgUeLABjJCFBNCV7J2g2EntUIgoiPigGG1MaGxAwFQ==\",\n    \"Node\": {\n        \"name\": \"删除应用\",\n        \"pid\": \"69\",\n        \"type\": \"3\",\n        \"uri\": \"\\/wechat\\/app\\/delete\",\n        \"class\": \"icon-signal\",\n        \"mark\": \"\"\n    }\n}', '{}', '{\n    \"_csrf\": \"Vi5hbktVWnE5HgUeLABjJCFBNCV7J2g2EntUIgoiPigGG1MaGxAwFQ==\",\n    \"Node\": {\n        \"name\": \"删除应用\",\n        \"pid\": \"69\",\n        \"type\": \"3\",\n        \"uri\": \"\\/wechat\\/app\\/delete\",\n        \"class\": \"icon-signal\",\n        \"mark\": \"\"\n    }\n}', '1475897860');
INSERT INTO `cms_action_log` VALUES ('1670', 'backend', '39', '/system/node/list', '[]', '[]', '{}', '[]', '1475897860');
INSERT INTO `cms_action_log` VALUES ('1671', 'backend', '39', '/system/group/list', '[]', '[]', '{}', '[]', '1475897865');
INSERT INTO `cms_action_log` VALUES ('1672', 'backend', '39', '/system/group/node', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475897867');
INSERT INTO `cms_action_log` VALUES ('1673', 'backend', '39', '/system/group/node-add', '{\n    \"nodeId\": \"73\",\n    \"groupId\": \"95\"\n}', '[]', '{}', '[]', '1475897869');
INSERT INTO `cms_action_log` VALUES ('1674', 'backend', '39', '/system/group/node', '{\n    \"id\": \"95\"\n}', '[]', '{}', '[]', '1475897869');
INSERT INTO `cms_action_log` VALUES ('1675', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897875');
INSERT INTO `cms_action_log` VALUES ('1676', 'backend', '39', '/wechat/app/delete', '{\n    \"id\": \"1\"\n}', '[]', '{}', '[]', '1475897879');
INSERT INTO `cms_action_log` VALUES ('1677', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897879');
INSERT INTO `cms_action_log` VALUES ('1678', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897881');
INSERT INTO `cms_action_log` VALUES ('1679', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897882');
INSERT INTO `cms_action_log` VALUES ('1680', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897883');
INSERT INTO `cms_action_log` VALUES ('1681', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897883');
INSERT INTO `cms_action_log` VALUES ('1682', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897884');
INSERT INTO `cms_action_log` VALUES ('1683', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897884');
INSERT INTO `cms_action_log` VALUES ('1684', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897885');
INSERT INTO `cms_action_log` VALUES ('1685', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897925');
INSERT INTO `cms_action_log` VALUES ('1686', 'backend', '39', '/wechat/app/delete', '{\n    \"id\": \"1\"\n}', '[]', '{}', '[]', '1475897927');
INSERT INTO `cms_action_log` VALUES ('1687', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897944');
INSERT INTO `cms_action_log` VALUES ('1688', 'backend', '39', '/wechat/app/delete', '{\n    \"id\": \"2\"\n}', '[]', '{}', '[]', '1475897947');
INSERT INTO `cms_action_log` VALUES ('1689', 'backend', '39', '/wechat/app/delete', '{\n    \"id\": \"2\"\n}', '[]', '{}', '[]', '1475897960');
INSERT INTO `cms_action_log` VALUES ('1690', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897960');
INSERT INTO `cms_action_log` VALUES ('1691', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897962');
INSERT INTO `cms_action_log` VALUES ('1692', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897963');
INSERT INTO `cms_action_log` VALUES ('1693', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897964');
INSERT INTO `cms_action_log` VALUES ('1694', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897964');
INSERT INTO `cms_action_log` VALUES ('1695', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897964');
INSERT INTO `cms_action_log` VALUES ('1696', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897965');
INSERT INTO `cms_action_log` VALUES ('1697', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897965');
INSERT INTO `cms_action_log` VALUES ('1698', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897965');
INSERT INTO `cms_action_log` VALUES ('1699', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897968');
INSERT INTO `cms_action_log` VALUES ('1700', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897969');
INSERT INTO `cms_action_log` VALUES ('1701', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897972');
INSERT INTO `cms_action_log` VALUES ('1702', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897972');
INSERT INTO `cms_action_log` VALUES ('1703', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897973');
INSERT INTO `cms_action_log` VALUES ('1704', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897973');
INSERT INTO `cms_action_log` VALUES ('1705', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897973');
INSERT INTO `cms_action_log` VALUES ('1706', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897993');
INSERT INTO `cms_action_log` VALUES ('1707', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897994');
INSERT INTO `cms_action_log` VALUES ('1708', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897994');
INSERT INTO `cms_action_log` VALUES ('1709', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897994');
INSERT INTO `cms_action_log` VALUES ('1710', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897995');
INSERT INTO `cms_action_log` VALUES ('1711', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475897995');
INSERT INTO `cms_action_log` VALUES ('1712', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475898208');
INSERT INTO `cms_action_log` VALUES ('1713', 'backend', '39', '/wechat/app/add', '[]', '[]', '{}', '[]', '1475898238');
INSERT INTO `cms_action_log` VALUES ('1714', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475898300');
INSERT INTO `cms_action_log` VALUES ('1715', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475898307');
INSERT INTO `cms_action_log` VALUES ('1716', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475898308');
INSERT INTO `cms_action_log` VALUES ('1717', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475898310');
INSERT INTO `cms_action_log` VALUES ('1718', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475898310');
INSERT INTO `cms_action_log` VALUES ('1719', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475898311');
INSERT INTO `cms_action_log` VALUES ('1720', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475898311');
INSERT INTO `cms_action_log` VALUES ('1721', 'backend', '39', '/system/main/index', '[]', '[]', '{}', '[]', '1475900108');
INSERT INTO `cms_action_log` VALUES ('1722', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900110');
INSERT INTO `cms_action_log` VALUES ('1723', 'backend', '39', '/wechat/app/update', '{\n    \"id\": \"3\"\n}', '[]', '{}', '[]', '1475900113');
INSERT INTO `cms_action_log` VALUES ('1724', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900116');
INSERT INTO `cms_action_log` VALUES ('1725', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900117');
INSERT INTO `cms_action_log` VALUES ('1726', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900118');
INSERT INTO `cms_action_log` VALUES ('1727', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900118');
INSERT INTO `cms_action_log` VALUES ('1728', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900119');
INSERT INTO `cms_action_log` VALUES ('1729', 'backend', '39', '/wechat/app/update', '{\n    \"id\": \"3\"\n}', '[]', '{}', '[]', '1475900119');
INSERT INTO `cms_action_log` VALUES ('1730', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900122');
INSERT INTO `cms_action_log` VALUES ('1731', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900146');
INSERT INTO `cms_action_log` VALUES ('1732', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900147');
INSERT INTO `cms_action_log` VALUES ('1733', 'backend', '39', '/wechat/app/update', '{\n    \"id\": \"3\"\n}', '[]', '{}', '[]', '1475900147');
INSERT INTO `cms_action_log` VALUES ('1734', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900150');
INSERT INTO `cms_action_log` VALUES ('1735', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900151');
INSERT INTO `cms_action_log` VALUES ('1736', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900151');
INSERT INTO `cms_action_log` VALUES ('1737', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900152');
INSERT INTO `cms_action_log` VALUES ('1738', 'backend', '39', '/wechat/app/update', '{\n    \"id\": \"3\"\n}', '[]', '{}', '[]', '1475900153');
INSERT INTO `cms_action_log` VALUES ('1739', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900156');
INSERT INTO `cms_action_log` VALUES ('1740', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900157');
INSERT INTO `cms_action_log` VALUES ('1741', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900190');
INSERT INTO `cms_action_log` VALUES ('1742', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900191');
INSERT INTO `cms_action_log` VALUES ('1743', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900192');
INSERT INTO `cms_action_log` VALUES ('1744', 'backend', '39', '/wechat/app/update', '{\n    \"id\": \"3\"\n}', '[]', '{}', '[]', '1475900193');
INSERT INTO `cms_action_log` VALUES ('1745', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900196');
INSERT INTO `cms_action_log` VALUES ('1746', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900197');
INSERT INTO `cms_action_log` VALUES ('1747', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900197');
INSERT INTO `cms_action_log` VALUES ('1748', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900198');
INSERT INTO `cms_action_log` VALUES ('1749', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900198');
INSERT INTO `cms_action_log` VALUES ('1750', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900199');
INSERT INTO `cms_action_log` VALUES ('1751', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900199');
INSERT INTO `cms_action_log` VALUES ('1752', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900276');
INSERT INTO `cms_action_log` VALUES ('1753', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900277');
INSERT INTO `cms_action_log` VALUES ('1754', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900278');
INSERT INTO `cms_action_log` VALUES ('1755', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900278');
INSERT INTO `cms_action_log` VALUES ('1756', 'backend', '39', '/wechat/app/list', '[]', '[]', '{}', '[]', '1475900279');

-- ----------------------------
-- Table structure for cms_admin
-- ----------------------------
DROP TABLE IF EXISTS `cms_admin`;
CREATE TABLE `cms_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '管理员名称',
  `password` char(32) NOT NULL COMMENT '管理员密码',
  `real_name` varchar(255) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '邮件',
  `group_id` int(11) NOT NULL COMMENT '角色id',
  `login_time` int(11) NOT NULL DEFAULT '0' COMMENT '登录时间',
  `login_ip` int(12) unsigned NOT NULL DEFAULT '0' COMMENT '登录IP',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `is_founder` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为网站创始人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_admin
-- ----------------------------
INSERT INTO `cms_admin` VALUES ('39', 'admin', '21232f297a57a5a743894a0e4a801fc3', '薛磊', '', '95', '1475562373', '2130706433', '0', '0', '1454830213', '1475562373', '1');
INSERT INTO `cms_admin` VALUES ('40', 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '', '95', '0', '0', '0', '0', '1475301415', '1475301415', '0');
INSERT INTO `cms_admin` VALUES ('41', 'test', '098f6bcd4621d373cade4e832627b4f6', '', '', '98', '1475309156', '2130706433', '0', '1', '1475304990', '1475583941', '0');
INSERT INTO `cms_admin` VALUES ('42', 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '', '95', '0', '0', '0', '0', '1475567729', '1475567729', '0');
INSERT INTO `cms_admin` VALUES ('43', 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '', '95', '0', '0', '0', '0', '1475567951', '1475567951', '0');
INSERT INTO `cms_admin` VALUES ('44', 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '', '95', '0', '0', '0', '0', '1475568032', '1475568032', '0');
INSERT INTO `cms_admin` VALUES ('45', 'adminis', '21232f297a57a5a743894a0e4a801fc3', '', '', '95', '0', '0', '0', '1', '1475577409', '1475583947', '0');
INSERT INTO `cms_admin` VALUES ('46', 'adminsdf', '21232f297a57a5a743894a0e4a801fc3', '', '', '95', '0', '0', '0', '0', '1475583974', '1475583974', '0');
INSERT INTO `cms_admin` VALUES ('47', 'admin342', '21232f297a57a5a743894a0e4a801fc3', '', 'xl_9300@126.com', '95', '0', '0', '0', '0', '1475590425', '1475590425', '0');

-- ----------------------------
-- Table structure for cms_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `cms_admin_group`;
CREATE TABLE `cms_admin_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '父级分组ID',
  `name` varchar(255) NOT NULL COMMENT '角色名称',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '角色备注',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '分组级别',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序字段',
  `is_system` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为系统内置角色',
  `disabled` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_admin_group
-- ----------------------------
INSERT INTO `cms_admin_group` VALUES ('95', '0', '管理员组', '管理系统后台', '0', '0', '0', '0', '0', '1454830198', '1454830198');
INSERT INTO `cms_admin_group` VALUES ('96', '95', '系统管理', '系统管理', '1', '0', '0', '0', '1', '1475252962', '1475253534');
INSERT INTO `cms_admin_group` VALUES ('97', '95', '客服组', '客服管理', '1', '0', '0', '0', '0', '1475253428', '1475253428');
INSERT INTO `cms_admin_group` VALUES ('98', '95', '运营管理', '负责运营任务', '1', '0', '0', '0', '0', '1475274755', '1475274755');

-- ----------------------------
-- Table structure for cms_admin_node
-- ----------------------------
DROP TABLE IF EXISTS `cms_admin_node`;
CREATE TABLE `cms_admin_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `group_id` int(11) NOT NULL COMMENT '用户所在组ID',
  `node_id` int(11) NOT NULL COMMENT '权限ID',
  `forever` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否为永久授权 1-是 0-否',
  `expire_at` int(11) NOT NULL DEFAULT '0' COMMENT '权限过期时间',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_admin_node
-- ----------------------------

-- ----------------------------
-- Table structure for cms_article
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增编号',
  `uid` int(10) unsigned NOT NULL COMMENT '作者ID',
  `title` varchar(60) NOT NULL COMMENT '文章标题',
  `keywords` varchar(100) NOT NULL COMMENT '关键词',
  `markdown` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为Markdown',
  `content` longtext NOT NULL COMMENT 'html内容',
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `created_at` int(11) unsigned NOT NULL COMMENT '创建时间',
  `updated_at` int(11) unsigned NOT NULL COMMENT '最近修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('1', '39', 'aaa', 'bbb', '0', '<h1 id=\"h1-aasdasdfs\"><a name=\"aasdasdfs\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>aasdasdfs</h1>', '1', '1458694697', '1458734468');
INSERT INTO `cms_article` VALUES ('2', '39', '测试文章', '测试', '0', '<h1 id=\"h1-u6D4Bu8BD5\"><a name=\"测试\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>测试</h1><p>this is a test ok?</p>\r\n<h3 id=\"h3-u54C8u54C8u54C8\"><a name=\"哈哈哈\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>哈哈哈</h3>', '0', '1458707387', '1458734854');
INSERT INTO `cms_article` VALUES ('3', '39', 'Pc站点js注册接口文档', '注册 接口', '0', '<h2 id=\"h2--\"><a name=\"应用场景:\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>应用场景:</h2><hr>\r\n<h2 id=\"h2--\"><a name=\"接口列表:\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>接口列表:</h2><h4 id=\"h4--strong-strong-\"><a name=\"<strong>一、验证码图片：</strong>\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span><strong>一、验证码图片：</strong></h4><ul>\r\n<li>接口地址： <code>/apireg/verifyimg</code><br><strong>二、验证图形验证码是否正确：</strong> </li><li>接口地址： <code>/apireg/verifycode</code> </li><li>请求方式：<code>post</code></li><li>请求参数：<br>| 参数名称|参数类型 |允许为空|备注|<br>|——————|———-|—————-|———|<br>|verify|string|N|用户输入的验证码|</li><li>响应格式：<code>json</code></li><li>响应参数：<br>| 参数名称 |参数类型|允许为空|备注|<br>|——————|———-|—————-|———|<br>|code|int|N|1表示错误,0表示正确|<br>|msg|string|N|消息提示|<br>==== <strong>三、验证手机号是否存在</strong></li><li>接口地址： <code>/apireg/phoneexists</code> </li><li>请求方式：<code>post</code></li><li>请求参数：<br>| 参数名称|参数类型 |允许为空|备注|<br>|——————|———-|—————-|———|<br>|phone|string|N|用户输入的手机号|</li><li>响应格式：<code>json</code></li><li>响应参数：<br>| 参数名称 |参数类型|允许为空|备注|<br>|——————|———-|—————-|———|<br>|code|int|N|1表示错误，0表示不存在，2表示存在|<br>|msg|string|N|消息提示|<br>==== <strong>四、验证用户名是否存在</strong></li><li>接口地址： <code>/apireg/nameexists</code> </li><li>请求方式：<code>post</code></li><li>请求参数：<br>| 参数名称|参数类型 |允许为空|备注|<br>|——————|———-|—————-|———|<br>|name|string|N|用户输入的用户名|</li><li>响应格式：<code>json</code></li><li>响应参数：<br>| 参数名称 |参数类型|允许为空|备注|<br>|——————|———-|—————-|———|<br>|code|int|N|1表示错误，0表示不存在，2表示存在|<br>|msg|string|N|消息提示|<br>==== <strong>五、验证短信验证码</strong></li><li>接口地址： <code>/apireg/phonecode</code> </li><li>请求方式：<code>post</code></li><li>响应格式：<code>json</code></li><li>请求参数：<br>| 参数名称|参数类型 |允许为空|备注|<br>|——————|———-|—————-|———|<br>|phone|string|N|用户输入的手机号|<br>|phoneCode|string|N|用户输入的手机验证码|</li><li>响应参数：<br>| 参数名称 |参数类型|允许为空|备注|<br>|——————|———-|—————-|———|<br>|code|int|N|1标示错误，0表示正确|<br>|msg|string|N|消息提示|<br>==== <strong>六、发送短信验证码</strong></li><li>接口地址： <code>/apireg/verifyphone</code> </li><li>请求方式：<code>post</code></li><li>响应格式：<code>json</code></li><li>请求参数：<br>| 参数名称|参数类型 |允许为空|备注|<br>|——————|———-|—————-|———|<br>|phone|string|N|用户输入的手机号|<br>|verify|string|N|用户输入的图形验证码|</li><li>响应参数：<br>| 参数名称 |参数类型|允许为空|备注|<br>|——————|———-|—————-|———|<br>|code|int|N|1标示错误，0表示发送成功|<br>|msg|string|N|消息提示|<br>==== <strong>七、用户注册</strong></li><li>接口地址： <code>/apireg/userreg</code> </li><li>请求方式：<code>post</code></li><li>响应格式：<code>json</code></li><li>请求参数：<br>| 参数名称|参数类型 |允许为空|备注|<br>|——————|———-|—————-|———|<br>|phone|string|N|用户输入的手机号|<br>|phoneCode|string|N|用户输入的手机验证码|<br>|userName|string|N|用户输入的用户名|<br>|passWord|string|N|用户输入的密码|</li><li>响应参数：<br>| 参数名称 |参数类型|允许为空|备注|<br>|——————|———-|—————-|———|<br>|code|int|N|1标示错误，0表示注册成功|<br>|msg|string|N|消息提示|<br>==== <strong>八、是否显示验证码</strong></li><li>接口地址： <code>/apireg/showverifyimg</code> </li><li>请求方式：<code>post或get</code></li><li>响应格式：<code>json</code></li><li>请求参数：无</li><li>响应参数：<br>| 参数名称 |参数类型|允许为空|备注|<br>|——————|———-|—————-|———|<br>|code|int|N|0表示隐藏验证码，1表示显示验证码|<br>|msg|string|N|消息提示|</li></ul>\r\n<p>==== <strong>九、统计派代注册人数</strong></p>\r\n<ul>\r\n<li>接口地址： <code>/apireg/paidairegcount</code> </li><li>请求方式：<code>post或get</code></li><li>响应格式：<code>json</code></li><li>请求参数：无</li><li>响应参数：<br>| 参数名称 |参数类型|允许为空|备注|<br>|——————|———-|—————-|———|<br>|count|int|N|注册人数|</li></ul>\r\n', '0', '1458732225', '1458732225');
INSERT INTO `cms_article` VALUES ('4', '39', '完整示例', '完整示例', '0', '<h1 id=\"h1-editor-md\"><a name=\"Editor.md\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Editor.md</h1><p><img src=\"https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png\" alt=\"\"></p>\r\n<p><img src=\"https://img.shields.io/github/stars/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/github/forks/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/github/tag/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/github/release/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/github/issues/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/bower/v/editor.md.svg\" alt=\"\"></p>\r\n<p><strong>目录 (Table of Contents)</strong></p>\r\n<p>[TOCM]</p>\r\n<div class=\"markdown-toc editormd-markdown-toc\">[TOC]</div><h1 id=\"h1-heading-1\"><a name=\"Heading 1\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 1</h1><h2 id=\"h2-heading-2\"><a name=\"Heading 2\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 2</h2><h3 id=\"h3-heading-3\"><a name=\"Heading 3\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 3</h3><h4 id=\"h4-heading-4\"><a name=\"Heading 4\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 4</h4><h5 id=\"h5-heading-5\"><a name=\"Heading 5\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 5</h5><h6 id=\"h6-heading-6\"><a name=\"Heading 6\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 6</h6><h1 id=\"h1-heading-1-link-heading-link\"><a name=\"Heading 1 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 1 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h1><h2 id=\"h2-heading-2-link-heading-link\"><a name=\"Heading 2 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 2 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h2><h3 id=\"h3-heading-3-link-heading-link\"><a name=\"Heading 3 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 3 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h3><h4 id=\"h4-heading-4-link-heading-link-heading-link-heading-link\"><a name=\"Heading 4 link   Heading link  Heading link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 4 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a> Heading link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h4><h5 id=\"h5-heading-5-link-heading-link\"><a name=\"Heading 5 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 5 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h5><h6 id=\"h6-heading-6-link-heading-link\"><a name=\"Heading 6 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 6 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h6><h4 id=\"h4--heading-underline-\"><a name=\"标题（用底线的形式）Heading (underline)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>标题（用底线的形式）Heading (underline)</h4><h1 id=\"h1-this-is-an-h1\"><a name=\"This is an H1\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>This is an H1</h1><h2 id=\"h2-this-is-an-h2\"><a name=\"This is an H2\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>This is an H2</h2><h3 id=\"h3-u5B57u7B26u6548u679Cu548Cu6A2Au7EBFu7B49\"><a name=\"字符效果和横线等\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>字符效果和横线等</h3><hr>\r\n<p><del>删除线</del> &lt;s&gt;删除线（开启识别HTML标签时）&lt;/s&gt;<br><em>斜体字</em>      <em>斜体字</em><br><strong>粗体</strong>  <strong>粗体</strong><br><strong><em>粗斜体</em></strong> <strong><em>粗斜体</em></strong></p>\r\n<p>上标：X&lt;sub&gt;2&lt;/sub&gt;，下标：O&lt;sup&gt;2&lt;/sup&gt;</p>\r\n<p><strong>缩写(同HTML的abbr标签)</strong></p>\r\n<blockquote>\r\n<p>即更长的单词或短语的缩写形式，前提是开启识别HTML标签时，已默认开启</p>\r\n</blockquote>\r\n<p>The &lt;abbr title=&quot;Hyper Text Markup Language&quot;&gt;HTML&lt;/abbr&gt; specification is maintained by the &lt;abbr title=&quot;World Wide Web Consortium&quot;&gt;W3C&lt;/abbr&gt;.</p>\r\n<h3 id=\"h3--blockquotes\"><a name=\"引用 Blockquotes\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>引用 Blockquotes</h3><blockquote>\r\n<p>引用文本 Blockquotes</p>\r\n</blockquote>\r\n<p>引用的行内混合 Blockquotes</p>\r\n<blockquote>\r\n<p>引用：如果想要插入空白换行<code>即&lt;br /&gt;标签</code>，在插入处先键入两个以上的空格然后回车即可，<a href=\"http://localhost/\">普通链接</a>。</p>\r\n</blockquote>\r\n<h3 id=\"h3--links\"><a name=\"锚点与链接 Links\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>锚点与链接 Links</h3><p><a href=\"http://localhost/\">普通链接</a></p>\r\n<p><a href=\"http://localhost/\" title=\"普通链接带标题\">普通链接带标题</a></p>\r\n<p>直接链接：<a href=\"https://github.com\">https://github.com</a></p>\r\n<p><a href=\"http://www.this-anchor-link.com/\">锚点链接</a> </p>\r\n<p><a href=\"mailto:test.test@gmail.com\"\">mailto:test.test&#64;gmail.com</a></p>\r\n<p>GFM a-tail link <a href=\"https://github.com/pandao\" title=\"&#64;pandao\" class=\"at-link\">@pandao</a>  邮箱地址自动链接 <a href=\"mailto:test.test@gmail.com\">test.test@gmail.com</a>  <a href=\"mailto:www@vip.qq.com\">www@vip.qq.com</a></p>\r\n<blockquote>\r\n<p><a href=\"https://github.com/pandao\" title=\"&#64;pandao\" class=\"at-link\">@pandao</a></p>\r\n</blockquote>\r\n<h3 id=\"h3--codes\"><a name=\"多语言代码高亮 Codes\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>多语言代码高亮 Codes</h3><h4 id=\"h4--inline-code\"><a name=\"行内代码 Inline code\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>行内代码 Inline code</h4><p>执行命令：<code>npm install marked</code></p>\r\n<h4 id=\"h4-u7F29u8FDBu98CEu683C\"><a name=\"缩进风格\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>缩进风格</h4><p>即缩进四个空格，也做为实现类似 <code>&lt;pre&gt;</code> 预格式化文本 ( Preformatted Text ) 的功能。</p>\r\n<pre><code>&lt;?php\r\n    echo &quot;Hello world!&quot;;\r\n?&gt;\r\n</code></pre><p>预格式化文本：</p>\r\n<pre><code>| First Header  | Second Header |\r\n| ------------- | ------------- |\r\n| Content Cell  | Content Cell  |\r\n| Content Cell  | Content Cell  |\r\n</code></pre><h4 id=\"h4-js-\"><a name=\"JS代码\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>JS代码　</h4><pre><code class=\"lang-javascript\">function test() {\r\n    console.log(&quot;Hello world!&quot;);\r\n}\r\n\r\n(function(){\r\n    var box = function() {\r\n        return box.fn.init();\r\n    };\r\n\r\n    box.prototype = box.fn = {\r\n        init : function(){\r\n            console.log(&#39;box.init()&#39;);\r\n\r\n            return this;\r\n        },\r\n\r\n        add : function(str) {\r\n            alert(&quot;add&quot;, str);\r\n\r\n            return this;\r\n        },\r\n\r\n        remove : function(str) {\r\n            alert(&quot;remove&quot;, str);\r\n\r\n            return this;\r\n        }\r\n    };\r\n\r\n    box.fn.init.prototype = box.fn;\r\n\r\n    window.box =box;\r\n})();\r\n\r\nvar testBox = box();\r\ntestBox.add(&quot;jQuery&quot;).remove(&quot;jQuery&quot;);\r\n</code></pre>\r\n<h4 id=\"h4-html-html-codes\"><a name=\"HTML 代码 HTML codes\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>HTML 代码 HTML codes</h4><pre><code class=\"lang-html\">&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n    &lt;head&gt;\r\n        &lt;mate charest=&quot;utf-8&quot; /&gt;\r\n        &lt;meta name=&quot;keywords&quot; content=&quot;Editor.md, Markdown, Editor&quot; /&gt;\r\n        &lt;title&gt;Hello world!&lt;/title&gt;\r\n        &lt;style type=&quot;text/css&quot;&gt;\r\n            body{font-size:14px;color:#444;font-family: &quot;Microsoft Yahei&quot;, Tahoma, &quot;Hiragino Sans GB&quot;, Arial;background:#fff;}\r\n            ul{list-style: none;}\r\n            img{border:none;vertical-align: middle;}\r\n        &lt;/style&gt;\r\n    &lt;/head&gt;\r\n    &lt;body&gt;\r\n        &lt;h1 class=&quot;text-xxl&quot;&gt;Hello world!&lt;/h1&gt;\r\n        &lt;p class=&quot;text-green&quot;&gt;Plain text&lt;/p&gt;\r\n    &lt;/body&gt;\r\n&lt;/html&gt;\r\n</code></pre>\r\n<h3 id=\"h3--images\"><a name=\"图片 Images\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>图片 Images</h3><p>Image:</p>\r\n<p><img src=\"https://pandao.github.io/editor.md/examples/images/4.jpg\" alt=\"\"></p>\r\n<blockquote>\r\n<p>Follow your heart.</p>\r\n</blockquote>\r\n<p><img src=\"https://pandao.github.io/editor.md/examples/images/8.jpg\" alt=\"\"></p>\r\n<blockquote>\r\n<p>图为：厦门白城沙滩</p>\r\n</blockquote>\r\n<p>图片加链接 (Image + Link)：</p>\r\n<p><a href=\"https://pandao.github.io/editor.md/images/7.jpg\" title=\"李健首张专辑《似水流年》封面\"><img src=\"https://pandao.github.io/editor.md/examples/images/7.jpg\" alt=\"\"></a></p>\r\n<blockquote>\r\n<p>图为：李健首张专辑《似水流年》封面</p>\r\n</blockquote>\r\n<hr>\r\n<h3 id=\"h3--lists\"><a name=\"列表 Lists\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>列表 Lists</h3><h4 id=\"h4--unordered-lists-\"><a name=\"无序列表（减号）Unordered Lists (-)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>无序列表（减号）Unordered Lists (-)</h4><ul>\r\n<li>列表一</li><li>列表二</li><li>列表三</li></ul>\r\n<h4 id=\"h4--unordered-lists-\"><a name=\"无序列表（星号）Unordered Lists (*)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>无序列表（星号）Unordered Lists (*)</h4><ul>\r\n<li>列表一</li><li>列表二</li><li>列表三</li></ul>\r\n<h4 id=\"h4--unordered-lists-\"><a name=\"无序列表（加号和嵌套）Unordered Lists (+)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>无序列表（加号和嵌套）Unordered Lists (+)</h4><ul>\r\n<li>列表一</li><li>列表二<ul>\r\n<li>列表二-1</li><li>列表二-2</li><li>列表二-3</li></ul>\r\n</li><li>列表三<ul>\r\n<li>列表一</li><li>列表二</li><li>列表三</li></ul>\r\n</li></ul>\r\n<h4 id=\"h4--ordered-lists-\"><a name=\"有序列表 Ordered Lists (-)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>有序列表 Ordered Lists (-)</h4><ol>\r\n<li>第一行</li><li>第二行</li><li>第三行</li></ol>\r\n<h4 id=\"h4-gfm-task-list\"><a name=\"GFM task list\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>GFM task list</h4><ul>\r\n<li>[x] GFM task list 1</li><li>[x] GFM task list 2</li><li>[ ] GFM task list 3<ul>\r\n<li>[ ] GFM task list 3-1</li><li>[ ] GFM task list 3-2</li><li>[ ] GFM task list 3-3</li></ul>\r\n</li><li>[ ] GFM task list 4<ul>\r\n<li>[ ] GFM task list 4-1</li><li>[ ] GFM task list 4-2</li></ul>\r\n</li></ul>\r\n<hr>\r\n<h3 id=\"h3--tables\"><a name=\"绘制表格 Tables\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>绘制表格 Tables</h3><table>\r\n<thead>\r\n<tr>\r\n<th>项目</th>\r\n<th style=\"text-align:right\">价格</th>\r\n<th style=\"text-align:center\">数量</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>计算机</td>\r\n<td style=\"text-align:right\">$1600</td>\r\n<td style=\"text-align:center\">5</td>\r\n</tr>\r\n<tr>\r\n<td>手机</td>\r\n<td style=\"text-align:right\">$12</td>\r\n<td style=\"text-align:center\">12</td>\r\n</tr>\r\n<tr>\r\n<td>管线</td>\r\n<td style=\"text-align:right\">$1</td>\r\n<td style=\"text-align:center\">234</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>First Header</th>\r\n<th>Second Header</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Content Cell</td>\r\n<td>Content Cell</td>\r\n</tr>\r\n<tr>\r\n<td>Content Cell</td>\r\n<td>Content Cell </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>First Header</th>\r\n<th>Second Header</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Content Cell</td>\r\n<td>Content Cell</td>\r\n</tr>\r\n<tr>\r\n<td>Content Cell</td>\r\n<td>Content Cell</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>Function name</th>\r\n<th>Description</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><code>help()</code></td>\r\n<td>Display the help window.</td>\r\n</tr>\r\n<tr>\r\n<td><code>destroy()</code></td>\r\n<td><strong>Destroy your computer!</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th style=\"text-align:left\">Left-Aligned</th>\r\n<th style=\"text-align:center\">Center Aligned</th>\r\n<th style=\"text-align:right\">Right Aligned</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align:left\">col 3 is</td>\r\n<td style=\"text-align:center\">some wordy text</td>\r\n<td style=\"text-align:right\">$1600</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align:left\">col 2 is</td>\r\n<td style=\"text-align:center\">centered</td>\r\n<td style=\"text-align:right\">$12</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align:left\">zebra stripes</td>\r\n<td style=\"text-align:center\">are neat</td>\r\n<td style=\"text-align:right\">$1</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>Item</th>\r\n<th style=\"text-align:right\">Value</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Computer</td>\r\n<td style=\"text-align:right\">$1600</td>\r\n</tr>\r\n<tr>\r\n<td>Phone</td>\r\n<td style=\"text-align:right\">$12</td>\r\n</tr>\r\n<tr>\r\n<td>Pipe</td>\r\n<td style=\"text-align:right\">$1</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr>\r\n<h4 id=\"h4--html-entities-codes\"><a name=\"特殊符号 HTML Entities Codes\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>特殊符号 HTML Entities Codes</h4><p>&copy; &amp;  &uml; &trade; &iexcl; &pound;<br>&amp; &lt; &gt; &yen; &euro; &reg; &plusmn; &para; &sect; &brvbar; &macr; &laquo; &middot; </p>\r\n<p>X&sup2; Y&sup3; &frac34; &frac14;  &times;  &divide;   &raquo;</p>\r\n<p>18&ordm;C  &quot;  &apos;</p>\r\n<hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><h3 id=\"h3-emoji-smiley-\"><a name=\"Emoji表情 :smiley:\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Emoji表情 :smiley:</h3><blockquote>\r\n<p>Blockquotes :star:</p>\r\n</blockquote>\r\n<h4 id=\"h4-gfm-task-lists-amp-emoji-amp-fontawesome-icon-emoji-amp-editormd-logo-emoji-editormd-logo-5x-\"><a name=\"GFM task lists &amp; Emoji &amp; fontAwesome icon emoji &amp; editormd logo emoji :editormd-logo-5x:\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>GFM task lists &amp; Emoji &amp; fontAwesome icon emoji &amp; editormd logo emoji :editormd-logo-5x:</h4><ul>\r\n<li>[x] :smiley: <a href=\"https://github.com/mentions\" title=\"&#64;mentions\" class=\"at-link\">@mentions</a>, :smiley: #refs, <a href=\"\">links</a>, <strong>formatting</strong>, and &lt;del&gt;tags&lt;/del&gt; supported :editormd-logo:;</li><li>[x] list syntax required (any unordered or ordered list supported) :editormd-logo-3x:;</li><li>[x] [ ] :smiley: this is a complete item :smiley:;</li><li>[ ] []this is an incomplete item <a href=\"#\">test link</a> :fa-star: <a href=\"https://github.com/pandao\" title=\"&#64;pandao\" class=\"at-link\">@pandao</a>; </li><li>[ ] [ ]this is an incomplete item :fa-star: :fa-gear:;<ul>\r\n<li>[ ] :smiley: this is an incomplete item <a href=\"#\">test link</a> :fa-star: :fa-gear:;</li><li>[ ] :smiley: this is  :fa-star: :fa-gear: an incomplete item <a href=\"#\">test link</a>;</li></ul>\r\n</li></ul>\r\n<h4 id=\"h4--escape\"><a name=\"反斜杠 Escape\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>反斜杠 Escape</h4><p>*literal asterisks*</p>\r\n<hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><h3 id=\"h3--tex-katex-\"><a name=\"科学公式 TeX(KaTeX)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>科学公式 TeX(KaTeX)</h3><p class=\"editormd-tex\">E=mc^2</p>\r\n<p>行内的公式<span class=\"editormd-tex\">E=mc^2</span>行内的公式，行内的<span class=\"editormd-tex\">E=mc^2</span>公式。</p>\r\n<p class=\"editormd-tex\">x &gt; y</p>\r\n<p class=\"editormd-tex\">(\\sqrt{3x-1}+(1+x)^2)</p>\r\n<p class=\"editormd-tex\">\\sin(\\alpha)^{\\theta}=\\sum_{i=0}^{n}(x^i + \\cos(f))</p>\r\n<p>多行公式：</p>\r\n<p class=\"editormd-tex\">\\displaystyle\r\n\\left( \\sum\\_{k=1}^n a\\_k b\\_k \\right)^2\r\n\\leq\r\n\\left( \\sum\\_{k=1}^n a\\_k^2 \\right)\r\n\\left( \\sum\\_{k=1}^n b\\_k^2 \\right)</p><p class=\"editormd-tex\">\\displaystyle \r\n    \\frac{1}{\r\n        \\Bigl(\\sqrt{\\phi \\sqrt{5}}-\\phi\\Bigr) e^{\r\n        \\frac25 \\pi}} = 1+\\frac{e^{-2\\pi}} {1+\\frac{e^{-4\\pi}} {\r\n        1+\\frac{e^{-6\\pi}}\r\n        {1+\\frac{e^{-8\\pi}}\r\n         {1+\\cdots} }\r\n        } \r\n    }</p><p class=\"editormd-tex\">f(x) = \\int_{-\\infty}^\\infty\r\n    \\hat f(\\xi)\\,e^{2 \\pi i \\xi x}\r\n    \\,d\\xi</p><h3 id=\"h3--page-break\"><a name=\"分页符 Page break\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>分页符 Page break</h3><blockquote>\r\n<p>Print Test: Ctrl + P</p>\r\n</blockquote>\r\n<hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><h3 id=\"h3--flowchart\"><a name=\"绘制流程图 Flowchart\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>绘制流程图 Flowchart</h3><div class=\"flowchart\">st=>start: 用户登陆\r\nop=>operation: 登陆操作\r\ncond=>condition: 登陆成功 Yes or No?\r\ne=>end: 进入后台\r\n\r\nst->op->cond\r\ncond(yes)->e\r\ncond(no)->op</div><hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><h3 id=\"h3--sequence-diagram\"><a name=\"绘制序列图 Sequence Diagram\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>绘制序列图 Sequence Diagram</h3><div class=\"sequence-diagram\">Andrew->China: Says Hello \r\nNote right of China: China thinks\\nabout it \r\nChina-->Andrew: How are you? \r\nAndrew->>China: I am good thanks!</div><h3 id=\"h3-end\"><a name=\"End\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>End</h3>', '0', '1458735004', '1458735004');
INSERT INTO `cms_article` VALUES ('5', '39', 'are you ok?', 'this is a new test', '0', '<p>hello kevin <br/></p>', '0', '1459442371', '1459442371');
INSERT INTO `cms_article` VALUES ('6', '39', '图片测试', 'photo', '0', '<p><br style=\"text-align: left;\"/><img src=\"http://img.baidu.com/hi/jx2/j_0025.gif\"/>哈哈哈</p>', '0', '1459443064', '1459443064');
INSERT INTO `cms_article` VALUES ('7', '39', '代码段测试', '这是一个代码段', '0', '<pre class=\"brush:php;toolbar:false;\">&lt;?php\r\n\r\nphpinfo();</pre><p><br/></p>', '0', '1459443198', '1459443198');
INSERT INTO `cms_article` VALUES ('8', '39', '表情测试', '表情', '0', '<p><img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/angry.png\" class=\"emoji\" title=\"&#58;angry&#58;\" alt=\"&#58;angry&#58;\" /> <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/angry.png\" class=\"emoji\" title=\"&#58;angry&#58;\" alt=\"&#58;angry&#58;\" /></p>\r\n', '0', '1459484713', '1459484713');
INSERT INTO `cms_article` VALUES ('9', '39', '功能测试', '功能', '0', '<h1 id=\"h1-editor-md\"><a name=\"Editor.md\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Editor.md</h1><p><img src=\"https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png\" alt=\"\"></p>\r\n<p><img src=\"https://img.shields.io/github/stars/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/github/forks/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/github/tag/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/github/release/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/github/issues/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/bower/v/editor.md.svg\" alt=\"\"></p>\r\n<p><strong>目录 (Table of Contents)</strong></p>\r\n<p>[TOCM]</p>\r\n<div class=\"markdown-toc editormd-markdown-toc\">[TOC]</div><h1 id=\"h1-heading-1\"><a name=\"Heading 1\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 1</h1><h2 id=\"h2-heading-2\"><a name=\"Heading 2\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 2</h2><h3 id=\"h3-heading-3\"><a name=\"Heading 3\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 3</h3><h4 id=\"h4-heading-4\"><a name=\"Heading 4\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 4</h4><h5 id=\"h5-heading-5\"><a name=\"Heading 5\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 5</h5><h6 id=\"h6-heading-6\"><a name=\"Heading 6\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 6</h6><h1 id=\"h1-heading-1-link-heading-link\"><a name=\"Heading 1 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 1 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h1><h2 id=\"h2-heading-2-link-heading-link\"><a name=\"Heading 2 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 2 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h2><h3 id=\"h3-heading-3-link-heading-link\"><a name=\"Heading 3 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 3 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h3><h4 id=\"h4-heading-4-link-heading-link-heading-link-heading-link\"><a name=\"Heading 4 link   Heading link  Heading link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 4 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a> Heading link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h4><h5 id=\"h5-heading-5-link-heading-link\"><a name=\"Heading 5 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 5 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h5><h6 id=\"h6-heading-6-link-heading-link\"><a name=\"Heading 6 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 6 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h6><h4 id=\"h4--heading-underline-\"><a name=\"标题（用底线的形式）Heading (underline)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>标题（用底线的形式）Heading (underline)</h4><h1 id=\"h1-this-is-an-h1\"><a name=\"This is an H1\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>This is an H1</h1><h2 id=\"h2-this-is-an-h2\"><a name=\"This is an H2\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>This is an H2</h2><h3 id=\"h3-u5B57u7B26u6548u679Cu548Cu6A2Au7EBFu7B49\"><a name=\"字符效果和横线等\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>字符效果和横线等</h3><hr>\r\n<p><del>删除线</del> &lt;s&gt;删除线（开启识别HTML标签时）&lt;/s&gt;<br><em>斜体字</em>      <em>斜体字</em><br><strong>粗体</strong>  <strong>粗体</strong><br><strong><em>粗斜体</em></strong> <strong><em>粗斜体</em></strong></p>\r\n<p>上标：X&lt;sub&gt;2&lt;/sub&gt;，下标：O&lt;sup&gt;2&lt;/sup&gt;</p>\r\n<p><strong>缩写(同HTML的abbr标签)</strong></p>\r\n<blockquote>\r\n<p>即更长的单词或短语的缩写形式，前提是开启识别HTML标签时，已默认开启</p>\r\n</blockquote>\r\n<p>The &lt;abbr title=&quot;Hyper Text Markup Language&quot;&gt;HTML&lt;/abbr&gt; specification is maintained by the &lt;abbr title=&quot;World Wide Web Consortium&quot;&gt;W3C&lt;/abbr&gt;.</p>\r\n<h3 id=\"h3--blockquotes\"><a name=\"引用 Blockquotes\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>引用 Blockquotes</h3><blockquote>\r\n<p>引用文本 Blockquotes</p>\r\n</blockquote>\r\n<p>引用的行内混合 Blockquotes</p>\r\n<blockquote>\r\n<p>引用：如果想要插入空白换行<code>即&lt;br /&gt;标签</code>，在插入处先键入两个以上的空格然后回车即可，<a href=\"http://localhost/\">普通链接</a>。</p>\r\n</blockquote>\r\n<h3 id=\"h3--links\"><a name=\"锚点与链接 Links\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>锚点与链接 Links</h3><p><a href=\"http://localhost/\">普通链接</a></p>\r\n<p><a href=\"http://localhost/\" title=\"普通链接带标题\">普通链接带标题</a></p>\r\n<p>直接链接：<a href=\"https://github.com\">https://github.com</a></p>\r\n<p><a href=\"http://www.this-anchor-link.com/\">锚点链接</a> </p>\r\n<p><a href=\"mailto:test.test@gmail.com\"\">mailto:test.test&#64;gmail.com</a></p>\r\n<p>GFM a-tail link <a href=\"https://github.com/pandao\" title=\"&#64;pandao\" class=\"at-link\">@pandao</a>  邮箱地址自动链接 <a href=\"mailto:test.test@gmail.com\">test.test@gmail.com</a>  <a href=\"mailto:www@vip.qq.com\">www@vip.qq.com</a></p>\r\n<blockquote>\r\n<p><a href=\"https://github.com/pandao\" title=\"&#64;pandao\" class=\"at-link\">@pandao</a></p>\r\n</blockquote>\r\n<h3 id=\"h3--codes\"><a name=\"多语言代码高亮 Codes\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>多语言代码高亮 Codes</h3><h4 id=\"h4--inline-code\"><a name=\"行内代码 Inline code\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>行内代码 Inline code</h4><p>执行命令：<code>npm install marked</code></p>\r\n<h4 id=\"h4-u7F29u8FDBu98CEu683C\"><a name=\"缩进风格\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>缩进风格</h4><p>即缩进四个空格，也做为实现类似 <code>&lt;pre&gt;</code> 预格式化文本 ( Preformatted Text ) 的功能。</p>\r\n<pre><code>&lt;?php\r\n    echo &quot;Hello world!&quot;;\r\n?&gt;\r\n</code></pre><p>预格式化文本：</p>\r\n<pre><code>| First Header  | Second Header |\r\n| ------------- | ------------- |\r\n| Content Cell  | Content Cell  |\r\n| Content Cell  | Content Cell  |\r\n</code></pre><h4 id=\"h4-js-\"><a name=\"JS代码\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>JS代码　</h4><pre><code class=\"lang-javascript\">function test() {\r\n    console.log(&quot;Hello world!&quot;);\r\n}\r\n\r\n(function(){\r\n    var box = function() {\r\n        return box.fn.init();\r\n    };\r\n\r\n    box.prototype = box.fn = {\r\n        init : function(){\r\n            console.log(&#39;box.init()&#39;);\r\n\r\n            return this;\r\n        },\r\n\r\n        add : function(str) {\r\n            alert(&quot;add&quot;, str);\r\n\r\n            return this;\r\n        },\r\n\r\n        remove : function(str) {\r\n            alert(&quot;remove&quot;, str);\r\n\r\n            return this;\r\n        }\r\n    };\r\n\r\n    box.fn.init.prototype = box.fn;\r\n\r\n    window.box =box;\r\n})();\r\n\r\nvar testBox = box();\r\ntestBox.add(&quot;jQuery&quot;).remove(&quot;jQuery&quot;);\r\n</code></pre>\r\n<h4 id=\"h4-html-html-codes\"><a name=\"HTML 代码 HTML codes\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>HTML 代码 HTML codes</h4><pre><code class=\"lang-html\">&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n    &lt;head&gt;\r\n        &lt;mate charest=&quot;utf-8&quot; /&gt;\r\n        &lt;meta name=&quot;keywords&quot; content=&quot;Editor.md, Markdown, Editor&quot; /&gt;\r\n        &lt;title&gt;Hello world!&lt;/title&gt;\r\n        &lt;style type=&quot;text/css&quot;&gt;\r\n            body{font-size:14px;color:#444;font-family: &quot;Microsoft Yahei&quot;, Tahoma, &quot;Hiragino Sans GB&quot;, Arial;background:#fff;}\r\n            ul{list-style: none;}\r\n            img{border:none;vertical-align: middle;}\r\n        &lt;/style&gt;\r\n    &lt;/head&gt;\r\n    &lt;body&gt;\r\n        &lt;h1 class=&quot;text-xxl&quot;&gt;Hello world!&lt;/h1&gt;\r\n        &lt;p class=&quot;text-green&quot;&gt;Plain text&lt;/p&gt;\r\n    &lt;/body&gt;\r\n&lt;/html&gt;\r\n</code></pre>\r\n<h3 id=\"h3--images\"><a name=\"图片 Images\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>图片 Images</h3><p>Image:</p>\r\n<p><img src=\"https://pandao.github.io/editor.md/examples/images/4.jpg\" alt=\"\"></p>\r\n<blockquote>\r\n<p>Follow your heart.</p>\r\n</blockquote>\r\n<p><img src=\"https://pandao.github.io/editor.md/examples/images/8.jpg\" alt=\"\"></p>\r\n<blockquote>\r\n<p>图为：厦门白城沙滩</p>\r\n</blockquote>\r\n<p>图片加链接 (Image + Link)：</p>\r\n<p><a href=\"https://pandao.github.io/editor.md/images/7.jpg\" title=\"李健首张专辑《似水流年》封面\"><img src=\"https://pandao.github.io/editor.md/examples/images/7.jpg\" alt=\"\"></a></p>\r\n<blockquote>\r\n<p>图为：李健首张专辑《似水流年》封面</p>\r\n</blockquote>\r\n<hr>\r\n<h3 id=\"h3--lists\"><a name=\"列表 Lists\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>列表 Lists</h3><h4 id=\"h4--unordered-lists-\"><a name=\"无序列表（减号）Unordered Lists (-)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>无序列表（减号）Unordered Lists (-)</h4><ul>\r\n<li>列表一</li><li>列表二</li><li>列表三</li></ul>\r\n<h4 id=\"h4--unordered-lists-\"><a name=\"无序列表（星号）Unordered Lists (*)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>无序列表（星号）Unordered Lists (*)</h4><ul>\r\n<li>列表一</li><li>列表二</li><li>列表三</li></ul>\r\n<h4 id=\"h4--unordered-lists-\"><a name=\"无序列表（加号和嵌套）Unordered Lists (+)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>无序列表（加号和嵌套）Unordered Lists (+)</h4><ul>\r\n<li>列表一</li><li>列表二<ul>\r\n<li>列表二-1</li><li>列表二-2</li><li>列表二-3</li></ul>\r\n</li><li>列表三<ul>\r\n<li>列表一</li><li>列表二</li><li>列表三</li></ul>\r\n</li></ul>\r\n<h4 id=\"h4--ordered-lists-\"><a name=\"有序列表 Ordered Lists (-)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>有序列表 Ordered Lists (-)</h4><ol>\r\n<li>第一行</li><li>第二行</li><li>第三行</li></ol>\r\n<h4 id=\"h4-gfm-task-list\"><a name=\"GFM task list\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>GFM task list</h4><ul>\r\n<li>[x] GFM task list 1</li><li>[x] GFM task list 2</li><li>[ ] GFM task list 3<ul>\r\n<li>[ ] GFM task list 3-1</li><li>[ ] GFM task list 3-2</li><li>[ ] GFM task list 3-3</li></ul>\r\n</li><li>[ ] GFM task list 4<ul>\r\n<li>[ ] GFM task list 4-1</li><li>[ ] GFM task list 4-2</li></ul>\r\n</li></ul>\r\n<hr>\r\n<h3 id=\"h3--tables\"><a name=\"绘制表格 Tables\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>绘制表格 Tables</h3><table>\r\n<thead>\r\n<tr>\r\n<th>项目</th>\r\n<th style=\"text-align:right\">价格</th>\r\n<th style=\"text-align:center\">数量</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>计算机</td>\r\n<td style=\"text-align:right\">$1600</td>\r\n<td style=\"text-align:center\">5</td>\r\n</tr>\r\n<tr>\r\n<td>手机</td>\r\n<td style=\"text-align:right\">$12</td>\r\n<td style=\"text-align:center\">12</td>\r\n</tr>\r\n<tr>\r\n<td>管线</td>\r\n<td style=\"text-align:right\">$1</td>\r\n<td style=\"text-align:center\">234</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>First Header</th>\r\n<th>Second Header</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Content Cell</td>\r\n<td>Content Cell</td>\r\n</tr>\r\n<tr>\r\n<td>Content Cell</td>\r\n<td>Content Cell </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>First Header</th>\r\n<th>Second Header</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Content Cell</td>\r\n<td>Content Cell</td>\r\n</tr>\r\n<tr>\r\n<td>Content Cell</td>\r\n<td>Content Cell</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>Function name</th>\r\n<th>Description</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><code>help()</code></td>\r\n<td>Display the help window.</td>\r\n</tr>\r\n<tr>\r\n<td><code>destroy()</code></td>\r\n<td><strong>Destroy your computer!</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th style=\"text-align:left\">Left-Aligned</th>\r\n<th style=\"text-align:center\">Center Aligned</th>\r\n<th style=\"text-align:right\">Right Aligned</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align:left\">col 3 is</td>\r\n<td style=\"text-align:center\">some wordy text</td>\r\n<td style=\"text-align:right\">$1600</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align:left\">col 2 is</td>\r\n<td style=\"text-align:center\">centered</td>\r\n<td style=\"text-align:right\">$12</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align:left\">zebra stripes</td>\r\n<td style=\"text-align:center\">are neat</td>\r\n<td style=\"text-align:right\">$1</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>Item</th>\r\n<th style=\"text-align:right\">Value</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Computer</td>\r\n<td style=\"text-align:right\">$1600</td>\r\n</tr>\r\n<tr>\r\n<td>Phone</td>\r\n<td style=\"text-align:right\">$12</td>\r\n</tr>\r\n<tr>\r\n<td>Pipe</td>\r\n<td style=\"text-align:right\">$1</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr>\r\n<h4 id=\"h4--html-entities-codes\"><a name=\"特殊符号 HTML Entities Codes\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>特殊符号 HTML Entities Codes</h4><p>&copy; &amp;  &uml; &trade; &iexcl; &pound;<br>&amp; &lt; &gt; &yen; &euro; &reg; &plusmn; &para; &sect; &brvbar; &macr; &laquo; &middot; </p>\r\n<p>X&sup2; Y&sup3; &frac34; &frac14;  &times;  &divide;   &raquo;</p>\r\n<p>18&ordm;C  &quot;  &apos;</p>\r\n<hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><h3 id=\"h3-emoji-smiley-\"><a name=\"Emoji表情 :smiley:\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Emoji表情 <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /></h3><blockquote>\r\n<p>Blockquotes <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/star.png\" class=\"emoji\" title=\"&#58;star&#58;\" alt=\"&#58;star&#58;\" /></p>\r\n</blockquote>\r\n<h4 id=\"h4-gfm-task-lists-amp-emoji-amp-fontawesome-icon-emoji-amp-editormd-logo-emoji-editormd-logo-5x-\"><a name=\"GFM task lists &amp; Emoji &amp; fontAwesome icon emoji &amp; editormd logo emoji :editormd-logo-5x:\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>GFM task lists &amp; Emoji &amp; fontAwesome icon emoji &amp; editormd logo emoji <i class=\"editormd-logo-5x\" title=\"Editor.md logo (editormd-logo-5x)\"></i></h4><ul>\r\n<li>[x] <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /> <a href=\"https://github.com/mentions\" title=\"&#64;mentions\" class=\"at-link\">@mentions</a>, <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /> #refs, <a href=\"\">links</a>, <strong>formatting</strong>, and &lt;del&gt;tags&lt;/del&gt; supported <i class=\"editormd-logo\" title=\"Editor.md logo (editormd-logo)\"></i>;</li><li>[x] list syntax required (any unordered or ordered list supported) <i class=\"editormd-logo-3x\" title=\"Editor.md logo (editormd-logo-3x)\"></i>;</li><li>[x] [ ] <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /> this is a complete item <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" />;</li><li>[ ] []this is an incomplete item <a href=\"#\">test link</a> <i class=\"fa fa-star fa-emoji\" title=\"star\"></i> <a href=\"https://github.com/pandao\" title=\"&#64;pandao\" class=\"at-link\">@pandao</a>; </li><li>[ ] [ ]this is an incomplete item <i class=\"fa fa-star fa-emoji\" title=\"star\"></i> <i class=\"fa fa-gear fa-emoji\" title=\"gear\"></i>;<ul>\r\n<li>[ ] <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /> this is an incomplete item <a href=\"#\">test link</a> <i class=\"fa fa-star fa-emoji\" title=\"star\"></i> <i class=\"fa fa-gear fa-emoji\" title=\"gear\"></i>;</li><li>[ ] <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /> this is  <i class=\"fa fa-star fa-emoji\" title=\"star\"></i> <i class=\"fa fa-gear fa-emoji\" title=\"gear\"></i> an incomplete item <a href=\"#\">test link</a>;</li></ul>\r\n</li></ul>\r\n<h4 id=\"h4--escape\"><a name=\"反斜杠 Escape\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>反斜杠 Escape</h4><p>*literal asterisks*</p>\r\n<hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><h3 id=\"h3--tex-katex-\"><a name=\"科学公式 TeX(KaTeX)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>科学公式 TeX(KaTeX)</h3><p class=\"editormd-tex\">E=mc^2</p>\r\n<p>行内的公式<span class=\"editormd-tex\">E=mc^2</span>行内的公式，行内的<span class=\"editormd-tex\">E=mc^2</span>公式。</p>\r\n<p class=\"editormd-tex\">x &gt; y</p>\r\n<p class=\"editormd-tex\">(\\sqrt{3x-1}+(1+x)^2)</p>\r\n<p class=\"editormd-tex\">\\sin(\\alpha)^{\\theta}=\\sum_{i=0}^{n}(x^i + \\cos(f))</p>\r\n<p>多行公式：</p>\r\n<p class=\"editormd-tex\">\\displaystyle\r\n\\left( \\sum\\_{k=1}^n a\\_k b\\_k \\right)^2\r\n\\leq\r\n\\left( \\sum\\_{k=1}^n a\\_k^2 \\right)\r\n\\left( \\sum\\_{k=1}^n b\\_k^2 \\right)</p><p class=\"editormd-tex\">\\displaystyle \r\n    \\frac{1}{\r\n        \\Bigl(\\sqrt{\\phi \\sqrt{5}}-\\phi\\Bigr) e^{\r\n        \\frac25 \\pi}} = 1+\\frac{e^{-2\\pi}} {1+\\frac{e^{-4\\pi}} {\r\n        1+\\frac{e^{-6\\pi}}\r\n        {1+\\frac{e^{-8\\pi}}\r\n         {1+\\cdots} }\r\n        } \r\n    }</p><p class=\"editormd-tex\">f(x) = \\int_{-\\infty}^\\infty\r\n    \\hat f(\\xi)\\,e^{2 \\pi i \\xi x}\r\n    \\,d\\xi</p><h3 id=\"h3--page-break\"><a name=\"分页符 Page break\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>分页符 Page break</h3><blockquote>\r\n<p>Print Test: Ctrl + P</p>\r\n</blockquote>\r\n<hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><h3 id=\"h3--flowchart\"><a name=\"绘制流程图 Flowchart\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>绘制流程图 Flowchart</h3><div class=\"flowchart\">st=>start: 用户登陆\r\nop=>operation: 登陆操作\r\ncond=>condition: 登陆成功 Yes or No?\r\ne=>end: 进入后台\r\n\r\nst->op->cond\r\ncond(yes)->e\r\ncond(no)->op</div><hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><h3 id=\"h3--sequence-diagram\"><a name=\"绘制序列图 Sequence Diagram\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>绘制序列图 Sequence Diagram</h3><div class=\"sequence-diagram\">Andrew->China: Says Hello \r\nNote right of China: China thinks\\nabout it \r\nChina-->Andrew: How are you? \r\nAndrew->>China: I am good thanks!</div><h3 id=\"h3-end\"><a name=\"End\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>End</h3>', '0', '1459484751', '1459484751');
INSERT INTO `cms_article` VALUES ('10', '39', '时序图测试', '时序图', '0', '<h1 id=\"h1-editor-md\"><a name=\"Editor.md\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Editor.md</h1><p><img src=\"https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png\" alt=\"\"></p>\r\n<p><img src=\"https://img.shields.io/github/stars/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/github/forks/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/github/tag/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/github/release/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/github/issues/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/bower/v/editor.md.svg\" alt=\"\"></p>\r\n<p><strong>目录 (Table of Contents)</strong></p>\r\n<p>[TOCM]</p>\r\n<div class=\"markdown-toc editormd-markdown-toc\">[TOC]</div><h1 id=\"h1-heading-1\"><a name=\"Heading 1\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 1</h1><h2 id=\"h2-heading-2\"><a name=\"Heading 2\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 2</h2><h3 id=\"h3-heading-3\"><a name=\"Heading 3\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 3</h3><h4 id=\"h4-heading-4\"><a name=\"Heading 4\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 4</h4><h5 id=\"h5-heading-5\"><a name=\"Heading 5\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 5</h5><h6 id=\"h6-heading-6\"><a name=\"Heading 6\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 6</h6><h1 id=\"h1-heading-1-link-heading-link\"><a name=\"Heading 1 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 1 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h1><h2 id=\"h2-heading-2-link-heading-link\"><a name=\"Heading 2 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 2 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h2><h3 id=\"h3-heading-3-link-heading-link\"><a name=\"Heading 3 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 3 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h3><h4 id=\"h4-heading-4-link-heading-link-heading-link-heading-link\"><a name=\"Heading 4 link   Heading link  Heading link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 4 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a> Heading link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h4><h5 id=\"h5-heading-5-link-heading-link\"><a name=\"Heading 5 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 5 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h5><h6 id=\"h6-heading-6-link-heading-link\"><a name=\"Heading 6 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 6 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h6><h4 id=\"h4--heading-underline-\"><a name=\"标题（用底线的形式）Heading (underline)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>标题（用底线的形式）Heading (underline)</h4><h1 id=\"h1-this-is-an-h1\"><a name=\"This is an H1\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>This is an H1</h1><h2 id=\"h2-this-is-an-h2\"><a name=\"This is an H2\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>This is an H2</h2><h3 id=\"h3-u5B57u7B26u6548u679Cu548Cu6A2Au7EBFu7B49\"><a name=\"字符效果和横线等\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>字符效果和横线等</h3><hr>\r\n<p><del>删除线</del> &lt;s&gt;删除线（开启识别HTML标签时）&lt;/s&gt;<br><em>斜体字</em>      <em>斜体字</em><br><strong>粗体</strong>  <strong>粗体</strong><br><strong><em>粗斜体</em></strong> <strong><em>粗斜体</em></strong></p>\r\n<p>上标：X&lt;sub&gt;2&lt;/sub&gt;，下标：O&lt;sup&gt;2&lt;/sup&gt;</p>\r\n<p><strong>缩写(同HTML的abbr标签)</strong></p>\r\n<blockquote>\r\n<p>即更长的单词或短语的缩写形式，前提是开启识别HTML标签时，已默认开启</p>\r\n</blockquote>\r\n<p>The &lt;abbr title=&quot;Hyper Text Markup Language&quot;&gt;HTML&lt;/abbr&gt; specification is maintained by the &lt;abbr title=&quot;World Wide Web Consortium&quot;&gt;W3C&lt;/abbr&gt;.</p>\r\n<h3 id=\"h3--blockquotes\"><a name=\"引用 Blockquotes\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>引用 Blockquotes</h3><blockquote>\r\n<p>引用文本 Blockquotes</p>\r\n</blockquote>\r\n<p>引用的行内混合 Blockquotes</p>\r\n<blockquote>\r\n<p>引用：如果想要插入空白换行<code>即&lt;br /&gt;标签</code>，在插入处先键入两个以上的空格然后回车即可，<a href=\"http://localhost/\">普通链接</a>。</p>\r\n</blockquote>\r\n<h3 id=\"h3--links\"><a name=\"锚点与链接 Links\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>锚点与链接 Links</h3><p><a href=\"http://localhost/\">普通链接</a></p>\r\n<p><a href=\"http://localhost/\" title=\"普通链接带标题\">普通链接带标题</a></p>\r\n<p>直接链接：<a href=\"https://github.com\">https://github.com</a></p>\r\n<p><a href=\"http://www.this-anchor-link.com/\">锚点链接</a> </p>\r\n<p><a href=\"mailto:test.test@gmail.com\"\">mailto:test.test&#64;gmail.com</a></p>\r\n<p>GFM a-tail link <a href=\"https://github.com/pandao\" title=\"&#64;pandao\" class=\"at-link\">@pandao</a>  邮箱地址自动链接 <a href=\"mailto:test.test@gmail.com\">test.test@gmail.com</a>  <a href=\"mailto:www@vip.qq.com\">www@vip.qq.com</a></p>\r\n<blockquote>\r\n<p><a href=\"https://github.com/pandao\" title=\"&#64;pandao\" class=\"at-link\">@pandao</a></p>\r\n</blockquote>\r\n<h3 id=\"h3--codes\"><a name=\"多语言代码高亮 Codes\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>多语言代码高亮 Codes</h3><h4 id=\"h4--inline-code\"><a name=\"行内代码 Inline code\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>行内代码 Inline code</h4><p>执行命令：<code>npm install marked</code></p>\r\n<h4 id=\"h4-u7F29u8FDBu98CEu683C\"><a name=\"缩进风格\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>缩进风格</h4><p>即缩进四个空格，也做为实现类似 <code>&lt;pre&gt;</code> 预格式化文本 ( Preformatted Text ) 的功能。</p>\r\n<pre><code>&lt;?php\r\n    echo &quot;Hello world!&quot;;\r\n?&gt;\r\n</code></pre><p>预格式化文本：</p>\r\n<pre><code>| First Header  | Second Header |\r\n| ------------- | ------------- |\r\n| Content Cell  | Content Cell  |\r\n| Content Cell  | Content Cell  |\r\n</code></pre><h4 id=\"h4-js-\"><a name=\"JS代码\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>JS代码　</h4><pre><code class=\"lang-javascript\">function test() {\r\n    console.log(&quot;Hello world!&quot;);\r\n}\r\n\r\n(function(){\r\n    var box = function() {\r\n        return box.fn.init();\r\n    };\r\n\r\n    box.prototype = box.fn = {\r\n        init : function(){\r\n            console.log(&#39;box.init()&#39;);\r\n\r\n            return this;\r\n        },\r\n\r\n        add : function(str) {\r\n            alert(&quot;add&quot;, str);\r\n\r\n            return this;\r\n        },\r\n\r\n        remove : function(str) {\r\n            alert(&quot;remove&quot;, str);\r\n\r\n            return this;\r\n        }\r\n    };\r\n\r\n    box.fn.init.prototype = box.fn;\r\n\r\n    window.box =box;\r\n})();\r\n\r\nvar testBox = box();\r\ntestBox.add(&quot;jQuery&quot;).remove(&quot;jQuery&quot;);\r\n</code></pre>\r\n<h4 id=\"h4-html-html-codes\"><a name=\"HTML 代码 HTML codes\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>HTML 代码 HTML codes</h4><pre><code class=\"lang-html\">&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n    &lt;head&gt;\r\n        &lt;mate charest=&quot;utf-8&quot; /&gt;\r\n        &lt;meta name=&quot;keywords&quot; content=&quot;Editor.md, Markdown, Editor&quot; /&gt;\r\n        &lt;title&gt;Hello world!&lt;/title&gt;\r\n        &lt;style type=&quot;text/css&quot;&gt;\r\n            body{font-size:14px;color:#444;font-family: &quot;Microsoft Yahei&quot;, Tahoma, &quot;Hiragino Sans GB&quot;, Arial;background:#fff;}\r\n            ul{list-style: none;}\r\n            img{border:none;vertical-align: middle;}\r\n        &lt;/style&gt;\r\n    &lt;/head&gt;\r\n    &lt;body&gt;\r\n        &lt;h1 class=&quot;text-xxl&quot;&gt;Hello world!&lt;/h1&gt;\r\n        &lt;p class=&quot;text-green&quot;&gt;Plain text&lt;/p&gt;\r\n    &lt;/body&gt;\r\n&lt;/html&gt;\r\n</code></pre>\r\n<h3 id=\"h3--images\"><a name=\"图片 Images\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>图片 Images</h3><p>Image:</p>\r\n<p><img src=\"https://pandao.github.io/editor.md/examples/images/4.jpg\" alt=\"\"></p>\r\n<blockquote>\r\n<p>Follow your heart.</p>\r\n</blockquote>\r\n<p><img src=\"https://pandao.github.io/editor.md/examples/images/8.jpg\" alt=\"\"></p>\r\n<blockquote>\r\n<p>图为：厦门白城沙滩</p>\r\n</blockquote>\r\n<p>图片加链接 (Image + Link)：</p>\r\n<p><a href=\"https://pandao.github.io/editor.md/images/7.jpg\" title=\"李健首张专辑《似水流年》封面\"><img src=\"https://pandao.github.io/editor.md/examples/images/7.jpg\" alt=\"\"></a></p>\r\n<blockquote>\r\n<p>图为：李健首张专辑《似水流年》封面</p>\r\n</blockquote>\r\n<hr>\r\n<h3 id=\"h3--lists\"><a name=\"列表 Lists\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>列表 Lists</h3><h4 id=\"h4--unordered-lists-\"><a name=\"无序列表（减号）Unordered Lists (-)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>无序列表（减号）Unordered Lists (-)</h4><ul>\r\n<li>列表一</li><li>列表二</li><li>列表三</li></ul>\r\n<h4 id=\"h4--unordered-lists-\"><a name=\"无序列表（星号）Unordered Lists (*)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>无序列表（星号）Unordered Lists (*)</h4><ul>\r\n<li>列表一</li><li>列表二</li><li>列表三</li></ul>\r\n<h4 id=\"h4--unordered-lists-\"><a name=\"无序列表（加号和嵌套）Unordered Lists (+)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>无序列表（加号和嵌套）Unordered Lists (+)</h4><ul>\r\n<li>列表一</li><li>列表二<ul>\r\n<li>列表二-1</li><li>列表二-2</li><li>列表二-3</li></ul>\r\n</li><li>列表三<ul>\r\n<li>列表一</li><li>列表二</li><li>列表三</li></ul>\r\n</li></ul>\r\n<h4 id=\"h4--ordered-lists-\"><a name=\"有序列表 Ordered Lists (-)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>有序列表 Ordered Lists (-)</h4><ol>\r\n<li>第一行</li><li>第二行</li><li>第三行</li></ol>\r\n<h4 id=\"h4-gfm-task-list\"><a name=\"GFM task list\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>GFM task list</h4><ul>\r\n<li>[x] GFM task list 1</li><li>[x] GFM task list 2</li><li>[ ] GFM task list 3<ul>\r\n<li>[ ] GFM task list 3-1</li><li>[ ] GFM task list 3-2</li><li>[ ] GFM task list 3-3</li></ul>\r\n</li><li>[ ] GFM task list 4<ul>\r\n<li>[ ] GFM task list 4-1</li><li>[ ] GFM task list 4-2</li></ul>\r\n</li></ul>\r\n<hr>\r\n<h3 id=\"h3--tables\"><a name=\"绘制表格 Tables\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>绘制表格 Tables</h3><table>\r\n<thead>\r\n<tr>\r\n<th>项目</th>\r\n<th style=\"text-align:right\">价格</th>\r\n<th style=\"text-align:center\">数量</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>计算机</td>\r\n<td style=\"text-align:right\">$1600</td>\r\n<td style=\"text-align:center\">5</td>\r\n</tr>\r\n<tr>\r\n<td>手机</td>\r\n<td style=\"text-align:right\">$12</td>\r\n<td style=\"text-align:center\">12</td>\r\n</tr>\r\n<tr>\r\n<td>管线</td>\r\n<td style=\"text-align:right\">$1</td>\r\n<td style=\"text-align:center\">234</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>First Header</th>\r\n<th>Second Header</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Content Cell</td>\r\n<td>Content Cell</td>\r\n</tr>\r\n<tr>\r\n<td>Content Cell</td>\r\n<td>Content Cell </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>First Header</th>\r\n<th>Second Header</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Content Cell</td>\r\n<td>Content Cell</td>\r\n</tr>\r\n<tr>\r\n<td>Content Cell</td>\r\n<td>Content Cell</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>Function name</th>\r\n<th>Description</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><code>help()</code></td>\r\n<td>Display the help window.</td>\r\n</tr>\r\n<tr>\r\n<td><code>destroy()</code></td>\r\n<td><strong>Destroy your computer!</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th style=\"text-align:left\">Left-Aligned</th>\r\n<th style=\"text-align:center\">Center Aligned</th>\r\n<th style=\"text-align:right\">Right Aligned</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align:left\">col 3 is</td>\r\n<td style=\"text-align:center\">some wordy text</td>\r\n<td style=\"text-align:right\">$1600</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align:left\">col 2 is</td>\r\n<td style=\"text-align:center\">centered</td>\r\n<td style=\"text-align:right\">$12</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align:left\">zebra stripes</td>\r\n<td style=\"text-align:center\">are neat</td>\r\n<td style=\"text-align:right\">$1</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>Item</th>\r\n<th style=\"text-align:right\">Value</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Computer</td>\r\n<td style=\"text-align:right\">$1600</td>\r\n</tr>\r\n<tr>\r\n<td>Phone</td>\r\n<td style=\"text-align:right\">$12</td>\r\n</tr>\r\n<tr>\r\n<td>Pipe</td>\r\n<td style=\"text-align:right\">$1</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr>\r\n<h4 id=\"h4--html-entities-codes\"><a name=\"特殊符号 HTML Entities Codes\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>特殊符号 HTML Entities Codes</h4><p>&copy; &amp;  &uml; &trade; &iexcl; &pound;<br>&amp; &lt; &gt; &yen; &euro; &reg; &plusmn; &para; &sect; &brvbar; &macr; &laquo; &middot; </p>\r\n<p>X&sup2; Y&sup3; &frac34; &frac14;  &times;  &divide;   &raquo;</p>\r\n<p>18&ordm;C  &quot;  &apos;</p>\r\n<hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><h3 id=\"h3-emoji-smiley-\"><a name=\"Emoji表情 :smiley:\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Emoji表情 <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /></h3><blockquote>\r\n<p>Blockquotes <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/star.png\" class=\"emoji\" title=\"&#58;star&#58;\" alt=\"&#58;star&#58;\" /></p>\r\n</blockquote>\r\n<h4 id=\"h4-gfm-task-lists-amp-emoji-amp-fontawesome-icon-emoji-amp-editormd-logo-emoji-editormd-logo-5x-\"><a name=\"GFM task lists &amp; Emoji &amp; fontAwesome icon emoji &amp; editormd logo emoji :editormd-logo-5x:\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>GFM task lists &amp; Emoji &amp; fontAwesome icon emoji &amp; editormd logo emoji <i class=\"editormd-logo-5x\" title=\"Editor.md logo (editormd-logo-5x)\"></i></h4><ul>\r\n<li>[x] <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /> <a href=\"https://github.com/mentions\" title=\"&#64;mentions\" class=\"at-link\">@mentions</a>, <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /> #refs, <a href=\"\">links</a>, <strong>formatting</strong>, and &lt;del&gt;tags&lt;/del&gt; supported <i class=\"editormd-logo\" title=\"Editor.md logo (editormd-logo)\"></i>;</li><li>[x] list syntax required (any unordered or ordered list supported) <i class=\"editormd-logo-3x\" title=\"Editor.md logo (editormd-logo-3x)\"></i>;</li><li>[x] [ ] <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /> this is a complete item <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" />;</li><li>[ ] []this is an incomplete item <a href=\"#\">test link</a> <i class=\"fa fa-star fa-emoji\" title=\"star\"></i> <a href=\"https://github.com/pandao\" title=\"&#64;pandao\" class=\"at-link\">@pandao</a>; </li><li>[ ] [ ]this is an incomplete item <i class=\"fa fa-star fa-emoji\" title=\"star\"></i> <i class=\"fa fa-gear fa-emoji\" title=\"gear\"></i>;<ul>\r\n<li>[ ] <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /> this is an incomplete item <a href=\"#\">test link</a> <i class=\"fa fa-star fa-emoji\" title=\"star\"></i> <i class=\"fa fa-gear fa-emoji\" title=\"gear\"></i>;</li><li>[ ] <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /> this is  <i class=\"fa fa-star fa-emoji\" title=\"star\"></i> <i class=\"fa fa-gear fa-emoji\" title=\"gear\"></i> an incomplete item <a href=\"#\">test link</a>;</li></ul>\r\n</li></ul>\r\n<h4 id=\"h4--escape\"><a name=\"反斜杠 Escape\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>反斜杠 Escape</h4><p>*literal asterisks*</p>\r\n<hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><h3 id=\"h3--tex-katex-\"><a name=\"科学公式 TeX(KaTeX)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>科学公式 TeX(KaTeX)</h3><p class=\"editormd-tex\">E=mc^2</p>\r\n<p>行内的公式<span class=\"editormd-tex\">E=mc^2</span>行内的公式，行内的<span class=\"editormd-tex\">E=mc^2</span>公式。</p>\r\n<p class=\"editormd-tex\">x &gt; y</p>\r\n<p class=\"editormd-tex\">(\\sqrt{3x-1}+(1+x)^2)</p>\r\n<p class=\"editormd-tex\">\\sin(\\alpha)^{\\theta}=\\sum_{i=0}^{n}(x^i + \\cos(f))</p>\r\n<p>多行公式：</p>\r\n<p class=\"editormd-tex\">\\displaystyle\r\n\\left( \\sum\\_{k=1}^n a\\_k b\\_k \\right)^2\r\n\\leq\r\n\\left( \\sum\\_{k=1}^n a\\_k^2 \\right)\r\n\\left( \\sum\\_{k=1}^n b\\_k^2 \\right)</p><p class=\"editormd-tex\">\\displaystyle \r\n    \\frac{1}{\r\n        \\Bigl(\\sqrt{\\phi \\sqrt{5}}-\\phi\\Bigr) e^{\r\n        \\frac25 \\pi}} = 1+\\frac{e^{-2\\pi}} {1+\\frac{e^{-4\\pi}} {\r\n        1+\\frac{e^{-6\\pi}}\r\n        {1+\\frac{e^{-8\\pi}}\r\n         {1+\\cdots} }\r\n        } \r\n    }</p><p class=\"editormd-tex\">f(x) = \\int_{-\\infty}^\\infty\r\n    \\hat f(\\xi)\\,e^{2 \\pi i \\xi x}\r\n    \\,d\\xi</p><h3 id=\"h3--page-break\"><a name=\"分页符 Page break\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>分页符 Page break</h3><blockquote>\r\n<p>Print Test: Ctrl + P</p>\r\n</blockquote>\r\n<hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><h3 id=\"h3--flowchart\"><a name=\"绘制流程图 Flowchart\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>绘制流程图 Flowchart</h3><div class=\"flowchart\">st=>start: 用户登陆\r\nop=>operation: 登陆操作\r\ncond=>condition: 登陆成功 Yes or No?\r\ne=>end: 进入后台\r\n\r\nst->op->cond\r\ncond(yes)->e\r\ncond(no)->op</div><hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><h3 id=\"h3--sequence-diagram\"><a name=\"绘制序列图 Sequence Diagram\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>绘制序列图 Sequence Diagram</h3><div class=\"sequence-diagram\">Andrew->China: Says Hello \r\nNote right of China: China thinks\\nabout it \r\nChina-->Andrew: How are you? \r\nAndrew->>China: I am good thanks!</div><h3 id=\"h3-end\"><a name=\"End\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>End</h3>', '0', '1459485387', '1459485387');
INSERT INTO `cms_article` VALUES ('11', '39', '完整功能测试', '测试', '0', '<h1 id=\"h1-editor-md\"><a name=\"Editor.md\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Editor.md</h1><p><img src=\"https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png\" alt=\"\"></p>\r\n<p><img src=\"https://img.shields.io/github/stars/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/github/forks/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/github/tag/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/github/release/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/github/issues/pandao/editor.md.svg\" alt=\"\"> <img src=\"https://img.shields.io/bower/v/editor.md.svg\" alt=\"\"></p>\r\n<p><strong>目录 (Table of Contents)</strong></p>\r\n<p>[TOCM]</p>\r\n<div class=\"markdown-toc editormd-markdown-toc\">[TOC]</div><h1 id=\"h1-heading-1\"><a name=\"Heading 1\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 1</h1><h2 id=\"h2-heading-2\"><a name=\"Heading 2\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 2</h2><h3 id=\"h3-heading-3\"><a name=\"Heading 3\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 3</h3><h4 id=\"h4-heading-4\"><a name=\"Heading 4\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 4</h4><h5 id=\"h5-heading-5\"><a name=\"Heading 5\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 5</h5><h6 id=\"h6-heading-6\"><a name=\"Heading 6\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 6</h6><h1 id=\"h1-heading-1-link-heading-link\"><a name=\"Heading 1 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 1 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h1><h2 id=\"h2-heading-2-link-heading-link\"><a name=\"Heading 2 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 2 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h2><h3 id=\"h3-heading-3-link-heading-link\"><a name=\"Heading 3 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 3 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h3><h4 id=\"h4-heading-4-link-heading-link-heading-link-heading-link\"><a name=\"Heading 4 link   Heading link  Heading link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 4 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a> Heading link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h4><h5 id=\"h5-heading-5-link-heading-link\"><a name=\"Heading 5 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 5 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h5><h6 id=\"h6-heading-6-link-heading-link\"><a name=\"Heading 6 link   Heading link\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Heading 6 link <a href=\"https://github.com/pandao/editor.md\" title=\"Heading link\">Heading link</a></h6><h4 id=\"h4--heading-underline-\"><a name=\"标题（用底线的形式）Heading (underline)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>标题（用底线的形式）Heading (underline)</h4><h1 id=\"h1-this-is-an-h1\"><a name=\"This is an H1\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>This is an H1</h1><h2 id=\"h2-this-is-an-h2\"><a name=\"This is an H2\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>This is an H2</h2><h3 id=\"h3-u5B57u7B26u6548u679Cu548Cu6A2Au7EBFu7B49\"><a name=\"字符效果和横线等\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>字符效果和横线等</h3><hr>\r\n<p><del>删除线</del> <s>删除线（开启识别HTML标签时）</s><br><em>斜体字</em>      <em>斜体字</em><br><strong>粗体</strong>  <strong>粗体</strong><br><strong><em>粗斜体</em></strong> <strong><em>粗斜体</em></strong></p>\r\n<p>上标：X<sub>2</sub>，下标：O<sup>2</sup></p>\r\n<p><strong>缩写(同HTML的abbr标签)</strong></p>\r\n<blockquote>\r\n<p>即更长的单词或短语的缩写形式，前提是开启识别HTML标签时，已默认开启</p>\r\n</blockquote>\r\n<p>The <abbr title=\"Hyper Text Markup Language\">HTML</abbr> specification is maintained by the <abbr title=\"World Wide Web Consortium\">W3C</abbr>.</p>\r\n<h3 id=\"h3--blockquotes\"><a name=\"引用 Blockquotes\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>引用 Blockquotes</h3><blockquote>\r\n<p>引用文本 Blockquotes</p>\r\n</blockquote>\r\n<p>引用的行内混合 Blockquotes</p>\r\n<blockquote>\r\n<p>引用：如果想要插入空白换行<code>即&lt;br /&gt;标签</code>，在插入处先键入两个以上的空格然后回车即可，<a href=\"http://localhost/\">普通链接</a>。</p>\r\n</blockquote>\r\n<h3 id=\"h3--links\"><a name=\"锚点与链接 Links\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>锚点与链接 Links</h3><p><a href=\"http://localhost/\">普通链接</a></p>\r\n<p><a href=\"http://localhost/\" title=\"普通链接带标题\">普通链接带标题</a></p>\r\n<p>直接链接：<a href=\"https://github.com\">https://github.com</a></p>\r\n<p><a href=\"http://www.this-anchor-link.com/\">锚点链接</a> </p>\r\n<p><a href=\"mailto:test.test@gmail.com\"\">mailto:test.test&#64;gmail.com</a></p>\r\n<p>GFM a-tail link <a href=\"https://github.com/pandao\" title=\"&#64;pandao\" class=\"at-link\">@pandao</a>  邮箱地址自动链接 <a href=\"mailto:test.test@gmail.com\">test.test@gmail.com</a>  <a href=\"mailto:www@vip.qq.com\">www@vip.qq.com</a></p>\r\n<blockquote>\r\n<p><a href=\"https://github.com/pandao\" title=\"&#64;pandao\" class=\"at-link\">@pandao</a></p>\r\n</blockquote>\r\n<h3 id=\"h3--codes\"><a name=\"多语言代码高亮 Codes\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>多语言代码高亮 Codes</h3><h4 id=\"h4--inline-code\"><a name=\"行内代码 Inline code\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>行内代码 Inline code</h4><p>执行命令：<code>npm install marked</code></p>\r\n<h4 id=\"h4-u7F29u8FDBu98CEu683C\"><a name=\"缩进风格\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>缩进风格</h4><p>即缩进四个空格，也做为实现类似 <code>&lt;pre&gt;</code> 预格式化文本 ( Preformatted Text ) 的功能。</p>\r\n<pre><code>&lt;?php\r\n    echo &quot;Hello world!&quot;;\r\n?&gt;\r\n</code></pre><p>预格式化文本：</p>\r\n<pre><code>| First Header  | Second Header |\r\n| ------------- | ------------- |\r\n| Content Cell  | Content Cell  |\r\n| Content Cell  | Content Cell  |\r\n</code></pre><h4 id=\"h4-js-\"><a name=\"JS代码\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>JS代码　</h4><pre><code class=\"lang-javascript\">function test() {\r\n    console.log(&quot;Hello world!&quot;);\r\n}\r\n\r\n(function(){\r\n    var box = function() {\r\n        return box.fn.init();\r\n    };\r\n\r\n    box.prototype = box.fn = {\r\n        init : function(){\r\n            console.log(&#39;box.init()&#39;);\r\n\r\n            return this;\r\n        },\r\n\r\n        add : function(str) {\r\n            alert(&quot;add&quot;, str);\r\n\r\n            return this;\r\n        },\r\n\r\n        remove : function(str) {\r\n            alert(&quot;remove&quot;, str);\r\n\r\n            return this;\r\n        }\r\n    };\r\n\r\n    box.fn.init.prototype = box.fn;\r\n\r\n    window.box =box;\r\n})();\r\n\r\nvar testBox = box();\r\ntestBox.add(&quot;jQuery&quot;).remove(&quot;jQuery&quot;);\r\n</code></pre>\r\n<h4 id=\"h4-html-html-codes\"><a name=\"HTML 代码 HTML codes\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>HTML 代码 HTML codes</h4><pre><code class=\"lang-html\">&lt;!DOCTYPE html&gt;\r\n&lt;html&gt;\r\n    &lt;head&gt;\r\n        &lt;mate charest=&quot;utf-8&quot; /&gt;\r\n        &lt;meta name=&quot;keywords&quot; content=&quot;Editor.md, Markdown, Editor&quot; /&gt;\r\n        &lt;title&gt;Hello world!&lt;/title&gt;\r\n        &lt;style type=&quot;text/css&quot;&gt;\r\n            body{font-size:14px;color:#444;font-family: &quot;Microsoft Yahei&quot;, Tahoma, &quot;Hiragino Sans GB&quot;, Arial;background:#fff;}\r\n            ul{list-style: none;}\r\n            img{border:none;vertical-align: middle;}\r\n        &lt;/style&gt;\r\n    &lt;/head&gt;\r\n    &lt;body&gt;\r\n        &lt;h1 class=&quot;text-xxl&quot;&gt;Hello world!&lt;/h1&gt;\r\n        &lt;p class=&quot;text-green&quot;&gt;Plain text&lt;/p&gt;\r\n    &lt;/body&gt;\r\n&lt;/html&gt;\r\n</code></pre>\r\n<h3 id=\"h3--images\"><a name=\"图片 Images\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>图片 Images</h3><p>Image:</p>\r\n<p><img src=\"https://pandao.github.io/editor.md/examples/images/4.jpg\" alt=\"\"></p>\r\n<blockquote>\r\n<p>Follow your heart.</p>\r\n</blockquote>\r\n<p><img src=\"https://pandao.github.io/editor.md/examples/images/8.jpg\" alt=\"\"></p>\r\n<blockquote>\r\n<p>图为：厦门白城沙滩</p>\r\n</blockquote>\r\n<p>图片加链接 (Image + Link)：</p>\r\n<p><a href=\"https://pandao.github.io/editor.md/images/7.jpg\" title=\"李健首张专辑《似水流年》封面\"><img src=\"https://pandao.github.io/editor.md/examples/images/7.jpg\" alt=\"\"></a></p>\r\n<blockquote>\r\n<p>图为：李健首张专辑《似水流年》封面</p>\r\n</blockquote>\r\n<hr>\r\n<h3 id=\"h3--lists\"><a name=\"列表 Lists\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>列表 Lists</h3><h4 id=\"h4--unordered-lists-\"><a name=\"无序列表（减号）Unordered Lists (-)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>无序列表（减号）Unordered Lists (-)</h4><ul>\r\n<li>列表一</li><li>列表二</li><li>列表三</li></ul>\r\n<h4 id=\"h4--unordered-lists-\"><a name=\"无序列表（星号）Unordered Lists (*)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>无序列表（星号）Unordered Lists (*)</h4><ul>\r\n<li>列表一</li><li>列表二</li><li>列表三</li></ul>\r\n<h4 id=\"h4--unordered-lists-\"><a name=\"无序列表（加号和嵌套）Unordered Lists (+)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>无序列表（加号和嵌套）Unordered Lists (+)</h4><ul>\r\n<li>列表一</li><li>列表二<ul>\r\n<li>列表二-1</li><li>列表二-2</li><li>列表二-3</li></ul>\r\n</li><li>列表三<ul>\r\n<li>列表一</li><li>列表二</li><li>列表三</li></ul>\r\n</li></ul>\r\n<h4 id=\"h4--ordered-lists-\"><a name=\"有序列表 Ordered Lists (-)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>有序列表 Ordered Lists (-)</h4><ol>\r\n<li>第一行</li><li>第二行</li><li>第三行</li></ol>\r\n<h4 id=\"h4-gfm-task-list\"><a name=\"GFM task list\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>GFM task list</h4><ul>\r\n<li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" checked disabled /> GFM task list 1</li><li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" checked disabled /> GFM task list 2</li><li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" /> GFM task list 3<ul>\r\n<li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" /> GFM task list 3-1</li><li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" /> GFM task list 3-2</li><li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" /> GFM task list 3-3</li></ul>\r\n</li><li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" /> GFM task list 4<ul>\r\n<li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" /> GFM task list 4-1</li><li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" /> GFM task list 4-2</li></ul>\r\n</li></ul>\r\n<hr>\r\n<h3 id=\"h3--tables\"><a name=\"绘制表格 Tables\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>绘制表格 Tables</h3><table>\r\n<thead>\r\n<tr>\r\n<th>项目</th>\r\n<th style=\"text-align:right\">价格</th>\r\n<th style=\"text-align:center\">数量</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>计算机</td>\r\n<td style=\"text-align:right\">$1600</td>\r\n<td style=\"text-align:center\">5</td>\r\n</tr>\r\n<tr>\r\n<td>手机</td>\r\n<td style=\"text-align:right\">$12</td>\r\n<td style=\"text-align:center\">12</td>\r\n</tr>\r\n<tr>\r\n<td>管线</td>\r\n<td style=\"text-align:right\">$1</td>\r\n<td style=\"text-align:center\">234</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>First Header</th>\r\n<th>Second Header</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Content Cell</td>\r\n<td>Content Cell</td>\r\n</tr>\r\n<tr>\r\n<td>Content Cell</td>\r\n<td>Content Cell </td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>First Header</th>\r\n<th>Second Header</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Content Cell</td>\r\n<td>Content Cell</td>\r\n</tr>\r\n<tr>\r\n<td>Content Cell</td>\r\n<td>Content Cell</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>Function name</th>\r\n<th>Description</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td><code>help()</code></td>\r\n<td>Display the help window.</td>\r\n</tr>\r\n<tr>\r\n<td><code>destroy()</code></td>\r\n<td><strong>Destroy your computer!</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th style=\"text-align:left\">Left-Aligned</th>\r\n<th style=\"text-align:center\">Center Aligned</th>\r\n<th style=\"text-align:right\">Right Aligned</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align:left\">col 3 is</td>\r\n<td style=\"text-align:center\">some wordy text</td>\r\n<td style=\"text-align:right\">$1600</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align:left\">col 2 is</td>\r\n<td style=\"text-align:center\">centered</td>\r\n<td style=\"text-align:right\">$12</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align:left\">zebra stripes</td>\r\n<td style=\"text-align:center\">are neat</td>\r\n<td style=\"text-align:right\">$1</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table>\r\n<thead>\r\n<tr>\r\n<th>Item</th>\r\n<th style=\"text-align:right\">Value</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Computer</td>\r\n<td style=\"text-align:right\">$1600</td>\r\n</tr>\r\n<tr>\r\n<td>Phone</td>\r\n<td style=\"text-align:right\">$12</td>\r\n</tr>\r\n<tr>\r\n<td>Pipe</td>\r\n<td style=\"text-align:right\">$1</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<hr>\r\n<h4 id=\"h4--html-entities-codes\"><a name=\"特殊符号 HTML Entities Codes\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>特殊符号 HTML Entities Codes</h4><p>&copy; &amp;  &uml; &trade; &iexcl; &pound;<br>&amp; &lt; &gt; &yen; &euro; &reg; &plusmn; &para; &sect; &brvbar; &macr; &laquo; &middot; </p>\r\n<p>X&sup2; Y&sup3; &frac34; &frac14;  &times;  &divide;   &raquo;</p>\r\n<p>18&ordm;C  &quot;  &apos;</p>\r\n<hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><h3 id=\"h3-emoji-smiley-\"><a name=\"Emoji表情 :smiley:\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Emoji表情 <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /></h3><blockquote>\r\n<p>Blockquotes <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/star.png\" class=\"emoji\" title=\"&#58;star&#58;\" alt=\"&#58;star&#58;\" /></p>\r\n</blockquote>\r\n<h4 id=\"h4-gfm-task-lists-amp-emoji-amp-fontawesome-icon-emoji-amp-editormd-logo-emoji-editormd-logo-5x-\"><a name=\"GFM task lists &amp; Emoji &amp; fontAwesome icon emoji &amp; editormd logo emoji :editormd-logo-5x:\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>GFM task lists &amp; Emoji &amp; fontAwesome icon emoji &amp; editormd logo emoji <i class=\"editormd-logo-5x\" title=\"Editor.md logo (editormd-logo-5x)\"></i></h4><ul>\r\n<li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" checked disabled /> <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /> <a href=\"https://github.com/mentions\" title=\"&#64;mentions\" class=\"at-link\">@mentions</a>, <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /> #refs, <a href=\"\">links</a>, <strong>formatting</strong>, and <del>tags</del> supported <i class=\"editormd-logo\" title=\"Editor.md logo (editormd-logo)\"></i>;</li><li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" checked disabled /> list syntax required (any unordered or ordered list supported) <i class=\"editormd-logo-3x\" title=\"Editor.md logo (editormd-logo-3x)\"></i>;</li><li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" checked disabled /> [ ] <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /> this is a complete item <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" />;</li><li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" /> []this is an incomplete item <a href=\"#\">test link</a> <i class=\"fa fa-star fa-emoji\" title=\"star\"></i> <a href=\"https://github.com/pandao\" title=\"&#64;pandao\" class=\"at-link\">@pandao</a>; </li><li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" /> [ ]this is an incomplete item <i class=\"fa fa-star fa-emoji\" title=\"star\"></i> <i class=\"fa fa-gear fa-emoji\" title=\"gear\"></i>;<ul>\r\n<li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" /> <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /> this is an incomplete item <a href=\"#\">test link</a> <i class=\"fa fa-star fa-emoji\" title=\"star\"></i> <i class=\"fa fa-gear fa-emoji\" title=\"gear\"></i>;</li><li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" /> <img src=\"http://www.emoji-cheat-sheet.com/graphics/emojis/smiley.png\" class=\"emoji\" title=\"&#58;smiley&#58;\" alt=\"&#58;smiley&#58;\" /> this is  <i class=\"fa fa-star fa-emoji\" title=\"star\"></i> <i class=\"fa fa-gear fa-emoji\" title=\"gear\"></i> an incomplete item <a href=\"#\">test link</a>;</li></ul>\r\n</li></ul>\r\n<h4 id=\"h4--escape\"><a name=\"反斜杠 Escape\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>反斜杠 Escape</h4><p>*literal asterisks*</p>\r\n<hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><h3 id=\"h3--tex-katex-\"><a name=\"科学公式 TeX(KaTeX)\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>科学公式 TeX(KaTeX)</h3><p class=\"editormd-tex\">E=mc^2</p>\r\n<p>行内的公式<span class=\"editormd-tex\">E=mc^2</span>行内的公式，行内的<span class=\"editormd-tex\">E=mc^2</span>公式。</p>\r\n<p class=\"editormd-tex\">x &gt; y</p>\r\n<p class=\"editormd-tex\">(\\sqrt{3x-1}+(1+x)^2)</p>\r\n<p class=\"editormd-tex\">\\sin(\\alpha)^{\\theta}=\\sum_{i=0}^{n}(x^i + \\cos(f))</p>\r\n<p>多行公式：</p>\r\n<p class=\"editormd-tex\">\\displaystyle\r\n\\left( \\sum\\_{k=1}^n a\\_k b\\_k \\right)^2\r\n\\leq\r\n\\left( \\sum\\_{k=1}^n a\\_k^2 \\right)\r\n\\left( \\sum\\_{k=1}^n b\\_k^2 \\right)</p><p class=\"editormd-tex\">\\displaystyle \r\n    \\frac{1}{\r\n        \\Bigl(\\sqrt{\\phi \\sqrt{5}}-\\phi\\Bigr) e^{\r\n        \\frac25 \\pi}} = 1+\\frac{e^{-2\\pi}} {1+\\frac{e^{-4\\pi}} {\r\n        1+\\frac{e^{-6\\pi}}\r\n        {1+\\frac{e^{-8\\pi}}\r\n         {1+\\cdots} }\r\n        } \r\n    }</p><p class=\"editormd-tex\">f(x) = \\int_{-\\infty}^\\infty\r\n    \\hat f(\\xi)\\,e^{2 \\pi i \\xi x}\r\n    \\,d\\xi</p><h3 id=\"h3--page-break\"><a name=\"分页符 Page break\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>分页符 Page break</h3><blockquote>\r\n<p>Print Test: Ctrl + P</p>\r\n</blockquote>\r\n<hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><h3 id=\"h3--flowchart\"><a name=\"绘制流程图 Flowchart\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>绘制流程图 Flowchart</h3><div class=\"flowchart\">st=>start: 用户登陆\r\nop=>operation: 登陆操作\r\ncond=>condition: 登陆成功 Yes or No?\r\ne=>end: 进入后台\r\n\r\nst->op->cond\r\ncond(yes)->e\r\ncond(no)->op</div><hr style=\"page-break-after:always;\" class=\"page-break editormd-page-break\" /><h3 id=\"h3--sequence-diagram\"><a name=\"绘制序列图 Sequence Diagram\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>绘制序列图 Sequence Diagram</h3><div class=\"sequence-diagram\">Andrew->China: Says Hello \r\nNote right of China: China thinks\\nabout it \r\nChina-->Andrew: How are you? \r\nAndrew->>China: I am good thanks!</div><h3 id=\"h3-end\"><a name=\"End\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>End</h3>', '0', '1459486426', '1459486426');
INSERT INTO `cms_article` VALUES ('12', '39', '测试', '测试', '0', '<p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\">　　习近平会见奥巴马 就南海、朝核等问题再次表态</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\">　　2016-04-01 央视新闻</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\">　　当地时间3月31日，国家主席习近平在华盛顿会议中心会见美国总统奥巴马，就中美关系发展及共同关心的国际和地区问题深入交换意见。在朝核问题方面，习近平表示各方不得采取任何可能影响其他国家安全利益和地区战略平衡的举措。至于南海问题，习近平称中方不会接受任何以航行自由为借口损害中国国家主权和安全利益的行为。</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\"><strong>　　经济问题</strong></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\"><strong>　　各国都不应该通过货币贬值刺激出口</strong></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\">　　对于当前的经济形势，习近平指出，在当前世界经济增长乏力、国际金融市场动荡的大背景下，各国都不应采取货币竞争性贬值来刺激出口。中美应加强宏观经济政策协调，共同推动世界经济实现强劲、可持续、平衡增长。中方愿同美方共同努力，争取早日达成一个互利双赢的中美双边投资协定。希望美方继续支持中方举办二十国集团杭州峰会，推动峰会取得积极成果，为世界经济增长提供更强劲动力。</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\">　　奥巴马则表示，美方支持中国经济转型、包括供给侧改革的努力，希望同中方加强宏观经济政策协调。美方支持中方成功主办二十国集团杭州峰会，共同向国际社会发出推动全球经济持续增长的积极信息。奥巴马也重申，美方欢迎一个和平、稳定、成功的中国崛起，中国的社会政治稳定、经济成功不仅符合中国利益，也符合美国利益。</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\"><strong>　　朝核问题</strong></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\"><strong>　　不得采取损害他国安全利益的举措</strong></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\">　　对于当下关注度很高的朝鲜核问题，习近平强调，中方始终坚持朝鲜半岛无核化，坚持维护半岛和平稳定，坚持通过对话谈判解决有关问题。我们主张，各方都应完整、严格执行安理会涉朝决议，避免采取任何可能加剧局势紧张的言行，不得采取任何可能影响其他国家安全利益和地区战略平衡的举措。</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\">　　另外，在会见韩国总统朴槿惠时，习近平同样提到朝核问题，他表示中方敦促各方避免采取任何可能加剧局势紧张的言行，不得损害本地区国家的安全利益和战略平衡。对话协商是解决问题的唯一正确方向，中方愿作出建设性努力，推动在六方会谈框架下重启对话。</p><p><ins class=\"sinaads sinaads-done\" id=\"Sinads49447\" data-ad-pdps=\"PDPS000000044086\" data-ad-status=\"done\" data-ad-offset-left=\"0\" data-ad-offset-top=\"0\" style=\"display: block; overflow: hidden; text-decoration: none;\"><ins style=\"text-decoration: none; margin: 0px auto; width: 300px; display: block; position: relative;\"><iframe width=\"300px\" height=\"250px\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" vspace=\"0\" hspace=\"0\" allowtransparency=\"true\" scrolling=\"no\" src=\"http://x.jd.com/exsites?spread_type=2&ad_ids=1884:5&location_info=0&callback=getjjsku_callback\" name=\"clickTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fclick%3Ftype%3D3%26t%3DMjAxNi0wNC0wMSAxNDoxMDo1OQkxMjQuMTI3LjE1Mi4xNDUJMS4yMDIuMC44Ml8xNDU4ODA0ODU5LjY4ODA5NQlodHRwOi8vbmV3cy5zaW5hLmNvbS5jbi9jL25kLzIwMTYtMDQtMDEvZG9jLWlmeHF4Y25yNTE1MzAyMC5zaHRtbAlQRFBTMDAwMDAwMDQ0MDg2CWMwNDdhYzU0LTJkYjQtNDgyZS04N2FhLThmOGY2YWQ0MDFmZQk1OTEyNEUxRUNENUQJNTkxMjRFMUVDRDVECV92X3pvbmU6MzAyMDAwLDMwMjAwMHx1c2VyX2dlbmRlcjo1MDF8dXNlcl9ncm91cDo5MDgsOTA3LDkwOSw5MDMsOTA2LDkxMCw5MDEsOTEzfHZfem9uZTozMDIwMDAsMzAyMDAwfHVzZXJfdGFnOjIxMDYxLDIxMjcwLDIwOTU2LDIwMTA3LDIwOTUzfHBhZ2VFbnRyeTpmYW5ndGFpfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwNXx2X2lzcDoxMzAwfHdhcF9vczo3MDJ8dXNlcl9hZ2U6NjAzLDYwMiw2MDR8cG9zOlBEUFMwMDAwMDAwNDQwODZ8dmVyc2lvbjpnbF9iMV8xCQkzMDIwMDB8MzAyMDAwCTU2MEFERTdFMERDMwlMWTE1MTIwOTY1CVBEUFMwMDAwMDAwNDQwODYJNTYwQURFN0UwREMzX3BvcnRhbAlBRQktCTgJLQktCS0JLQktCS0JLQktCTIJMTQJc3RyYXRlZ3lfdGhldGEJMAk2CS0%253D&amp;viewTAG=http%3A%2F%2Fsax.sina.com.cn%2Fmfp%2Fview%3Ftype%3D3%26t%3DMjAxNi0wNC0wMSAxNDoxMDo1OQkxMjQuMTI3LjE1Mi4xNDUJMS4yMDIuMC44Ml8xNDU4ODA0ODU5LjY4ODA5NQlodHRwOi8vbmV3cy5zaW5hLmNvbS5jbi9jL25kLzIwMTYtMDQtMDEvZG9jLWlmeHF4Y25yNTE1MzAyMC5zaHRtbAlQRFBTMDAwMDAwMDQ0MDg2CWMwNDdhYzU0LTJkYjQtNDgyZS04N2FhLThmOGY2YWQ0MDFmZQk1OTEyNEUxRUNENUQJNTkxMjRFMUVDRDVECV92X3pvbmU6MzAyMDAwLDMwMjAwMHx1c2VyX2dlbmRlcjo1MDF8dXNlcl9ncm91cDo5MDgsOTA3LDkwOSw5MDMsOTA2LDkxMCw5MDEsOTEzfHZfem9uZTozMDIwMDAsMzAyMDAwfHVzZXJfdGFnOjIxMDYxLDIxMjcwLDIwOTU2LDIwMTA3LDIwOTUzfHBhZ2VFbnRyeTpmYW5ndGFpfG1vYmlsZV9icmFuZDoxMjA5fG1vYmlsZV9icm93c2VyOjgwNXx2X2lzcDoxMzAwfHdhcF9vczo3MDJ8dXNlcl9hZ2U6NjAzLDYwMiw2MDR8cG9zOlBEUFMwMDAwMDAwNDQwODZ8dmVyc2lvbjpnbF9iMV8xCQkzMDIwMDB8MzAyMDAwCTU2MEFERTdFMERDMwlMWTE1MTIwOTY1CVBEUFMwMDAwMDAwNDQwODYJNTYwQURFN0UwREMzX3BvcnRhbAlBRQktCTgJLQktCS0JLQktCS0JLQktCTIJMTQJc3RyYXRlZ3lfdGhldGEJMAk2CS0%253D%26userid%3D1.202.0.82_1458804859.688095%26viewlog%3Dfalse\"></iframe></ins></ins></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\">　　需要指出的是，美国和韩国已经启动在韩国部署“萨德”系统的谈判，中方对此表示反对，因为在韩国部署这一系统损害中国的安全利益和地区战略平衡。俄罗斯对于美韩此举也持反对态度。</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\"><strong>　　南海问题</strong></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\"><strong>　　不接受以航行自由为借口损害中国主权</strong></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\">　　至于南海问题，习近平重申，中国坚定维护在南海的主权和相关权利，坚定致力于维护南海地区和平稳定，坚持通过同有关当事国直接协商谈判和平解决争议。中方尊重和维护各国依据国际法享有的航行和飞越自由，同时不会接受任何以航行自由为借口损害中国国家主权和安全利益的行为。希望美方恪守在有关主权和领土争议问题上不选边站队的承诺，为维护南海地区和平稳定发挥建设性作用。</p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\"><strong>　　台湾问题</strong></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\"><strong>　　美方应采取实际行动维护两岸和平发展</strong></p><p style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\">　　在台湾问题上，习近平重申中方原则立场，要求美方坚持一个中国政策，继续采取实际行动，维护两岸关系和平发展，强调这也有利于中美关系长远发展。</p><p class=\"article-editor\" style=\"margin-top: 15px; margin-bottom: 15px; padding: 0px; text-align: right; line-height: 2em; font-family: &#39;Microsoft YaHei&#39;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\">责任编辑：陈琰 SN225</p><p><br/></p>', '0', '1459491781', '1459491781');
INSERT INTO `cms_article` VALUES ('13', '39', 'hello', 'aini', '1', '#hello woaini', '0', '1459671795', '1459671795');
INSERT INTO `cms_article` VALUES ('14', '39', '全部功能性测试', '测试', '1', '# Editor.md\r\n\r\n![](https://pandao.github.io/editor.md/images/logos/editormd-logo-180x180.png)\r\n\r\n![](https://img.shields.io/github/stars/pandao/editor.md.svg) ![](https://img.shields.io/github/forks/pandao/editor.md.svg) ![](https://img.shields.io/github/tag/pandao/editor.md.svg) ![](https://img.shields.io/github/release/pandao/editor.md.svg) ![](https://img.shields.io/github/issues/pandao/editor.md.svg) ![](https://img.shields.io/bower/v/editor.md.svg)\r\n\r\n**目录 (Table of Contents)**\r\n\r\n[TOCM]\r\n\r\n[TOC]\r\n\r\n# Heading 1\r\n## Heading 2               \r\n### Heading 3\r\n#### Heading 4\r\n##### Heading 5\r\n###### Heading 6\r\n# Heading 1 link [Heading link](https://github.com/pandao/editor.md \"Heading link\")\r\n## Heading 2 link [Heading link](https://github.com/pandao/editor.md \"Heading link\")\r\n### Heading 3 link [Heading link](https://github.com/pandao/editor.md \"Heading link\")\r\n#### Heading 4 link [Heading link](https://github.com/pandao/editor.md \"Heading link\") Heading link [Heading link](https://github.com/pandao/editor.md \"Heading link\")\r\n##### Heading 5 link [Heading link](https://github.com/pandao/editor.md \"Heading link\")\r\n###### Heading 6 link [Heading link](https://github.com/pandao/editor.md \"Heading link\")\r\n\r\n#### 标题（用底线的形式）Heading (underline)\r\n\r\nThis is an H1\r\n=============\r\n\r\nThis is an H2\r\n-------------\r\n\r\n### 字符效果和横线等\r\n                \r\n----\r\n\r\n~~删除线~~ <s>删除线（开启识别HTML标签时）</s>\r\n*斜体字*      _斜体字_\r\n**粗体**  __粗体__\r\n***粗斜体*** ___粗斜体___\r\n\r\n上标：X<sub>2</sub>，下标：O<sup>2</sup>\r\n\r\n**缩写(同HTML的abbr标签)**\r\n\r\n> 即更长的单词或短语的缩写形式，前提是开启识别HTML标签时，已默认开启\r\n\r\nThe <abbr title=\"Hyper Text Markup Language\">HTML</abbr> specification is maintained by the <abbr title=\"World Wide Web Consortium\">W3C</abbr>.\r\n\r\n### 引用 Blockquotes\r\n\r\n> 引用文本 Blockquotes\r\n\r\n引用的行内混合 Blockquotes\r\n                    \r\n> 引用：如果想要插入空白换行`即<br />标签`，在插入处先键入两个以上的空格然后回车即可，[普通链接](http://localhost/)。\r\n\r\n### 锚点与链接 Links\r\n\r\n[普通链接](http://localhost/)\r\n\r\n[普通链接带标题](http://localhost/ \"普通链接带标题\")\r\n\r\n直接链接：<https://github.com>\r\n\r\n[锚点链接][anchor-id] \r\n\r\n[anchor-id]: http://www.this-anchor-link.com/\r\n\r\n[mailto:test.test@gmail.com](mailto:test.test@gmail.com)\r\n\r\nGFM a-tail link @pandao  邮箱地址自动链接 test.test@gmail.com  www@vip.qq.com\r\n\r\n> @pandao\r\n\r\n### 多语言代码高亮 Codes\r\n\r\n#### 行内代码 Inline code\r\n\r\n执行命令：`npm install marked`\r\n\r\n#### 缩进风格\r\n\r\n即缩进四个空格，也做为实现类似 `<pre>` 预格式化文本 ( Preformatted Text ) 的功能。\r\n\r\n    <?php\r\n        echo \"Hello world!\";\r\n    ?>\r\n    \r\n预格式化文本：\r\n\r\n    | First Header  | Second Header |\r\n    | ------------- | ------------- |\r\n    | Content Cell  | Content Cell  |\r\n    | Content Cell  | Content Cell  |\r\n\r\n#### JS代码　\r\n\r\n```javascript\r\nfunction test() {\r\n	console.log(\"Hello world!\");\r\n}\r\n \r\n(function(){\r\n    var box = function() {\r\n        return box.fn.init();\r\n    };\r\n\r\n    box.prototype = box.fn = {\r\n        init : function(){\r\n            console.log(\'box.init()\');\r\n\r\n			return this;\r\n        },\r\n\r\n		add : function(str) {\r\n			alert(\"add\", str);\r\n\r\n			return this;\r\n		},\r\n\r\n		remove : function(str) {\r\n			alert(\"remove\", str);\r\n\r\n			return this;\r\n		}\r\n    };\r\n    \r\n    box.fn.init.prototype = box.fn;\r\n    \r\n    window.box =box;\r\n})();\r\n\r\nvar testBox = box();\r\ntestBox.add(\"jQuery\").remove(\"jQuery\");\r\n```\r\n\r\n#### HTML 代码 HTML codes\r\n\r\n```html\r\n<!DOCTYPE html>\r\n<html>\r\n    <head>\r\n        <mate charest=\"utf-8\" />\r\n        <meta name=\"keywords\" content=\"Editor.md, Markdown, Editor\" />\r\n        <title>Hello world!</title>\r\n        <style type=\"text/css\">\r\n            body{font-size:14px;color:#444;font-family: \"Microsoft Yahei\", Tahoma, \"Hiragino Sans GB\", Arial;background:#fff;}\r\n            ul{list-style: none;}\r\n            img{border:none;vertical-align: middle;}\r\n        </style>\r\n    </head>\r\n    <body>\r\n        <h1 class=\"text-xxl\">Hello world!</h1>\r\n        <p class=\"text-green\">Plain text</p>\r\n    </body>\r\n</html>\r\n```\r\n\r\n### 图片 Images\r\n\r\nImage:\r\n\r\n![](https://pandao.github.io/editor.md/examples/images/4.jpg)\r\n\r\n> Follow your heart.\r\n\r\n![](https://pandao.github.io/editor.md/examples/images/8.jpg)\r\n\r\n> 图为：厦门白城沙滩\r\n\r\n图片加链接 (Image + Link)：\r\n\r\n[![](https://pandao.github.io/editor.md/examples/images/7.jpg)](https://pandao.github.io/editor.md/images/7.jpg \"李健首张专辑《似水流年》封面\")\r\n\r\n> 图为：李健首张专辑《似水流年》封面\r\n                \r\n----\r\n\r\n### 列表 Lists\r\n\r\n#### 无序列表（减号）Unordered Lists (-)\r\n                \r\n- 列表一\r\n- 列表二\r\n- 列表三\r\n     \r\n#### 无序列表（星号）Unordered Lists (*)\r\n\r\n* 列表一\r\n* 列表二\r\n* 列表三\r\n\r\n#### 无序列表（加号和嵌套）Unordered Lists (+)\r\n                \r\n+ 列表一\r\n+ 列表二\r\n    + 列表二-1\r\n    + 列表二-2\r\n    + 列表二-3\r\n+ 列表三\r\n    * 列表一\r\n    * 列表二\r\n    * 列表三\r\n\r\n#### 有序列表 Ordered Lists (-)\r\n                \r\n1. 第一行\r\n2. 第二行\r\n3. 第三行\r\n\r\n#### GFM task list\r\n\r\n- [x] GFM task list 1\r\n- [x] GFM task list 2\r\n- [ ] GFM task list 3\r\n    - [ ] GFM task list 3-1\r\n    - [ ] GFM task list 3-2\r\n    - [ ] GFM task list 3-3\r\n- [ ] GFM task list 4\r\n    - [ ] GFM task list 4-1\r\n    - [ ] GFM task list 4-2\r\n                \r\n----\r\n                    \r\n### 绘制表格 Tables\r\n\r\n| 项目        | 价格   |  数量  |\r\n| --------   | -----:  | :----:  |\r\n| 计算机      | $1600   |   5     |\r\n| 手机        |   $12   |   12   |\r\n| 管线        |    $1    |  234  |\r\n                    \r\nFirst Header  | Second Header\r\n------------- | -------------\r\nContent Cell  | Content Cell\r\nContent Cell  | Content Cell \r\n\r\n| First Header  | Second Header |\r\n| ------------- | ------------- |\r\n| Content Cell  | Content Cell  |\r\n| Content Cell  | Content Cell  |\r\n\r\n| Function name | Description                    |\r\n| ------------- | ------------------------------ |\r\n| `help()`      | Display the help window.       |\r\n| `destroy()`   | **Destroy your computer!**     |\r\n\r\n| Left-Aligned  | Center Aligned  | Right Aligned |\r\n| :------------ |:---------------:| -----:|\r\n| col 3 is      | some wordy text | $1600 |\r\n| col 2 is      | centered        |   $12 |\r\n| zebra stripes | are neat        |    $1 |\r\n\r\n| Item      | Value |\r\n| --------- | -----:|\r\n| Computer  | $1600 |\r\n| Phone     |   $12 |\r\n| Pipe      |    $1 |\r\n                \r\n----\r\n\r\n#### 特殊符号 HTML Entities Codes\r\n\r\n&copy; &  &uml; &trade; &iexcl; &pound;\r\n&amp; &lt; &gt; &yen; &euro; &reg; &plusmn; &para; &sect; &brvbar; &macr; &laquo; &middot; \r\n\r\nX&sup2; Y&sup3; &frac34; &frac14;  &times;  &divide;   &raquo;\r\n\r\n18&ordm;C  &quot;  &apos;\r\n\r\n[========]\r\n\r\n### Emoji表情 :smiley:\r\n\r\n> Blockquotes :star:\r\n\r\n#### GFM task lists & Emoji & fontAwesome icon emoji & editormd logo emoji :editormd-logo-5x:\r\n\r\n- [x] :smiley: @mentions, :smiley: #refs, [links](), **formatting**, and <del>tags</del> supported :editormd-logo:;\r\n- [x] list syntax required (any unordered or ordered list supported) :editormd-logo-3x:;\r\n- [x] [ ] :smiley: this is a complete item :smiley:;\r\n- [ ] []this is an incomplete item [test link](#) :fa-star: @pandao; \r\n- [ ] [ ]this is an incomplete item :fa-star: :fa-gear:;\r\n    - [ ] :smiley: this is an incomplete item [test link](#) :fa-star: :fa-gear:;\r\n    - [ ] :smiley: this is  :fa-star: :fa-gear: an incomplete item [test link](#);\r\n \r\n#### 反斜杠 Escape\r\n\r\n\\*literal asterisks\\*\r\n\r\n[========]\r\n            \r\n### 科学公式 TeX(KaTeX)\r\n\r\n$$E=mc^2$$\r\n\r\n行内的公式$$E=mc^2$$行内的公式，行内的$$E=mc^2$$公式。\r\n\r\n$$x > y$$\r\n\r\n$$\\(\\sqrt{3x-1}+(1+x)^2\\)$$\r\n                    \r\n$$\\sin(\\alpha)^{\\theta}=\\sum_{i=0}^{n}(x^i + \\cos(f))$$\r\n\r\n多行公式：\r\n\r\n```math\r\n\\displaystyle\r\n\\left( \\sum\\_{k=1}^n a\\_k b\\_k \\right)^2\r\n\\leq\r\n\\left( \\sum\\_{k=1}^n a\\_k^2 \\right)\r\n\\left( \\sum\\_{k=1}^n b\\_k^2 \\right)\r\n```\r\n\r\n```katex\r\n\\displaystyle \r\n    \\frac{1}{\r\n        \\Bigl(\\sqrt{\\phi \\sqrt{5}}-\\phi\\Bigr) e^{\r\n        \\frac25 \\pi}} = 1+\\frac{e^{-2\\pi}} {1+\\frac{e^{-4\\pi}} {\r\n        1+\\frac{e^{-6\\pi}}\r\n        {1+\\frac{e^{-8\\pi}}\r\n         {1+\\cdots} }\r\n        } \r\n    }\r\n```\r\n\r\n```latex\r\nf(x) = \\int_{-\\infty}^\\infty\r\n    \\hat f(\\xi)\\,e^{2 \\pi i \\xi x}\r\n    \\,d\\xi\r\n```\r\n\r\n### 分页符 Page break\r\n\r\n> Print Test: Ctrl + P\r\n\r\n[========]\r\n\r\n### 绘制流程图 Flowchart\r\n\r\n```flow\r\nst=>start: 用户登陆\r\nop=>operation: 登陆操作\r\ncond=>condition: 登陆成功 Yes or No?\r\ne=>end: 进入后台\r\n\r\nst->op->cond\r\ncond(yes)->e\r\ncond(no)->op\r\n```\r\n\r\n[========]\r\n                    \r\n### 绘制序列图 Sequence Diagram\r\n                    \r\n```seq\r\nAndrew->China: Says Hello \r\nNote right of China: China thinks\\nabout it \r\nChina-->Andrew: How are you? \r\nAndrew->>China: I am good thanks!\r\n```\r\n\r\n### End', '0', '1459672639', '1459672639');
INSERT INTO `cms_article` VALUES ('15', '39', 'silmple', '简单', '1', '### hello', '0', '1459686616', '1459686616');
INSERT INTO `cms_article` VALUES ('16', '39', '简单测试', '测试', '1', '# hello  this is a simple test', '0', '1459694014', '1459694014');
INSERT INTO `cms_article` VALUES ('17', '39', '美女', 'test', '1', '![](http://d.hiphotos.baidu.com/image/pic/item/1f178a82b9014a90b559c9faae773912b31bee16.jpg)', '1', '1459758827', '1475629804');

-- ----------------------------
-- Table structure for cms_article_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_category`;
CREATE TABLE `cms_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增编号',
  `name` varchar(30) NOT NULL COMMENT '频道名称',
  `mark` varchar(200) NOT NULL COMMENT '频道描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_article_category
-- ----------------------------

-- ----------------------------
-- Table structure for cms_article_class
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_class`;
CREATE TABLE `cms_article_class` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL COMMENT '分类名称',
  `mark` varchar(200) NOT NULL COMMENT '分类描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_article_class
-- ----------------------------

-- ----------------------------
-- Table structure for cms_attachment
-- ----------------------------
DROP TABLE IF EXISTS `cms_attachment`;
CREATE TABLE `cms_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `module` varchar(30) NOT NULL COMMENT '模块名称',
  `category` varchar(30) NOT NULL COMMENT '分类',
  `name` varchar(40) NOT NULL COMMENT '文件名称',
  `path` varchar(60) NOT NULL COMMENT '文件路径',
  `size` int(11) NOT NULL COMMENT '大小',
  `mime` varchar(30) NOT NULL COMMENT 'mime',
  `extension` varchar(10) NOT NULL COMMENT '拓展名',
  `is_image` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为图片',
  `upload_ip` int(11) NOT NULL COMMENT '上传IP',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for cms_node
-- ----------------------------
DROP TABLE IF EXISTS `cms_node`;
CREATE TABLE `cms_node` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL COMMENT '父级菜单id',
  `name` varchar(255) NOT NULL COMMENT '菜单名称',
  `class` varchar(255) NOT NULL DEFAULT '',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '菜单功能备注',
  `uri` varchar(255) NOT NULL DEFAULT '',
  `rule` varchar(255) NOT NULL DEFAULT '' COMMENT '应用的规则类名称',
  `data` varchar(255) NOT NULL DEFAULT '' COMMENT '规则类附加数据',
  `type` tinyint(3) unsigned NOT NULL COMMENT '按钮显示类型 1-操作菜单  2-容器菜单 3-操作按钮',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '节点级别',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序字段',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁用',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `created_at` int(10) unsigned NOT NULL COMMENT '创建时间',
  `updated_at` int(10) unsigned NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_node
-- ----------------------------
INSERT INTO `cms_node` VALUES ('33', '0', '首页', 'icon-linkedin', '展示系统信息', '/system/main/index', '', '', '1', '1', '2', '0', '0', '1454830104', '1475579626');
INSERT INTO `cms_node` VALUES ('34', '50', '添加管理员', '', '添加一个管理员', '/system/admin/add', '', '', '1', '3', '0', '0', '0', '1454834719', '1457364138');
INSERT INTO `cms_node` VALUES ('35', '50', '删除管理员', '', '删除一个管理员', '/system/admin/delete', '', '', '3', '3', '0', '0', '0', '1454834743', '1457364129');
INSERT INTO `cms_node` VALUES ('36', '50', '编辑管理员', '', '编辑管理员信息', '/system/admin/update', '', '', '3', '3', '0', '0', '0', '1454834781', '1457364091');
INSERT INTO `cms_node` VALUES ('37', '50', '管理员列表', '', '查看所有管理员', '/system/admin/list', '', '', '1', '3', '0', '0', '0', '1454834811', '1457364057');
INSERT INTO `cms_node` VALUES ('38', '52', '添加管理组', 'icon-glass', '添加一个管理组', '/system/group/add', '', '', '1', '2', '-1', '0', '0', '1454834848', '1475310400');
INSERT INTO `cms_node` VALUES ('39', '52', '编辑管理组', 'icon-glass', '编辑一个管理组', '/system/group/update', '', '', '3', '2', '-1', '0', '0', '1454834874', '1475562508');
INSERT INTO `cms_node` VALUES ('40', '52', '删除管理组', '', '删除一个管理组', '/system/group/delete', '', '', '3', '2', '0', '0', '0', '1454834901', '1457364408');
INSERT INTO `cms_node` VALUES ('41', '52', '管理组列表', 'icon-glass', '查看所有管理组', '/system/group/list', '', '', '1', '2', '0', '0', '0', '1454834920', '1475304193');
INSERT INTO `cms_node` VALUES ('42', '52', '管理组权限', '', '显示管理组所有权限', '/system/group/node', '', '', '3', '2', '0', '0', '0', '1454834963', '1457364369');
INSERT INTO `cms_node` VALUES ('43', '52', '添加管理组权限', '', '给指定管理组添加权限', '/system/group/node-add', '', '', '3', '2', '0', '0', '0', '1454835048', '1457364383');
INSERT INTO `cms_node` VALUES ('44', '52', '删除管理组权限', '', '删除指定管理组权限', '/system/group/node-delete', '', '', '3', '2', '-1', '0', '0', '1454835082', '1475306775');
INSERT INTO `cms_node` VALUES ('45', '51', '添加节点', '', '添加一个权限节点', '/system/node/add', '', '', '1', '2', '1', '0', '0', '1454835112', '1459268656');
INSERT INTO `cms_node` VALUES ('46', '51', '删除节点', '', '删除一个权限节点', '/system/node/delete', '', '', '3', '2', '1', '0', '0', '1454835138', '1459268650');
INSERT INTO `cms_node` VALUES ('47', '51', '编辑权限节点', '', '编辑权限节点信息', '/system/node/update', '', '', '3', '2', '1', '0', '0', '1454835161', '1459266311');
INSERT INTO `cms_node` VALUES ('48', '51', '节点列表', '', '显示所有权限节点', '/system/node/list', '', '', '1', '2', '9', '0', '0', '1454835188', '1459266286');
INSERT INTO `cms_node` VALUES ('49', '0', '系统管理', 'icon-ok', '容器菜单', '', '', '', '2', '1', '3', '0', '1', '1454859158', '1475310147');
INSERT INTO `cms_node` VALUES ('50', '0', '管理员管理', 'icon-glass', '管理员相关操作', '', '', '', '2', '1', '0', '0', '0', '1454859192', '1475302761');
INSERT INTO `cms_node` VALUES ('51', '0', '节点管理', 'icon-road', '管理操作节点', '', '', '', '2', '1', '0', '0', '0', '1454859781', '1475199609');
INSERT INTO `cms_node` VALUES ('52', '0', '用户组管理', 'icon-envelope-alt', '用户组相关操作', '', '', '', '2', '1', '2', '0', '0', '1454859883', '1475199586');
INSERT INTO `cms_node` VALUES ('53', '0', '文章管理', 'icon-user', '', '', '', '', '2', '1', '0', '0', '0', '1458608179', '1475199594');
INSERT INTO `cms_node` VALUES ('54', '53', '添加MarkDown', '', '', '/article/main/add-mark-down', '', '', '3', '2', '0', '0', '0', '1458608195', '1459698514');
INSERT INTO `cms_node` VALUES ('55', '53', '文章列表', '', '', '/article/main/list', '', '', '1', '2', '1', '0', '0', '1458707472', '1459443455');
INSERT INTO `cms_node` VALUES ('56', '53', '查看文章', '', '', '/article/main/view', '', '', '3', '2', '1', '0', '0', '1458707516', '1459443475');
INSERT INTO `cms_node` VALUES ('57', '53', '编辑文章', '', '', '/article/main/update', '', '', '3', '2', '1', '0', '0', '1458707563', '1459443471');
INSERT INTO `cms_node` VALUES ('58', '53', '删除文章', '', '', '/article/main/delete', '', '', '3', '2', '1', '0', '0', '1458707606', '1459443464');
INSERT INTO `cms_node` VALUES ('59', '51', '向上移动', '', '', '/system/node/sort-up', '', '', '3', '2', '0', '0', '0', '1459266149', '1459268678');
INSERT INTO `cms_node` VALUES ('60', '51', '向下移动', '', '', '/system/node/sort-down', '', '', '3', '2', '0', '0', '0', '1459266188', '1459268646');
INSERT INTO `cms_node` VALUES ('61', '53', '添加富文本', '', '', '/article/main/add-rich-text', '', '', '3', '2', '0', '0', '0', '1459353640', '1459698527');
INSERT INTO `cms_node` VALUES ('62', '53', 'markdown图片上传', '', '', '/article/upload/markdown-image', '', '', '3', '2', '0', '0', '0', '1459758343', '1459758343');
INSERT INTO `cms_node` VALUES ('63', '52', '查看管理员', 'icon-glass', '查看组成员', '/system/group/admin', '', '', '3', '2', '0', '0', '0', '1475311854', '1475311854');
INSERT INTO `cms_node` VALUES ('64', '50', '强制下线', 'icon-heart', '强制管理员下线', '/system/admin/off-line', '', '', '3', '2', '0', '0', '0', '1475561215', '1475561290');
INSERT INTO `cms_node` VALUES ('65', '0', '日志管理', 'icon-th-large', '', '', '', '', '2', '1', '-1', '0', '0', '1475562488', '1475569005');
INSERT INTO `cms_node` VALUES ('66', '65', '查看详情', 'icon-film', '', '/log/action/view', '', '', '3', '2', '0', '0', '0', '1475566513', '1475566513');
INSERT INTO `cms_node` VALUES ('67', '65', '日志列表', 'icon-glass', '日志列表', '/log/action/index', '', '', '1', '2', '0', '0', '0', '1475569038', '1475569038');
INSERT INTO `cms_node` VALUES ('68', '0', '个人信息', 'icon-leaf', '', '/system/admin/person', '', '', '1', '1', '0', '0', '0', '1475584277', '1475591372');
INSERT INTO `cms_node` VALUES ('69', '0', '微信管理', 'icon-glass', '微信相关', '', '', '', '2', '1', '-2', '0', '0', '1475895088', '1475895099');
INSERT INTO `cms_node` VALUES ('70', '69', '应用列表', 'icon-glass', '', '/wechat/app/list', '', '', '1', '2', '1', '0', '0', '1475895154', '1475897476');
INSERT INTO `cms_node` VALUES ('71', '69', '添加应用', 'icon-th', '添加微信app', '/wechat/app/add', '', '', '1', '2', '0', '0', '0', '1475895501', '1475895501');
INSERT INTO `cms_node` VALUES ('72', '69', '修改配置', 'icon-zoom-out', '', '/wechat/app/update', '', '', '3', '2', '0', '0', '0', '1475897422', '1475897422');
INSERT INTO `cms_node` VALUES ('73', '69', '删除应用', 'icon-signal', '', '/wechat/app/delete', '', '', '3', '2', '0', '0', '0', '1475897860', '1475897860');

-- ----------------------------
-- Table structure for cms_node_group
-- ----------------------------
DROP TABLE IF EXISTS `cms_node_group`;
CREATE TABLE `cms_node_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL COMMENT '组编号',
  `node_id` int(11) NOT NULL COMMENT '权限编号',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除记录',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_node_group
-- ----------------------------
INSERT INTO `cms_node_group` VALUES ('89', '95', '33', '0', '1454830244', '1454830244');
INSERT INTO `cms_node_group` VALUES ('90', '95', '44', '0', '1454835282', '1454835282');
INSERT INTO `cms_node_group` VALUES ('91', '95', '43', '0', '1454835284', '1454835284');
INSERT INTO `cms_node_group` VALUES ('92', '95', '42', '0', '1454835284', '1454835284');
INSERT INTO `cms_node_group` VALUES ('93', '95', '45', '0', '1454835285', '1454835285');
INSERT INTO `cms_node_group` VALUES ('94', '95', '46', '0', '1454835285', '1454835285');
INSERT INTO `cms_node_group` VALUES ('95', '95', '48', '0', '1454835286', '1454835286');
INSERT INTO `cms_node_group` VALUES ('96', '95', '47', '0', '1454835289', '1454835289');
INSERT INTO `cms_node_group` VALUES ('97', '95', '41', '0', '1454835290', '1454835290');
INSERT INTO `cms_node_group` VALUES ('98', '95', '40', '0', '1454835291', '1454835291');
INSERT INTO `cms_node_group` VALUES ('99', '95', '35', '0', '1454835292', '1454835292');
INSERT INTO `cms_node_group` VALUES ('100', '95', '34', '0', '1454835293', '1454835293');
INSERT INTO `cms_node_group` VALUES ('101', '95', '36', '0', '1454835293', '1454835293');
INSERT INTO `cms_node_group` VALUES ('102', '95', '37', '0', '1454835294', '1454835294');
INSERT INTO `cms_node_group` VALUES ('103', '95', '39', '0', '1454835294', '1454835294');
INSERT INTO `cms_node_group` VALUES ('104', '95', '38', '0', '1454835295', '1454835295');
INSERT INTO `cms_node_group` VALUES ('105', '95', '52', '0', '1454860052', '1454860052');
INSERT INTO `cms_node_group` VALUES ('106', '95', '51', '0', '1454860055', '1454860055');
INSERT INTO `cms_node_group` VALUES ('107', '95', '49', '0', '1454860057', '1454860057');
INSERT INTO `cms_node_group` VALUES ('108', '95', '50', '0', '1454860057', '1454860057');
INSERT INTO `cms_node_group` VALUES ('109', '95', '53', '0', '1458608222', '1458608222');
INSERT INTO `cms_node_group` VALUES ('110', '95', '54', '0', '1458608222', '1458608222');
INSERT INTO `cms_node_group` VALUES ('111', '95', '55', '0', '1458707616', '1458707616');
INSERT INTO `cms_node_group` VALUES ('112', '95', '56', '0', '1458707616', '1458707616');
INSERT INTO `cms_node_group` VALUES ('113', '95', '57', '0', '1458707616', '1458707616');
INSERT INTO `cms_node_group` VALUES ('114', '95', '58', '0', '1458707616', '1458707616');
INSERT INTO `cms_node_group` VALUES ('115', '95', '59', '0', '1459266258', '1459266258');
INSERT INTO `cms_node_group` VALUES ('116', '95', '60', '0', '1459266263', '1459266263');
INSERT INTO `cms_node_group` VALUES ('117', '95', '61', '0', '1459441495', '1459441495');
INSERT INTO `cms_node_group` VALUES ('118', '95', '62', '0', '1459758366', '1459758366');
INSERT INTO `cms_node_group` VALUES ('119', '97', '49', '1', '1475278972', '1475278972');
INSERT INTO `cms_node_group` VALUES ('120', '97', '50', '1', '1475278998', '1475278998');
INSERT INTO `cms_node_group` VALUES ('121', '97', '34', '1', '1475278998', '1475278998');
INSERT INTO `cms_node_group` VALUES ('122', '97', '35', '1', '1475278998', '1475278998');
INSERT INTO `cms_node_group` VALUES ('123', '97', '36', '1', '1475278998', '1475278998');
INSERT INTO `cms_node_group` VALUES ('124', '97', '37', '1', '1475278998', '1475278998');
INSERT INTO `cms_node_group` VALUES ('125', '97', '52', '1', '1475279012', '1475279012');
INSERT INTO `cms_node_group` VALUES ('126', '97', '40', '1', '1475279012', '1475279012');
INSERT INTO `cms_node_group` VALUES ('127', '97', '42', '1', '1475279022', '1475279022');
INSERT INTO `cms_node_group` VALUES ('128', '97', '43', '1', '1475279037', '1475279037');
INSERT INTO `cms_node_group` VALUES ('129', '97', '41', '1', '1475279045', '1475279045');
INSERT INTO `cms_node_group` VALUES ('130', '97', '33', '1', '1475284843', '1475284843');
INSERT INTO `cms_node_group` VALUES ('131', '97', '33', '1', '1475284846', '1475284846');
INSERT INTO `cms_node_group` VALUES ('132', '97', '33', '1', '1475284849', '1475284849');
INSERT INTO `cms_node_group` VALUES ('133', '97', '33', '1', '1475284853', '1475284853');
INSERT INTO `cms_node_group` VALUES ('134', '97', '33', '1', '1475284855', '1475284855');
INSERT INTO `cms_node_group` VALUES ('135', '97', '33', '1', '1475284857', '1475284857');
INSERT INTO `cms_node_group` VALUES ('136', '97', '33', '1', '1475284859', '1475284859');
INSERT INTO `cms_node_group` VALUES ('137', '97', '33', '1', '1475284860', '1475284860');
INSERT INTO `cms_node_group` VALUES ('138', '97', '33', '1', '1475284862', '1475284862');
INSERT INTO `cms_node_group` VALUES ('139', '97', '50', '1', '1475284864', '1475284864');
INSERT INTO `cms_node_group` VALUES ('140', '97', '34', '1', '1475284864', '1475284864');
INSERT INTO `cms_node_group` VALUES ('141', '97', '35', '1', '1475284864', '1475284864');
INSERT INTO `cms_node_group` VALUES ('142', '97', '36', '1', '1475284864', '1475284864');
INSERT INTO `cms_node_group` VALUES ('143', '97', '37', '1', '1475284864', '1475284864');
INSERT INTO `cms_node_group` VALUES ('144', '97', '50', '1', '1475284868', '1475284868');
INSERT INTO `cms_node_group` VALUES ('145', '97', '34', '1', '1475284868', '1475284868');
INSERT INTO `cms_node_group` VALUES ('146', '97', '35', '1', '1475284868', '1475284868');
INSERT INTO `cms_node_group` VALUES ('147', '97', '36', '1', '1475284868', '1475284868');
INSERT INTO `cms_node_group` VALUES ('148', '97', '37', '1', '1475284868', '1475284868');
INSERT INTO `cms_node_group` VALUES ('149', '97', '50', '1', '1475284870', '1475284870');
INSERT INTO `cms_node_group` VALUES ('150', '97', '34', '1', '1475284870', '1475284870');
INSERT INTO `cms_node_group` VALUES ('151', '97', '35', '1', '1475284870', '1475284870');
INSERT INTO `cms_node_group` VALUES ('152', '97', '36', '1', '1475284870', '1475284870');
INSERT INTO `cms_node_group` VALUES ('153', '97', '37', '1', '1475284870', '1475284870');
INSERT INTO `cms_node_group` VALUES ('154', '97', '50', '1', '1475284872', '1475284872');
INSERT INTO `cms_node_group` VALUES ('155', '97', '34', '1', '1475284872', '1475284872');
INSERT INTO `cms_node_group` VALUES ('156', '97', '35', '1', '1475284872', '1475284872');
INSERT INTO `cms_node_group` VALUES ('157', '97', '36', '1', '1475284872', '1475284872');
INSERT INTO `cms_node_group` VALUES ('158', '97', '37', '1', '1475284872', '1475284872');
INSERT INTO `cms_node_group` VALUES ('159', '97', '50', '1', '1475284873', '1475284873');
INSERT INTO `cms_node_group` VALUES ('160', '97', '34', '1', '1475284873', '1475284873');
INSERT INTO `cms_node_group` VALUES ('161', '97', '35', '1', '1475284873', '1475284873');
INSERT INTO `cms_node_group` VALUES ('162', '97', '36', '1', '1475284873', '1475284873');
INSERT INTO `cms_node_group` VALUES ('163', '97', '37', '1', '1475284873', '1475284873');
INSERT INTO `cms_node_group` VALUES ('164', '97', '50', '1', '1475284876', '1475284876');
INSERT INTO `cms_node_group` VALUES ('165', '97', '34', '1', '1475284876', '1475284876');
INSERT INTO `cms_node_group` VALUES ('166', '97', '35', '1', '1475284876', '1475284876');
INSERT INTO `cms_node_group` VALUES ('167', '97', '36', '1', '1475284876', '1475284876');
INSERT INTO `cms_node_group` VALUES ('168', '97', '37', '1', '1475284876', '1475284876');
INSERT INTO `cms_node_group` VALUES ('169', '97', '51', '1', '1475285007', '1475285007');
INSERT INTO `cms_node_group` VALUES ('170', '97', '59', '1', '1475285007', '1475285007');
INSERT INTO `cms_node_group` VALUES ('171', '97', '60', '1', '1475285007', '1475285007');
INSERT INTO `cms_node_group` VALUES ('172', '97', '45', '1', '1475285007', '1475285007');
INSERT INTO `cms_node_group` VALUES ('173', '97', '46', '1', '1475285007', '1475285007');
INSERT INTO `cms_node_group` VALUES ('174', '97', '47', '1', '1475285007', '1475285007');
INSERT INTO `cms_node_group` VALUES ('175', '97', '48', '1', '1475285007', '1475285007');
INSERT INTO `cms_node_group` VALUES ('176', '97', '53', '1', '1475285014', '1475285014');
INSERT INTO `cms_node_group` VALUES ('177', '97', '54', '1', '1475285014', '1475285014');
INSERT INTO `cms_node_group` VALUES ('178', '97', '61', '1', '1475285014', '1475285014');
INSERT INTO `cms_node_group` VALUES ('179', '97', '62', '1', '1475285014', '1475285014');
INSERT INTO `cms_node_group` VALUES ('180', '97', '55', '1', '1475285014', '1475285014');
INSERT INTO `cms_node_group` VALUES ('181', '97', '56', '1', '1475285014', '1475285014');
INSERT INTO `cms_node_group` VALUES ('182', '97', '57', '1', '1475285014', '1475285014');
INSERT INTO `cms_node_group` VALUES ('183', '97', '58', '1', '1475285014', '1475285014');
INSERT INTO `cms_node_group` VALUES ('184', '97', '52', '1', '1475285037', '1475285037');
INSERT INTO `cms_node_group` VALUES ('185', '97', '39', '1', '1475285037', '1475285037');
INSERT INTO `cms_node_group` VALUES ('186', '97', '41', '1', '1475285042', '1475285042');
INSERT INTO `cms_node_group` VALUES ('187', '97', '52', '1', '1475285054', '1475285054');
INSERT INTO `cms_node_group` VALUES ('188', '97', '38', '1', '1475285054', '1475285054');
INSERT INTO `cms_node_group` VALUES ('189', '97', '39', '1', '1475285054', '1475285054');
INSERT INTO `cms_node_group` VALUES ('190', '97', '40', '1', '1475285054', '1475285054');
INSERT INTO `cms_node_group` VALUES ('191', '97', '42', '1', '1475285054', '1475285054');
INSERT INTO `cms_node_group` VALUES ('192', '97', '43', '1', '1475285054', '1475285054');
INSERT INTO `cms_node_group` VALUES ('193', '97', '44', '1', '1475285054', '1475285054');
INSERT INTO `cms_node_group` VALUES ('194', '97', '41', '1', '1475285054', '1475285054');
INSERT INTO `cms_node_group` VALUES ('195', '97', '52', '1', '1475285061', '1475285061');
INSERT INTO `cms_node_group` VALUES ('196', '97', '44', '1', '1475285061', '1475285061');
INSERT INTO `cms_node_group` VALUES ('197', '97', '42', '1', '1475285064', '1475285064');
INSERT INTO `cms_node_group` VALUES ('198', '97', '52', '1', '1475285095', '1475285095');
INSERT INTO `cms_node_group` VALUES ('199', '97', '44', '1', '1475285095', '1475285095');
INSERT INTO `cms_node_group` VALUES ('200', '97', '42', '1', '1475285098', '1475285098');
INSERT INTO `cms_node_group` VALUES ('201', '97', '42', '1', '1475285109', '1475285109');
INSERT INTO `cms_node_group` VALUES ('202', '97', '44', '1', '1475285111', '1475285111');
INSERT INTO `cms_node_group` VALUES ('203', '97', '43', '1', '1475285919', '1475285919');
INSERT INTO `cms_node_group` VALUES ('204', '97', '52', '1', '1475285922', '1475285922');
INSERT INTO `cms_node_group` VALUES ('205', '97', '38', '1', '1475285922', '1475285922');
INSERT INTO `cms_node_group` VALUES ('206', '97', '39', '1', '1475285922', '1475285922');
INSERT INTO `cms_node_group` VALUES ('207', '97', '40', '1', '1475285922', '1475285922');
INSERT INTO `cms_node_group` VALUES ('208', '97', '42', '1', '1475285922', '1475285922');
INSERT INTO `cms_node_group` VALUES ('209', '97', '43', '1', '1475285922', '1475285922');
INSERT INTO `cms_node_group` VALUES ('210', '97', '44', '1', '1475285922', '1475285922');
INSERT INTO `cms_node_group` VALUES ('211', '97', '41', '1', '1475285922', '1475285922');
INSERT INTO `cms_node_group` VALUES ('212', '97', '49', '1', '1475286012', '1475286012');
INSERT INTO `cms_node_group` VALUES ('213', '97', '50', '1', '1475286012', '1475286012');
INSERT INTO `cms_node_group` VALUES ('214', '97', '35', '1', '1475286012', '1475286012');
INSERT INTO `cms_node_group` VALUES ('215', '97', '52', '1', '1475286021', '1475286021');
INSERT INTO `cms_node_group` VALUES ('216', '97', '42', '1', '1475286021', '1475286021');
INSERT INTO `cms_node_group` VALUES ('217', '97', '43', '1', '1475286021', '1475286021');
INSERT INTO `cms_node_group` VALUES ('218', '97', '44', '1', '1475286021', '1475286021');
INSERT INTO `cms_node_group` VALUES ('219', '97', '41', '1', '1475286021', '1475286021');
INSERT INTO `cms_node_group` VALUES ('220', '97', '52', '1', '1475286032', '1475286032');
INSERT INTO `cms_node_group` VALUES ('221', '97', '38', '1', '1475286032', '1475286032');
INSERT INTO `cms_node_group` VALUES ('222', '97', '39', '1', '1475286032', '1475286032');
INSERT INTO `cms_node_group` VALUES ('223', '97', '40', '1', '1475286032', '1475286032');
INSERT INTO `cms_node_group` VALUES ('224', '97', '42', '1', '1475286032', '1475286032');
INSERT INTO `cms_node_group` VALUES ('225', '97', '43', '1', '1475286032', '1475286032');
INSERT INTO `cms_node_group` VALUES ('226', '97', '44', '1', '1475286032', '1475286032');
INSERT INTO `cms_node_group` VALUES ('227', '97', '41', '1', '1475286032', '1475286032');
INSERT INTO `cms_node_group` VALUES ('228', '97', '33', '1', '1475286058', '1475286058');
INSERT INTO `cms_node_group` VALUES ('229', '97', '36', '1', '1475286060', '1475286060');
INSERT INTO `cms_node_group` VALUES ('230', '97', '37', '1', '1475286061', '1475286061');
INSERT INTO `cms_node_group` VALUES ('231', '97', '53', '1', '1475286072', '1475286072');
INSERT INTO `cms_node_group` VALUES ('232', '97', '57', '1', '1475286072', '1475286072');
INSERT INTO `cms_node_group` VALUES ('233', '97', '53', '1', '1475286091', '1475286091');
INSERT INTO `cms_node_group` VALUES ('234', '97', '56', '1', '1475286091', '1475286091');
INSERT INTO `cms_node_group` VALUES ('235', '97', '52', '1', '1475286095', '1475286095');
INSERT INTO `cms_node_group` VALUES ('236', '97', '42', '1', '1475286095', '1475286095');
INSERT INTO `cms_node_group` VALUES ('237', '97', '43', '1', '1475286095', '1475286095');
INSERT INTO `cms_node_group` VALUES ('238', '97', '41', '1', '1475286095', '1475286095');
INSERT INTO `cms_node_group` VALUES ('239', '97', '34', '1', '1475286225', '1475286225');
INSERT INTO `cms_node_group` VALUES ('240', '97', '49', '1', '1475286232', '1475286232');
INSERT INTO `cms_node_group` VALUES ('241', '97', '50', '1', '1475286232', '1475286232');
INSERT INTO `cms_node_group` VALUES ('242', '97', '36', '1', '1475286232', '1475286232');
INSERT INTO `cms_node_group` VALUES ('243', '97', '49', '1', '1475286238', '1475286238');
INSERT INTO `cms_node_group` VALUES ('244', '97', '50', '1', '1475286238', '1475286238');
INSERT INTO `cms_node_group` VALUES ('245', '97', '34', '1', '1475286238', '1475286238');
INSERT INTO `cms_node_group` VALUES ('246', '97', '35', '1', '1475286238', '1475286238');
INSERT INTO `cms_node_group` VALUES ('247', '97', '36', '1', '1475286238', '1475286238');
INSERT INTO `cms_node_group` VALUES ('248', '97', '37', '1', '1475286238', '1475286238');
INSERT INTO `cms_node_group` VALUES ('249', '97', '49', '1', '1475286605', '1475286605');
INSERT INTO `cms_node_group` VALUES ('250', '97', '50', '1', '1475286605', '1475286605');
INSERT INTO `cms_node_group` VALUES ('251', '97', '34', '1', '1475286605', '1475286605');
INSERT INTO `cms_node_group` VALUES ('252', '97', '35', '1', '1475286605', '1475286605');
INSERT INTO `cms_node_group` VALUES ('253', '97', '36', '1', '1475286605', '1475286605');
INSERT INTO `cms_node_group` VALUES ('254', '97', '37', '1', '1475286605', '1475286605');
INSERT INTO `cms_node_group` VALUES ('255', '97', '33', '1', '1475286605', '1475286605');
INSERT INTO `cms_node_group` VALUES ('256', '97', '49', '1', '1475286667', '1475286667');
INSERT INTO `cms_node_group` VALUES ('257', '97', '50', '1', '1475286667', '1475286667');
INSERT INTO `cms_node_group` VALUES ('258', '97', '34', '1', '1475286667', '1475286667');
INSERT INTO `cms_node_group` VALUES ('259', '97', '35', '1', '1475286667', '1475286667');
INSERT INTO `cms_node_group` VALUES ('260', '97', '36', '1', '1475286667', '1475286667');
INSERT INTO `cms_node_group` VALUES ('261', '97', '37', '1', '1475286667', '1475286667');
INSERT INTO `cms_node_group` VALUES ('262', '97', '49', '1', '1475286681', '1475286681');
INSERT INTO `cms_node_group` VALUES ('263', '97', '50', '1', '1475286681', '1475286681');
INSERT INTO `cms_node_group` VALUES ('264', '97', '34', '1', '1475286681', '1475286681');
INSERT INTO `cms_node_group` VALUES ('265', '97', '35', '1', '1475286681', '1475286681');
INSERT INTO `cms_node_group` VALUES ('266', '97', '36', '1', '1475286681', '1475286681');
INSERT INTO `cms_node_group` VALUES ('267', '97', '37', '1', '1475286681', '1475286681');
INSERT INTO `cms_node_group` VALUES ('268', '97', '50', '1', '1475289315', '1475289315');
INSERT INTO `cms_node_group` VALUES ('269', '97', '34', '1', '1475289315', '1475289315');
INSERT INTO `cms_node_group` VALUES ('270', '97', '35', '1', '1475289315', '1475289315');
INSERT INTO `cms_node_group` VALUES ('271', '97', '36', '1', '1475289315', '1475289315');
INSERT INTO `cms_node_group` VALUES ('272', '97', '37', '1', '1475289315', '1475289315');
INSERT INTO `cms_node_group` VALUES ('273', '97', '50', '1', '1475289319', '1475289319');
INSERT INTO `cms_node_group` VALUES ('274', '97', '37', '1', '1475289319', '1475289319');
INSERT INTO `cms_node_group` VALUES ('275', '97', '50', '1', '1475289321', '1475289321');
INSERT INTO `cms_node_group` VALUES ('276', '97', '35', '1', '1475289321', '1475289321');
INSERT INTO `cms_node_group` VALUES ('277', '97', '36', '1', '1475289322', '1475289322');
INSERT INTO `cms_node_group` VALUES ('278', '97', '50', '1', '1475289324', '1475289324');
INSERT INTO `cms_node_group` VALUES ('279', '97', '37', '1', '1475289324', '1475289324');
INSERT INTO `cms_node_group` VALUES ('280', '97', '35', '1', '1475289326', '1475289326');
INSERT INTO `cms_node_group` VALUES ('281', '97', '50', '1', '1475289332', '1475289332');
INSERT INTO `cms_node_group` VALUES ('282', '97', '34', '1', '1475289332', '1475289332');
INSERT INTO `cms_node_group` VALUES ('283', '97', '35', '1', '1475289332', '1475289332');
INSERT INTO `cms_node_group` VALUES ('284', '97', '36', '1', '1475289332', '1475289332');
INSERT INTO `cms_node_group` VALUES ('285', '97', '37', '1', '1475289332', '1475289332');
INSERT INTO `cms_node_group` VALUES ('286', '97', '50', '1', '1475289334', '1475289334');
INSERT INTO `cms_node_group` VALUES ('287', '97', '37', '1', '1475289334', '1475289334');
INSERT INTO `cms_node_group` VALUES ('288', '97', '36', '1', '1475289335', '1475289335');
INSERT INTO `cms_node_group` VALUES ('289', '97', '50', '1', '1475289343', '1475289343');
INSERT INTO `cms_node_group` VALUES ('290', '97', '36', '1', '1475289343', '1475289343');
INSERT INTO `cms_node_group` VALUES ('291', '97', '49', '1', '1475289521', '1475289521');
INSERT INTO `cms_node_group` VALUES ('292', '97', '50', '1', '1475289521', '1475289521');
INSERT INTO `cms_node_group` VALUES ('293', '97', '34', '1', '1475289521', '1475289521');
INSERT INTO `cms_node_group` VALUES ('294', '97', '36', '1', '1475289523', '1475289523');
INSERT INTO `cms_node_group` VALUES ('295', '97', '52', '0', '1475289527', '1475289527');
INSERT INTO `cms_node_group` VALUES ('296', '97', '39', '0', '1475289527', '1475289527');
INSERT INTO `cms_node_group` VALUES ('297', '97', '51', '0', '1475289563', '1475289563');
INSERT INTO `cms_node_group` VALUES ('298', '97', '59', '0', '1475289563', '1475289563');
INSERT INTO `cms_node_group` VALUES ('299', '98', '49', '0', '1475305016', '1475305016');
INSERT INTO `cms_node_group` VALUES ('300', '98', '33', '0', '1475305016', '1475305016');
INSERT INTO `cms_node_group` VALUES ('301', '95', '63', '0', '1475311871', '1475311871');
INSERT INTO `cms_node_group` VALUES ('302', '95', '64', '0', '1475561232', '1475561232');
INSERT INTO `cms_node_group` VALUES ('303', '95', '65', '0', '1475562534', '1475562534');
INSERT INTO `cms_node_group` VALUES ('304', '95', '67', '0', '1475569133', '1475569133');
INSERT INTO `cms_node_group` VALUES ('305', '95', '66', '0', '1475569135', '1475569135');
INSERT INTO `cms_node_group` VALUES ('306', '95', '68', '0', '1475584308', '1475584308');
INSERT INTO `cms_node_group` VALUES ('307', '95', '69', '0', '1475895163', '1475895163');
INSERT INTO `cms_node_group` VALUES ('308', '95', '70', '0', '1475895163', '1475895163');
INSERT INTO `cms_node_group` VALUES ('309', '95', '71', '0', '1475895509', '1475895509');
INSERT INTO `cms_node_group` VALUES ('310', '95', '72', '0', '1475897433', '1475897433');
INSERT INTO `cms_node_group` VALUES ('311', '95', '73', '0', '1475897869', '1475897869');

-- ----------------------------
-- Table structure for cms_session
-- ----------------------------
DROP TABLE IF EXISTS `cms_session`;
CREATE TABLE `cms_session` (
  `id` char(40) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob,
  `app` varchar(20) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `INDEX_ID` (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_session
-- ----------------------------
INSERT INTO `cms_session` VALUES ('4bg2a73pcnsi667shllgits1r2', '1475636225', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32303A222F73797374656D2F61646D696E2F706572736F6E223B5F5F636170746368612F736974652F636170746368617C733A343A2270757A61223B5F5F636170746368612F736974652F63617074636861636F756E747C693A313B5F5F69647C693A33393B, 'backend', '39');
INSERT INTO `cms_session` VALUES ('5io2ch66qln7sngvc04jigi5c4', '1480131322', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32303A222F7A706A636D732F6261636B656E642F7765622F223B, '', '0');
INSERT INTO `cms_session` VALUES ('5j0231rgmn7cc8ninfia3gp507', '1475899820', 0x5F5F666C6173687C613A303A7B7D, '', '0');
INSERT INTO `cms_session` VALUES ('i0l2eea06sthngl2ek8u8lp1i7', '1475901719', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31363A222F7765636861742F6170702F6C697374223B5F5F636170746368612F736974652F636170746368617C733A343A2262656875223B5F5F636170746368612F736974652F63617074636861636F756E747C693A313B5F5F69647C693A33393B, 'backend', '39');
INSERT INTO `cms_session` VALUES ('taqmsmf8efe9od6fjujp8a8nk2', '1480134482', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A313A222F223B, '', '0');

-- ----------------------------
-- Table structure for cms_tip
-- ----------------------------
DROP TABLE IF EXISTS `cms_tip`;
CREATE TABLE `cms_tip` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL COMMENT '标签名称',
  `mark` varchar(200) NOT NULL COMMENT '标签描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_tip
-- ----------------------------

-- ----------------------------
-- Table structure for cms_wechat_app
-- ----------------------------
DROP TABLE IF EXISTS `cms_wechat_app`;
CREATE TABLE `cms_wechat_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appId` varchar(60) NOT NULL COMMENT '应用ID',
  `mark` varchar(200) NOT NULL COMMENT '备注信息',
  `appSecret` varchar(100) NOT NULL COMMENT '应用密码',
  `appToken` varchar(100) NOT NULL COMMENT '应用token',
  `appAesKey` varchar(100) NOT NULL COMMENT 'AES加密密钥',
  `deleted` tinyint(1) NOT NULL COMMENT '是否删除，0-未删除 1-删除',
  `debug` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为调试模式，1-是 0-否',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '最近修改',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_wechat_app
-- ----------------------------
INSERT INTO `cms_wechat_app` VALUES ('3', 'wx48abe2e24ba0de5f', '测试126邮箱', '69dcd6855fddc73cc09b53ffbe828e2a', 'weixin', '', '0', '1', '1475898300', '1475900196');
