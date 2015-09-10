/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : drawmad

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-09-09 18:26:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for access
-- ----------------------------
DROP TABLE IF EXISTS `access`;
CREATE TABLE `access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of access
-- ----------------------------
INSERT INTO `access` VALUES ('2', '1', '1', '0', null);
INSERT INTO `access` VALUES ('2', '87', '2', '1', null);
INSERT INTO `access` VALUES ('2', '86', '2', '1', null);
INSERT INTO `access` VALUES ('3', '1', '1', '0', null);
INSERT INTO `access` VALUES ('2', '30', '2', '1', null);
INSERT INTO `access` VALUES ('2', '50', '3', '40', null);
INSERT INTO `access` VALUES ('3', '50', '3', '40', null);
INSERT INTO `access` VALUES ('1', '50', '3', '40', null);
INSERT INTO `access` VALUES ('3', '7', '2', '1', null);
INSERT INTO `access` VALUES ('3', '39', '3', '30', null);
INSERT INTO `access` VALUES ('2', '39', '3', '30', null);
INSERT INTO `access` VALUES ('2', '49', '3', '30', null);
INSERT INTO `access` VALUES ('4', '1', '1', '0', null);
INSERT INTO `access` VALUES ('4', '2', '2', '1', null);
INSERT INTO `access` VALUES ('4', '3', '2', '1', null);
INSERT INTO `access` VALUES ('4', '4', '2', '1', null);
INSERT INTO `access` VALUES ('4', '5', '2', '1', null);
INSERT INTO `access` VALUES ('4', '6', '2', '1', null);
INSERT INTO `access` VALUES ('4', '7', '2', '1', null);
INSERT INTO `access` VALUES ('4', '11', '2', '1', null);
INSERT INTO `access` VALUES ('5', '25', '1', '0', null);
INSERT INTO `access` VALUES ('5', '51', '2', '25', null);
INSERT INTO `access` VALUES ('1', '1', '1', '0', null);
INSERT INTO `access` VALUES ('1', '31', '3', '30', null);
INSERT INTO `access` VALUES ('1', '103', '2', '1', null);
INSERT INTO `access` VALUES ('1', '91', '2', '1', null);
INSERT INTO `access` VALUES ('1', '88', '2', '1', null);
INSERT INTO `access` VALUES ('1', '32', '3', '30', null);
INSERT INTO `access` VALUES ('3', '69', '2', '1', null);
INSERT INTO `access` VALUES ('3', '30', '2', '1', null);
INSERT INTO `access` VALUES ('3', '40', '2', '1', null);
INSERT INTO `access` VALUES ('1', '33', '3', '30', null);
INSERT INTO `access` VALUES ('1', '34', '3', '30', null);
INSERT INTO `access` VALUES ('1', '35', '3', '30', null);
INSERT INTO `access` VALUES ('1', '36', '3', '30', null);
INSERT INTO `access` VALUES ('1', '37', '3', '30', null);
INSERT INTO `access` VALUES ('1', '39', '3', '30', null);
INSERT INTO `access` VALUES ('1', '49', '3', '30', null);
INSERT INTO `access` VALUES ('2', '32', '3', '30', null);
INSERT INTO `access` VALUES ('2', '31', '3', '30', null);
INSERT INTO `access` VALUES ('7', '1', '1', '0', null);
INSERT INTO `access` VALUES ('7', '30', '2', '1', null);
INSERT INTO `access` VALUES ('7', '40', '2', '1', null);
INSERT INTO `access` VALUES ('7', '69', '2', '1', null);
INSERT INTO `access` VALUES ('7', '50', '3', '40', null);
INSERT INTO `access` VALUES ('7', '39', '3', '30', null);
INSERT INTO `access` VALUES ('7', '49', '3', '30', null);
INSERT INTO `access` VALUES ('1', '87', '2', '1', null);
INSERT INTO `access` VALUES ('2', '40', '2', '1', null);
INSERT INTO `access` VALUES ('8', '1', '1', '0', null);
INSERT INTO `access` VALUES ('8', '110', '3', '30', null);
INSERT INTO `access` VALUES ('8', '88', '2', '1', null);
INSERT INTO `access` VALUES ('8', '87', '2', '1', null);
INSERT INTO `access` VALUES ('1', '86', '2', '1', null);
INSERT INTO `access` VALUES ('1', '2', '2', '1', null);
INSERT INTO `access` VALUES ('1', '6', '2', '1', null);
INSERT INTO `access` VALUES ('1', '7', '2', '1', null);
INSERT INTO `access` VALUES ('8', '86', '2', '1', null);
INSERT INTO `access` VALUES ('8', '30', '2', '1', null);
INSERT INTO `access` VALUES ('8', '40', '2', '1', null);
INSERT INTO `access` VALUES ('8', '109', '3', '30', null);
INSERT INTO `access` VALUES ('8', '108', '3', '30', null);
INSERT INTO `access` VALUES ('8', '107', '3', '30', null);
INSERT INTO `access` VALUES ('8', '106', '3', '30', null);
INSERT INTO `access` VALUES ('8', '105', '3', '30', null);
INSERT INTO `access` VALUES ('8', '101', '3', '30', null);
INSERT INTO `access` VALUES ('8', '69', '3', '30', null);
INSERT INTO `access` VALUES ('8', '68', '3', '30', null);
INSERT INTO `access` VALUES ('8', '67', '3', '30', null);
INSERT INTO `access` VALUES ('8', '66', '3', '30', null);
INSERT INTO `access` VALUES ('8', '65', '3', '30', null);
INSERT INTO `access` VALUES ('8', '64', '3', '30', null);
INSERT INTO `access` VALUES ('8', '63', '3', '30', null);
INSERT INTO `access` VALUES ('8', '62', '3', '30', null);
INSERT INTO `access` VALUES ('8', '61', '3', '30', null);
INSERT INTO `access` VALUES ('8', '60', '3', '30', null);
INSERT INTO `access` VALUES ('8', '31', '3', '30', null);
INSERT INTO `access` VALUES ('8', '32', '3', '30', null);
INSERT INTO `access` VALUES ('1', '60', '3', '30', null);
INSERT INTO `access` VALUES ('1', '61', '3', '30', null);
INSERT INTO `access` VALUES ('1', '62', '3', '30', null);
INSERT INTO `access` VALUES ('1', '63', '3', '30', null);
INSERT INTO `access` VALUES ('1', '64', '3', '30', null);
INSERT INTO `access` VALUES ('1', '65', '3', '30', null);
INSERT INTO `access` VALUES ('1', '66', '3', '30', null);
INSERT INTO `access` VALUES ('1', '67', '3', '30', null);
INSERT INTO `access` VALUES ('1', '68', '3', '30', null);
INSERT INTO `access` VALUES ('1', '69', '3', '30', null);
INSERT INTO `access` VALUES ('1', '100', '3', '30', null);
INSERT INTO `access` VALUES ('1', '101', '3', '30', null);
INSERT INTO `access` VALUES ('1', '30', '2', '1', null);
INSERT INTO `access` VALUES ('1', '40', '2', '1', null);
INSERT INTO `access` VALUES ('8', '104', '2', '1', null);
INSERT INTO `access` VALUES ('8', '33', '3', '30', null);
INSERT INTO `access` VALUES ('8', '34', '3', '30', null);
INSERT INTO `access` VALUES ('8', '35', '3', '30', null);
INSERT INTO `access` VALUES ('8', '36', '3', '30', null);
INSERT INTO `access` VALUES ('8', '37', '3', '30', null);
INSERT INTO `access` VALUES ('8', '39', '3', '30', null);
INSERT INTO `access` VALUES ('8', '49', '3', '30', null);
INSERT INTO `access` VALUES ('1', '104', '2', '1', null);
INSERT INTO `access` VALUES ('9', '1', '1', '0', null);
INSERT INTO `access` VALUES ('9', '40', '2', '1', null);
INSERT INTO `access` VALUES ('9', '30', '2', '1', null);
INSERT INTO `access` VALUES ('9', '86', '2', '1', null);
INSERT INTO `access` VALUES ('9', '87', '2', '1', null);
INSERT INTO `access` VALUES ('9', '88', '2', '1', null);
INSERT INTO `access` VALUES ('9', '104', '2', '1', null);
INSERT INTO `access` VALUES ('9', '49', '3', '30', null);
INSERT INTO `access` VALUES ('9', '39', '3', '30', null);
INSERT INTO `access` VALUES ('9', '37', '3', '30', null);
INSERT INTO `access` VALUES ('9', '36', '3', '30', null);
INSERT INTO `access` VALUES ('9', '35', '3', '30', null);
INSERT INTO `access` VALUES ('9', '34', '3', '30', null);
INSERT INTO `access` VALUES ('9', '33', '3', '30', null);
INSERT INTO `access` VALUES ('9', '32', '3', '30', null);
INSERT INTO `access` VALUES ('9', '31', '3', '30', null);
INSERT INTO `access` VALUES ('9', '60', '3', '30', null);
INSERT INTO `access` VALUES ('9', '61', '3', '30', null);
INSERT INTO `access` VALUES ('9', '62', '3', '30', null);
INSERT INTO `access` VALUES ('9', '63', '3', '30', null);
INSERT INTO `access` VALUES ('9', '64', '3', '30', null);
INSERT INTO `access` VALUES ('9', '65', '3', '30', null);
INSERT INTO `access` VALUES ('9', '66', '3', '30', null);
INSERT INTO `access` VALUES ('9', '68', '3', '30', null);
INSERT INTO `access` VALUES ('9', '69', '3', '30', null);
INSERT INTO `access` VALUES ('9', '100', '3', '30', null);
INSERT INTO `access` VALUES ('9', '101', '3', '30', null);
INSERT INTO `access` VALUES ('9', '105', '3', '30', null);
INSERT INTO `access` VALUES ('9', '106', '3', '30', null);
INSERT INTO `access` VALUES ('9', '107', '3', '30', null);
INSERT INTO `access` VALUES ('9', '108', '3', '30', null);
INSERT INTO `access` VALUES ('9', '109', '3', '30', null);
INSERT INTO `access` VALUES ('9', '110', '3', '30', null);
INSERT INTO `access` VALUES ('9', '50', '3', '40', null);

-- ----------------------------
-- Table structure for email
-- ----------------------------
DROP TABLE IF EXISTS `email`;
CREATE TABLE `email` (
  `id` int(1) NOT NULL,
  `MAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `MAIL_LOGINNAME` varchar(255) DEFAULT NULL,
  `MAIL_SMTP` varchar(255) DEFAULT NULL,
  `MAIL_PASSWORD` varchar(255) DEFAULT NULL,
  `MAIL_SENDER` varchar(255) DEFAULT NULL,
  `last_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of email
-- ----------------------------
INSERT INTO `email` VALUES ('1', 'drawmad@163.com', 'drawmad@163.com', 'smtp.163.com', '1qaz2wsx', 'DrawMAD', '管理员');

-- ----------------------------
-- Table structure for game_mad
-- ----------------------------
DROP TABLE IF EXISTS `game_mad`;
CREATE TABLE `game_mad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '比赛名称',
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '活动解释',
  `url` varchar(255) DEFAULT NULL COMMENT '页面链接',
  `is_hide` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1显示0隐藏',
  `result` varchar(4000) DEFAULT NULL,
  `is_result` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1发布0修改',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_mad
-- ----------------------------
INSERT INTO `game_mad` VALUES ('1', '新人战', '2015-07-01 13:59:14', '2015-07-15 13:59:23', '', '__APP__/Events', '1', null, '0');
INSERT INTO `game_mad` VALUES ('2', 'HARU祭', '2015-07-30 13:59:53', '2015-08-04 13:59:57', null, null, '1', null, '0');
INSERT INTO `game_mad` VALUES ('3', '鸟天使', null, null, null, null, '1', null, '0');
INSERT INTO `game_mad` VALUES ('4', 'drawmad模块', '2015-09-04 10:39:25', null, null, null, '0', null, '0');
INSERT INTO `game_mad` VALUES ('5', 'moewolf模块', '2015-09-04 10:39:28', null, null, null, '0', null, '0');

-- ----------------------------
-- Table structure for game_mad_control
-- ----------------------------
DROP TABLE IF EXISTS `game_mad_control`;
CREATE TABLE `game_mad_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_mad_control
-- ----------------------------
INSERT INTO `game_mad_control` VALUES ('1', '报名入口', '0', null, '3');
INSERT INTO `game_mad_control` VALUES ('2', '投稿入口', '1', null, '3');
INSERT INTO `game_mad_control` VALUES ('3', '允许选手改稿', '0', null, '3');

-- ----------------------------
-- Table structure for game_mad_group
-- ----------------------------
DROP TABLE IF EXISTS `game_mad_group`;
CREATE TABLE `game_mad_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `game_mad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_mad_group
-- ----------------------------
INSERT INTO `game_mad_group` VALUES ('1', 'X', '1');
INSERT INTO `game_mad_group` VALUES ('2', 'Y', '1');
INSERT INTO `game_mad_group` VALUES ('3', '甜点', '1');
INSERT INTO `game_mad_group` VALUES ('4', '后夜祭', '1');
INSERT INTO `game_mad_group` VALUES ('5', '组1', '3');
INSERT INTO `game_mad_group` VALUES ('6', '组2', '3');

-- ----------------------------
-- Table structure for game_mad_release_1
-- ----------------------------
DROP TABLE IF EXISTS `game_mad_release_1`;
CREATE TABLE `game_mad_release_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `explain` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `date_create` datetime NOT NULL,
  `game_mad_id` int(11) NOT NULL DEFAULT '1',
  `is_hide` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_mad_release_1
-- ----------------------------
INSERT INTO `game_mad_release_1` VALUES ('1', '1.梦的开始', null, '2015-08-15', '2015-08-15 00:23:10', '1', '0');
INSERT INTO `game_mad_release_1` VALUES ('2', '2.恋', null, '2015-08-16', '2015-08-16 00:03:10', '1', '0');
INSERT INTO `game_mad_release_1` VALUES ('3', '3.谁的战争', null, '2015-08-17', '2015-08-17 00:00:11', '1', '0');
INSERT INTO `game_mad_release_1` VALUES ('4', '4.四月前的四月', null, '2015-08-18', '2015-08-18 00:07:58', '1', '0');
INSERT INTO `game_mad_release_1` VALUES ('7', '标题22', null, '2015-08-02', '2015-08-02 22:29:48', '1', '0');
INSERT INTO `game_mad_release_1` VALUES ('8', '标题3', null, '2015-08-03', '2015-08-03 22:29:51', '3', '0');
INSERT INTO `game_mad_release_1` VALUES ('9', '标题1', null, '2015-06-29', '2015-08-04 22:29:55', '3', '1');

-- ----------------------------
-- Table structure for game_mad_release_2
-- ----------------------------
DROP TABLE IF EXISTS `game_mad_release_2`;
CREATE TABLE `game_mad_release_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `head_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `game_mad_user_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_mad_release_2
-- ----------------------------
INSERT INTO `game_mad_release_2` VALUES ('42', '1', null, '22', '2015-08-15 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('43', '1', null, '70', '2015-08-15 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('44', '1', null, '38', '2015-08-15 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('45', '1', null, '75', '2015-08-15 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('46', '1', null, '88', '2015-08-15 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('47', '1', null, '2', '2015-08-15 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('48', '1', null, '91', '2015-08-15 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('49', '2', null, '54', '2015-08-16 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('50', '2', null, '72', '2015-08-16 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('51', '2', null, '81', '2015-08-16 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('52', '2', null, '103', '2015-08-16 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('53', '2', null, '8', '2015-08-16 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('54', '2', null, '9', '2015-08-16 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('55', '3', null, '27', '2015-08-17 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('56', '3', null, '61', '2015-08-17 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('57', '3', null, '45', '2015-08-17 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('58', '3', null, '83', '2015-08-17 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('59', '3', null, '99', '2015-08-17 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('60', '3', null, '10', '2015-08-17 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('61', '4', null, '96', '2015-08-18 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('62', '4', null, '60', '2015-08-18 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('63', '4', null, '37', '2015-08-18 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('64', '4', null, '25', '2015-08-18 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('65', '4', null, '1', '2015-08-18 00:00:00');
INSERT INTO `game_mad_release_2` VALUES ('66', '4', null, '5', '2015-08-18 00:00:00');

-- ----------------------------
-- Table structure for game_mad_result
-- ----------------------------
DROP TABLE IF EXISTS `game_mad_result`;
CREATE TABLE `game_mad_result` (
  `id` int(11) NOT NULL,
  `result` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_mad_result
-- ----------------------------

-- ----------------------------
-- Table structure for game_mad_user
-- ----------------------------
DROP TABLE IF EXISTS `game_mad_user`;
CREATE TABLE `game_mad_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `date_sign` datetime DEFAULT NULL COMMENT '交稿时间',
  `date_turn` datetime DEFAULT NULL COMMENT '报名时间',
  `mad_group` varchar(255) NOT NULL DEFAULT '1' COMMENT '组别1X2Y',
  `remark` varchar(255) DEFAULT NULL COMMENT '感言',
  `date_pub` datetime DEFAULT NULL COMMENT '公开时间',
  `state_user` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未审核1通过2拒绝',
  `state_video` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未审核1通过2拒绝',
  `comment` varchar(255) DEFAULT NULL COMMENT '评语',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_mad_user
-- ----------------------------
INSERT INTO `game_mad_user` VALUES ('1', '10687', '1', '10011', null, null, '4', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('2', '10685', '1', '10013', null, null, '3', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('3', '10210', '1', '10014', null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('4', '10222', '1', '10015', null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('5', '10688', '1', '10018', null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('6', '10107', '1', '10019', null, null, '3', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('7', '10686', '1', '10022', null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('8', '10055', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('9', '10054', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('10', '10690', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('11', '10691', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('12', '10689', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('13', '10272', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('14', '10692', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('15', '10693', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('16', '10341', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('17', '10135', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('18', '10694', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('19', '10707', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('20', '10696', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('21', '10712', '1', '10093', null, null, '3', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('22', '10063', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('23', '10710', '1', '10095', null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('24', '10081', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('25', '10029', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('26', '10426', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('27', '10125', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('28', '10133', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('29', '10045', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('30', '10311', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('31', '10209', '1', null, null, null, '3', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('32', '10689', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('33', '10035', '1', '10101', null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('34', '10016', '1', '10102', null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('35', '10704', '1', '10103', null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('36', '10041', '1', '10066', null, null, '3', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('37', '10338', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('38', '10053', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('39', '10075', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('40', '10359', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('41', '10085', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('42', '10497', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('43', '10103', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('44', '10706', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('45', '10100', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('46', '10044', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('47', '10645', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('48', '10622', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('49', '10037', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('50', '10034', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('51', '10161', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('52', '10116', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('53', '10038', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('54', '10101', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('55', '10308', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('56', '10392', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('57', '10130', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('58', '10049', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('59', '10714', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('60', '10059', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('61', '10251', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('62', '10184', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('63', '10423', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('64', '10414', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('65', '10297', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('66', '10329', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('67', '10401', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('68', '10169', '1', null, null, null, '1', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('69', '10040', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('70', '10242', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('71', '10691', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('72', '10698', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('73', '10107', '1', null, null, null, '3', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('74', '10702', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('75', '10293', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('76', '10067', '1', null, null, null, '2', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('77', '10159', '1', null, null, null, '2', null, null, '1', '0', null);
INSERT INTO `game_mad_user` VALUES ('78', '10701', '3', null, null, null, '6', null, null, '1', '0', null);
INSERT INTO `game_mad_user` VALUES ('79', '10703', '3', null, null, null, '5', null, null, '1', '0', null);
INSERT INTO `game_mad_user` VALUES ('80', '10124', '3', null, null, null, '6', null, null, '1', '0', null);
INSERT INTO `game_mad_user` VALUES ('81', '10031', '3', null, null, null, '6', null, null, '1', '0', null);
INSERT INTO `game_mad_user` VALUES ('82', '10015', '3', '10010', null, null, '6', null, null, '1', '0', null);
INSERT INTO `game_mad_user` VALUES ('83', '10126', '3', '10012', null, null, '6', null, null, '1', '0', null);
INSERT INTO `game_mad_user` VALUES ('85', '10718', '3', null, null, null, '6', null, null, '1', '0', null);
INSERT INTO `game_mad_user` VALUES ('86', '10720', '3', null, null, null, '6', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('87', '10747', '3', null, null, null, '6', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('88', '10760', '3', null, null, null, '5', null, null, '1', '0', null);
INSERT INTO `game_mad_user` VALUES ('89', '10761', '3', null, null, null, '5', null, null, '0', '1', null);
INSERT INTO `game_mad_user` VALUES ('90', '10762', '3', null, null, null, '5', null, null, '0', '2', null);
INSERT INTO `game_mad_user` VALUES ('91', '10756', '3', null, null, null, '5', null, null, '1', '2', null);
INSERT INTO `game_mad_user` VALUES ('92', '10764', '3', null, null, null, '5', null, null, '1', '1', null);
INSERT INTO `game_mad_user` VALUES ('93', '10765', '3', null, null, null, '5', null, null, '1', '0', null);
INSERT INTO `game_mad_user` VALUES ('96', '5000', '3', null, '2015-08-02 20:46:50', null, '5', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('97', '10774', '3', null, null, null, '5', null, null, '0', '0', null);
INSERT INTO `game_mad_user` VALUES ('103', '10000', '3', null, null, '2015-09-06 10:37:29', '5', null, null, '1', '0', null);

-- ----------------------------
-- Table structure for game_mad_user_vote
-- ----------------------------
DROP TABLE IF EXISTS `game_mad_user_vote`;
CREATE TABLE `game_mad_user_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_mad_user_id` varchar(255) NOT NULL,
  `vote` varchar(255) NOT NULL DEFAULT '1',
  `ip` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `session_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1865 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_mad_user_vote
-- ----------------------------
INSERT INTO `game_mad_user_vote` VALUES ('1', '38', '1', '183.157.160.57', '10062', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('2', '22', '1', '101.87.134.47', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('3', '22', '1', '223.86.204.124', '10041', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('4', '70', '1', '223.86.204.124', '10041', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('5', '38', '1', '223.86.204.124', '10041', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('6', '22', '1', '42.122.195.25', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('7', '22', '1', '110.52.154.62', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('8', '70', '1', '110.52.154.62', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('9', '88', '1', '110.52.154.62', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('10', '38', '1', '110.52.154.62', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('11', '75', '1', '110.52.154.62', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('12', '2', '1', '110.52.154.62', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('13', '22', '1', '125.84.191.136', '10033', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('14', '38', '1', '125.84.191.136', '10033', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('15', '2', '1', '180.111.35.23', '10049', null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('16', '75', '1', '27.152.219.130', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('17', '22', '1', '211.91.223.243', '10065', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('18', '70', '1', '115.199.50.131', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('19', '88', '1', '223.73.245.168', '10362', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('20', '38', '1', '39.182.102.157', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('21', '70', '1', '175.2.143.167', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('22', '88', '1', '211.91.223.243', '10065', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('23', '38', '1', '211.91.223.243', '10065', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('24', '22', '1', '27.152.219.130', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('25', '88', '1', '27.152.219.130', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('26', '38', '1', '112.65.46.134', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('27', '75', '1', '112.65.46.134', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('28', '38', '1', '175.2.143.167', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('29', '22', '1', '39.182.102.157', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('30', '2', '1', '112.65.46.134', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('31', '88', '1', '112.65.46.134', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('32', '75', '1', '58.16.238.49', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('33', '88', '1', '112.90.231.132', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('34', '22', '1', '171.95.225.147', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('35', '38', '1', '171.95.225.147', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('36', '88', '1', '183.152.150.219', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('37', '38', '1', '101.87.134.47', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('38', '22', '1', '101.71.89.254', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('39', '88', '1', '171.95.225.147', '10689', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('40', '2', '1', '61.149.99.242', '10680', null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('41', '22', '1', '218.11.179.216', '10653', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('42', '38', '1', '114.240.199.93', '10449', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('43', '88', '1', '182.150.148.122', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('44', '22', '1', '125.34.3.31', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('45', '22', '1', '114.240.199.93', '10449', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('46', '70', '1', '114.240.199.93', '10449', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('47', '75', '1', '114.240.199.93', '10449', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('48', '88', '1', '125.34.3.31', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('49', '38', '1', '117.57.29.84', null, null, '20');
INSERT INTO `game_mad_user_vote` VALUES ('50', '70', '1', '183.152.150.219', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('51', '22', '1', '183.152.150.219', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('52', '38', '1', '180.111.35.23', '10049', null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('53', '22', '1', '180.111.35.23', '10049', null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('54', '22', '1', '118.75.245.120', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('55', '22', '1', '183.157.160.57', '10062', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('56', '22', '1', '180.106.133.165', '10701', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('57', '88', '1', '60.11.207.244', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('58', '2', '1', '183.152.150.219', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('59', '22', '1', '58.51.85.27', '10053', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('60', '2', '1', '113.71.156.124', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('61', '70', '1', '58.51.85.27', '10053', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('62', '88', '1', '58.51.85.27', '10053', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('63', '38', '1', '58.51.85.27', '10053', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('64', '75', '1', '58.51.85.27', '10053', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('65', '22', '1', '24.238.15.219', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('66', '2', '1', '58.51.85.27', '10053', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('67', '38', '1', '24.238.15.219', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('68', '2', '1', '223.86.204.124', '10041', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('69', '88', '1', '61.149.99.242', '10680', null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('70', '22', '1', '1.189.110.15', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('71', '2', '1', '125.71.66.207', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('72', '22', '1', '125.71.66.207', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('73', '22', '1', '58.16.238.49', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('74', '38', '1', '42.122.195.25', '10786', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('75', '2', '1', '113.200.58.74', '10687', null, '459');
INSERT INTO `game_mad_user_vote` VALUES ('76', '88', '1', '113.200.58.74', '10687', null, '459');
INSERT INTO `game_mad_user_vote` VALUES ('77', '38', '1', '171.106.199.32', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('78', '2', '1', '171.106.199.32', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('79', '88', '1', '171.106.199.32', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('80', '38', '1', '205.164.8.74', null, null, '113');
INSERT INTO `game_mad_user_vote` VALUES ('81', '22', '1', '222.138.60.13', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('82', '2', '1', '125.34.3.31', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('83', '88', '1', '125.84.191.136', '10033', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('84', '38', '1', '125.34.3.31', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('85', '88', '1', '171.221.70.157', '10787', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('86', '2', '1', '171.95.225.147', '10689', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('87', '22', '1', '60.25.238.160', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('88', '22', '1', '140.224.33.61', null, null, '1631');
INSERT INTO `game_mad_user_vote` VALUES ('89', '38', '1', '171.221.70.157', '10787', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('90', '22', '1', '222.72.119.155', '10297', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('91', '38', '1', '222.72.119.155', '10297', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('92', '2', '1', '60.11.207.244', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('93', '22', '1', '14.215.136.2', '10015', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('94', '38', '1', '111.151.82.131', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('95', '88', '1', '140.224.33.61', null, null, '1631');
INSERT INTO `game_mad_user_vote` VALUES ('96', '2', '1', '140.224.33.61', null, null, '1631');
INSERT INTO `game_mad_user_vote` VALUES ('97', '22', '1', '111.151.82.131', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('98', '2', '1', '112.90.231.132', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('99', '22', '1', '112.90.231.132', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('100', '38', '1', '112.90.231.132', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('101', '75', '1', '125.84.191.136', '10033', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('102', '22', '1', '183.60.183.88', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('103', '2', '1', '183.60.183.88', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('104', '38', '1', '222.163.189.11', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('105', '38', '1', '183.60.183.88', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('106', '22', '1', '183.138.139.226', '10069', null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('107', '88', '1', '218.201.180.11', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('108', '2', '1', '218.201.180.11', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('109', '75', '1', '115.199.50.131', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('110', '22', '1', '60.29.64.110', '10063', null, '95');
INSERT INTO `game_mad_user_vote` VALUES ('111', '22', '1', '112.5.236.116', '10038', null, '55');
INSERT INTO `game_mad_user_vote` VALUES ('112', '38', '1', '112.5.236.116', '10038', null, '55');
INSERT INTO `game_mad_user_vote` VALUES ('113', '22', '1', '116.19.104.248', '10703', null, '266');
INSERT INTO `game_mad_user_vote` VALUES ('114', '2', '1', '222.163.189.11', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('115', '22', '1', '111.227.8.252', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('116', '2', '1', '125.124.161.134', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('117', '22', '1', '106.43.134.221', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('118', '22', '1', '14.18.205.46', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('119', '38', '1', '14.18.205.46', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('120', '22', '1', '223.252.194.101', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('121', '22', '1', '183.49.121.64', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('122', '38', '1', '183.49.121.64', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('123', '2', '1', '182.150.148.122', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('124', '22', '1', '117.66.46.70', '10399', null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('125', '70', '1', '117.66.46.70', '10399', null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('126', '70', '1', '122.232.111.184', '10130', null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('127', '75', '1', '61.181.93.202', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('128', '88', '1', '116.249.227.209', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('129', '2', '1', '116.249.227.209', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('130', '22', '1', '61.173.210.225', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('131', '88', '1', '61.173.210.225', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('132', '70', '1', '183.245.167.179', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('133', '70', '1', '1.189.110.15', '10112', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('134', '22', '1', '61.181.93.202', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('135', '2', '1', '61.173.210.225', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('136', '2', '1', '1.189.110.15', '10112', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('137', '22', '1', '111.22.15.233', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('138', '88', '1', '111.22.15.233', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('139', '22', '1', '175.144.28.209', '10788', null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('140', '70', '1', '112.90.231.132', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('141', '38', '1', '14.215.136.2', '10015', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('142', '22', '1', '123.129.101.9', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('143', '70', '1', '123.129.101.9', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('144', '38', '1', '123.129.101.9', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('145', '75', '1', '123.129.101.9', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('146', '22', '1', '118.187.21.61', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('147', '88', '1', '60.29.64.110', null, null, '30');
INSERT INTO `game_mad_user_vote` VALUES ('148', '75', '1', '121.31.122.29', '10070', null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('149', '22', '1', '221.226.47.157', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('150', '88', '1', '221.226.47.157', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('151', '88', '1', '221.226.44.140', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('152', '22', '1', '114.167.242.148', '10790', null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('153', '2', '1', '114.167.242.148', '10790', null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('154', '70', '1', '59.44.63.74', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('155', '22', '1', '116.1.55.66', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('156', '70', '1', '175.3.50.201', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('157', '22', '1', '175.3.50.201', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('158', '38', '1', '27.156.148.53', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('159', '75', '1', '27.156.148.53', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('160', '22', '1', '111.222.236.254', '10752', null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('161', '2', '1', '60.25.238.160', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('162', '22', '1', '111.178.122.175', null, null, '8998');
INSERT INTO `game_mad_user_vote` VALUES ('163', '38', '1', '111.178.122.175', null, null, '8998');
INSERT INTO `game_mad_user_vote` VALUES ('164', '70', '1', '218.11.69.216', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('165', '22', '1', '221.3.134.125', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('166', '38', '1', '221.3.134.125', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('167', '70', '1', '27.156.148.53', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('168', '22', '1', '27.156.148.53', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('169', '22', '1', '218.11.69.216', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('170', '75', '1', '120.84.9.224', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('171', '38', '1', '106.185.35.39', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('172', '22', '1', '106.185.35.39', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('173', '70', '1', '106.185.35.39', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('174', '75', '1', '106.185.35.39', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('175', '88', '1', '220.160.53.14', null, null, '403');
INSERT INTO `game_mad_user_vote` VALUES ('176', '2', '1', '220.160.53.14', null, null, '403');
INSERT INTO `game_mad_user_vote` VALUES ('177', '38', '1', '114.111.166.44', '10000', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('178', '38', '1', '120.84.9.224', '10795', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('179', '22', '1', '120.84.9.224', '10795', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('180', '22', '1', '121.205.39.40', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('181', '38', '1', '121.205.39.40', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('182', '38', '1', '122.234.110.240', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('183', '22', '1', '121.35.155.135', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('184', '2', '1', '121.35.155.135', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('185', '75', '1', '183.157.160.57', '10062', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('186', '70', '1', '183.157.160.57', '10062', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('187', '88', '1', '183.157.160.57', '10062', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('188', '22', '1', '97.93.51.124', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('189', '2', '1', '221.221.218.128', '10692', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('190', '38', '1', '221.221.218.128', '10692', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('191', '22', '1', '110.231.252.30', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('192', '70', '1', '110.231.252.30', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('193', '38', '1', '97.93.51.124', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('194', '75', '1', '112.4.109.5', '10029', null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('195', '22', '1', '112.4.109.5', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('196', '2', '1', '112.4.109.5', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('197', '75', '1', '58.33.241.106', null, null, '680');
INSERT INTO `game_mad_user_vote` VALUES ('198', '22', '1', '106.143.82.181', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('199', '70', '1', '106.143.82.181', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('200', '75', '1', '183.213.56.124', '10797', null, '45');
INSERT INTO `game_mad_user_vote` VALUES ('201', '2', '1', '183.213.56.124', '10797', null, '45');
INSERT INTO `game_mad_user_vote` VALUES ('202', '22', '1', '183.213.56.124', '10797', null, '45');
INSERT INTO `game_mad_user_vote` VALUES ('203', '38', '1', '183.213.56.124', '10797', null, '45');
INSERT INTO `game_mad_user_vote` VALUES ('204', '88', '1', '117.150.246.167', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('205', '2', '1', '117.150.246.167', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('206', '70', '1', '111.140.32.72', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('207', '22', '1', '60.4.226.212', '10156', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('208', '22', '1', '218.26.55.103', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('209', '88', '1', '218.93.253.62', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('210', '2', '1', '218.93.253.62', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('211', '22', '1', '122.189.51.149', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('212', '22', '1', '223.104.20.1', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('213', '22', '1', '117.150.134.145', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('214', '22', '1', '112.21.166.6', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('215', '22', '1', '112.21.166.19', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('216', '2', '1', '122.189.51.149', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('217', '70', '1', '116.26.120.209', '10624', null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('218', '22', '1', '116.26.120.209', '10624', null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('219', '38', '1', '116.26.120.209', '10624', null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('220', '22', '1', '115.211.80.188', '10470', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('221', '38', '1', '115.211.80.188', '10470', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('222', '2', '1', '36.62.159.100', '10054', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('223', '88', '1', '36.62.159.100', '10054', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('224', '22', '1', '36.62.159.100', '10054', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('225', '38', '1', '36.62.159.100', '10054', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('226', '75', '1', '36.62.159.100', '10054', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('227', '2', '1', '101.94.96.197', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('228', '22', '1', '222.89.10.107', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('229', '22', '1', '119.34.71.31', '10184', null, '641');
INSERT INTO `game_mad_user_vote` VALUES ('230', '38', '1', '119.34.71.31', '10184', null, '641');
INSERT INTO `game_mad_user_vote` VALUES ('231', '22', '1', '117.70.12.96', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('232', '38', '1', '117.70.12.96', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('233', '22', '1', '27.208.110.164', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('234', '38', '1', '27.208.110.164', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('235', '22', '1', '117.156.4.2', '10044', null, '34');
INSERT INTO `game_mad_user_vote` VALUES ('236', '88', '1', '27.208.110.164', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('237', '88', '1', '222.89.10.107', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('238', '38', '1', '113.246.211.186', '10800', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('239', '22', '1', '113.246.211.186', '10800', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('240', '38', '1', '60.4.226.212', '10156', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('241', '22', '1', '120.42.57.62', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('242', '88', '1', '113.246.211.186', '10800', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('243', '2', '1', '113.246.211.186', '10800', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('244', '38', '1', '60.213.115.168', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('245', '75', '1', '114.111.167.158', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('246', '38', '1', '114.111.167.158', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('247', '38', '1', '223.73.11.3', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('248', '22', '1', '114.111.167.158', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('249', '2', '1', '114.111.167.158', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('250', '75', '1', '223.73.11.3', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('251', '22', '1', '223.73.11.3', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('252', '88', '1', '116.3.90.27', '10687', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('253', '22', '1', '116.3.90.27', '10687', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('254', '22', '1', '117.70.156.114', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('255', '2', '1', '223.73.11.3', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('256', '88', '1', '171.113.182.246', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('257', '22', '1', '14.124.33.148', '10045', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('258', '22', '1', '183.160.204.230', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('259', '22', '1', '106.187.102.6', '10040', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('260', '38', '1', '14.124.33.148', '10045', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('261', '38', '1', '120.38.101.191', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('262', '75', '1', '14.124.33.148', '10045', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('263', '70', '1', '14.124.33.148', '10045', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('264', '2', '1', '14.124.33.148', '10045', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('265', '38', '1', '120.84.10.193', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('266', '75', '1', '120.84.10.193', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('267', '22', '1', '120.84.10.193', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('268', '38', '1', '121.35.43.136', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('269', '2', '1', '120.84.10.193', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('270', '22', '1', '115.220.84.70', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('271', '70', '1', '111.75.23.61', '10114', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('272', '75', '1', '14.219.39.137', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('273', '22', '1', '14.219.39.137', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('274', '38', '1', '112.229.118.123', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('275', '2', '1', '221.200.112.81', '10718', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('276', '22', '1', '121.35.41.79', '10802', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('277', '22', '1', '111.75.23.61', '10114', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('278', '38', '1', '114.111.166.45', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('279', '22', '1', '113.79.36.175', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('280', '70', '1', '113.79.36.175', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('281', '38', '1', '113.79.36.175', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('282', '2', '1', '113.79.36.175', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('283', '22', '1', '210.47.0.239', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('284', '22', '1', '125.68.20.59', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('285', '38', '1', '183.162.112.167', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('286', '75', '1', '222.90.216.36', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('287', '75', '1', '111.161.73.251', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('288', '22', '1', '125.126.43.81', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('289', '70', '1', '114.111.167.195', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('290', '22', '1', '114.111.167.195', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('291', '75', '1', '114.111.167.195', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('292', '70', '1', '101.20.118.208', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('293', '22', '1', '14.148.143.167', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('294', '38', '1', '14.148.143.167', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('295', '70', '1', '14.219.39.137', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('296', '22', '1', '106.47.224.129', null, null, '117');
INSERT INTO `game_mad_user_vote` VALUES ('297', '75', '1', '118.186.129.197', null, null, '61');
INSERT INTO `game_mad_user_vote` VALUES ('298', '38', '1', '118.186.129.197', null, null, '61');
INSERT INTO `game_mad_user_vote` VALUES ('299', '88', '1', '119.138.210.163', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('300', '2', '1', '119.138.210.163', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('301', '88', '1', '14.219.39.137', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('302', '2', '1', '14.219.39.137', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('303', '38', '1', '110.186.79.28', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('304', '2', '1', '110.186.79.28', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('305', '88', '1', '221.200.112.81', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('306', '22', '1', '221.200.112.81', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('307', '38', '1', '221.200.112.81', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('308', '22', '1', '60.49.114.218', '10788', null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('309', '22', '1', '121.15.91.72', '10075', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('310', '38', '1', '121.15.91.72', '10075', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('311', '22', '1', '115.44.176.146', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('312', '38', '1', '14.106.120.176', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('313', '22', '1', '14.106.120.176', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('314', '75', '1', '101.254.182.2', null, null, '9346');
INSERT INTO `game_mad_user_vote` VALUES ('315', '38', '1', '113.205.29.68', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('316', '70', '1', '110.186.79.28', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('317', '22', '1', '110.186.79.28', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('318', '88', '1', '27.21.110.4', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('319', '22', '1', '121.56.239.233', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('320', '38', '1', '121.56.239.233', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('321', '22', '1', '114.96.50.175', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('322', '38', '1', '114.96.50.175', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('323', '88', '1', '110.186.79.28', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('324', '22', '1', '183.248.162.226', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('325', '75', '1', '183.248.162.226', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('326', '70', '1', '183.248.162.226', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('327', '22', '1', '119.136.159.104', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('328', '22', '1', '116.23.135.76', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('329', '38', '1', '182.132.198.2', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('330', '22', '1', '182.132.198.2', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('331', '22', '1', '183.22.172.104', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('332', '38', '1', '221.237.20.54', '10640', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('333', '75', '1', '221.237.20.54', '10640', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('334', '22', '1', '171.104.104.65', null, null, '737');
INSERT INTO `game_mad_user_vote` VALUES ('335', '38', '1', '221.237.117.168', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('336', '88', '1', '183.54.75.105', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('337', '2', '1', '182.142.139.99', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('338', '2', '1', '183.157.160.57', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('339', '2', '1', '218.8.150.50', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('340', '88', '1', '218.8.150.50', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('341', '70', '1', '182.123.217.30', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('342', '88', '1', '182.123.217.30', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('343', '22', '1', '223.86.85.120', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('344', '70', '1', '223.86.85.120', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('345', '38', '1', '223.86.85.120', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('346', '75', '1', '223.86.85.120', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('347', '22', '1', '27.151.172.110', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('348', '2', '1', '27.151.172.110', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('349', '75', '1', '27.151.172.110', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('350', '88', '1', '27.151.172.110', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('351', '88', '1', '117.140.84.37', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('352', '2', '1', '117.140.84.37', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('353', '22', '1', '117.140.84.37', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('354', '22', '1', '60.170.236.204', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('355', '75', '1', '60.170.236.204', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('356', '75', '1', '119.130.186.38', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('357', '2', '1', '60.222.133.192', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('358', '75', '1', '60.222.133.192', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('359', '75', '1', '223.73.195.198', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('360', '22', '1', '223.73.195.198', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('361', '75', '1', '14.215.136.5', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('362', '75', '1', '123.158.146.156', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('363', '70', '1', '123.165.224.153', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('364', '22', '1', '123.165.224.153', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('365', '75', '1', '123.165.224.153', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('366', '38', '1', '123.165.224.153', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('367', '22', '1', '27.153.12.255', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('368', '70', '1', '27.153.12.255', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('369', '88', '1', '27.153.12.255', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('370', '38', '1', '27.153.12.255', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('371', '75', '1', '27.153.12.255', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('372', '2', '1', '27.153.12.255', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('373', '22', '1', '125.126.199.163', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('374', '2', '1', '125.126.199.163', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('375', '22', '1', '121.33.32.112', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('376', '88', '1', '121.33.32.112', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('377', '70', '1', '121.33.32.112', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('378', '38', '1', '121.33.32.112', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('379', '88', '1', '60.11.210.232', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('380', '2', '1', '60.11.210.232', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('381', '38', '1', '171.111.43.234', '10811', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('382', '75', '1', '171.111.43.234', '10811', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('383', '22', '1', '171.111.43.234', '10811', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('384', '70', '1', '171.111.43.234', '10811', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('385', '88', '1', '171.111.43.234', '10811', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('386', '2', '1', '171.111.43.234', '10811', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('387', '22', '1', '117.147.28.250', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('388', '38', '1', '117.147.28.250', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('389', '2', '1', '117.147.28.250', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('390', '75', '1', '223.73.124.243', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('391', '2', '1', '59.172.32.244', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('392', '70', '1', '59.172.32.244', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('393', '70', '1', '112.102.96.39', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('394', '88', '1', '27.190.65.240', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('395', '38', '1', '27.190.65.240', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('396', '22', '1', '112.102.96.39', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('397', '88', '1', '112.102.96.39', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('398', '2', '1', '112.102.96.39', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('399', '75', '1', '112.102.96.39', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('400', '38', '1', '112.102.96.39', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('401', '70', '1', '14.148.140.63', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('402', '38', '1', '14.148.140.63', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('403', '88', '1', '14.148.140.63', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('404', '22', '1', '113.57.225.53', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('405', '38', '1', '113.57.225.53', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('406', '2', '1', '14.148.140.63', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('407', '22', '1', '171.109.12.145', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('408', '22', '1', '222.208.225.169', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('409', '22', '1', '124.228.230.87', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('410', '75', '1', '222.94.246.127', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('411', '22', '1', '222.94.246.127', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('412', '70', '1', '222.94.246.127', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('413', '38', '1', '222.94.246.127', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('414', '22', '1', '36.22.42.165', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('415', '81', '1', '221.239.244.59', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('416', '54', '1', '27.156.148.53', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('417', '72', '1', '27.156.148.53', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('418', '103', '1', '27.156.148.53', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('419', '81', '1', '27.156.148.53', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('420', '72', '1', '117.185.106.226', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('421', '8', '1', '59.38.97.211', null, null, '99');
INSERT INTO `game_mad_user_vote` VALUES ('422', '9', '1', '59.38.97.211', null, null, '99');
INSERT INTO `game_mad_user_vote` VALUES ('423', '8', '1', '106.123.129.80', '10720', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('424', '9', '1', '106.123.129.80', '10720', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('425', '8', '1', '60.11.210.232', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('426', '9', '1', '60.11.210.232', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('427', '81', '1', '125.84.191.136', '10033', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('428', '8', '1', '220.160.53.14', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('429', '103', '1', '42.122.58.39', '10786', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('430', '81', '1', '42.122.58.39', '10786', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('431', '54', '1', '180.102.106.223', '10757', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('432', '8', '1', '180.102.106.223', '10757', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('433', '54', '1', '180.111.35.23', '10049', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('434', '72', '1', '180.111.35.23', '10049', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('435', '81', '1', '180.111.35.23', '10049', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('436', '103', '1', '180.111.35.23', '10049', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('437', '103', '1', '183.157.160.57', '10062', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('438', '8', '1', '180.111.35.23', '10049', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('439', '81', '1', '183.157.160.57', '10062', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('440', '72', '1', '183.157.160.57', '10062', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('441', '54', '1', '183.157.160.57', '10062', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('442', '54', '1', '111.151.82.131', null, null, '30');
INSERT INTO `game_mad_user_vote` VALUES ('443', '72', '1', '111.151.82.131', null, null, '30');
INSERT INTO `game_mad_user_vote` VALUES ('444', '8', '1', '183.157.160.57', '10062', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('445', '103', '1', '111.151.82.131', null, null, '30');
INSERT INTO `game_mad_user_vote` VALUES ('446', '81', '1', '111.151.82.131', null, null, '30');
INSERT INTO `game_mad_user_vote` VALUES ('447', '81', '1', '218.89.146.125', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('448', '54', '1', '119.139.117.139', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('449', '54', '1', '42.122.58.39', '10786', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('450', '81', '1', '175.2.229.120', null, null, '35');
INSERT INTO `game_mad_user_vote` VALUES ('451', '9', '1', '182.147.237.214', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('452', '9', '1', '220.160.53.14', '10696', null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('453', '8', '1', '111.222.236.254', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('454', '8', '1', '221.239.244.59', '10297', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('455', '81', '1', '114.96.50.175', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('456', '54', '1', '125.84.191.136', '10033', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('457', '81', '1', '183.54.90.36', '10338', null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('458', '8', '1', '58.51.85.27', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('459', '8', '1', '117.185.106.226', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('460', '8', '1', '183.54.90.36', '10338', null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('461', '9', '1', '114.253.150.116', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('462', '8', '1', '114.253.150.116', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('463', '54', '1', '89.134.48.79', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('464', '54', '1', '58.51.85.27', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('465', '72', '1', '58.51.85.27', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('466', '81', '1', '58.51.85.27', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('467', '103', '1', '58.51.85.27', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('468', '9', '1', '27.191.66.45', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('469', '8', '1', '113.65.192.82', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('470', '54', '1', '183.54.90.36', '10338', null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('471', '9', '1', '183.54.90.36', '10338', null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('472', '81', '1', '101.87.134.47', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('473', '9', '1', '101.87.134.47', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('474', '81', '1', '120.42.165.235', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('475', '103', '1', '120.42.165.235', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('476', '8', '1', '120.42.165.235', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('477', '8', '1', '112.65.46.134', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('478', '9', '1', '112.65.46.134', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('479', '8', '1', '114.96.50.175', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('480', '54', '1', '114.96.50.175', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('481', '103', '1', '114.96.50.175', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('482', '81', '1', '183.138.180.250', '10069', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('483', '8', '1', '171.36.134.184', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('484', '72', '1', '171.36.134.184', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('485', '54', '1', '125.34.3.31', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('486', '8', '1', '113.200.58.72', '10685', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('487', '9', '1', '113.200.58.72', '10685', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('488', '9', '1', '114.96.50.175', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('489', '103', '1', '115.55.86.205', '10698', null, '419');
INSERT INTO `game_mad_user_vote` VALUES ('490', '81', '1', '115.55.86.205', '10698', null, '419');
INSERT INTO `game_mad_user_vote` VALUES ('491', '54', '1', '14.152.94.41', '10015', null, '99');
INSERT INTO `game_mad_user_vote` VALUES ('492', '81', '1', '75.143.44.58', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('493', '8', '1', '123.168.128.96', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('494', '103', '1', '123.168.128.96', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('495', '103', '1', '14.209.235.27', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('496', '8', '1', '14.209.235.27', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('497', '9', '1', '14.209.235.27', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('498', '72', '1', '125.34.3.31', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('499', '8', '1', '14.152.94.41', '10015', null, '99');
INSERT INTO `game_mad_user_vote` VALUES ('500', '9', '1', '14.152.94.41', '10015', null, '99');
INSERT INTO `game_mad_user_vote` VALUES ('501', '103', '1', '221.239.244.59', '10297', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('502', '8', '1', '126.218.67.139', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('503', '72', '1', '221.239.244.59', '10297', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('504', '54', '1', '221.239.244.59', '10297', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('505', '72', '1', '121.31.122.29', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('506', '8', '1', '125.34.3.31', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('507', '8', '1', '36.22.42.165', '10490', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('508', '54', '1', '183.16.148.188', null, null, '52');
INSERT INTO `game_mad_user_vote` VALUES ('509', '81', '1', '183.26.210.165', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('510', '54', '1', '121.31.122.29', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('511', '8', '1', '121.31.122.29', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('512', '103', '1', '121.31.122.29', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('513', '9', '1', '121.31.122.29', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('514', '81', '1', '121.31.122.29', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('515', '81', '1', '125.34.3.31', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('516', '9', '1', '175.153.40.109', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('517', '8', '1', '175.153.40.109', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('518', '8', '1', '115.220.84.70', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('519', '54', '1', '219.137.89.35', '10813', null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('520', '81', '1', '219.137.89.35', '10813', null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('521', '72', '1', '219.137.89.35', '10813', null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('522', '103', '1', '219.137.89.35', '10813', null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('523', '8', '1', '219.137.89.35', '10813', null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('524', '9', '1', '219.137.89.35', '10813', null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('525', '8', '1', '36.62.156.138', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('526', '103', '1', '36.62.156.138', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('527', '81', '1', '183.60.183.18', '10792', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('528', '8', '1', '106.187.102.6', '10040', null, '96');
INSERT INTO `game_mad_user_vote` VALUES ('529', '8', '1', '120.84.10.193', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('530', '81', '1', '36.62.156.138', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('531', '8', '1', '27.191.66.45', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('532', '8', '1', '125.84.191.136', '10033', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('533', '9', '1', '125.34.3.31', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('534', '54', '1', '223.86.85.126', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('535', '54', '1', '112.4.109.7', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('536', '72', '1', '223.86.85.126', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('537', '8', '1', '119.121.23.93', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('538', '103', '1', '119.121.23.93', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('539', '81', '1', '223.86.85.126', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('540', '9', '1', '111.222.236.254', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('541', '54', '1', '120.84.10.193', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('542', '103', '1', '120.84.10.193', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('543', '103', '1', '223.86.85.126', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('544', '103', '1', '112.4.109.7', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('545', '8', '1', '171.113.101.1', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('546', '9', '1', '171.113.101.1', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('547', '8', '1', '223.86.85.126', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('548', '9', '1', '115.55.86.205', '10698', null, '419');
INSERT INTO `game_mad_user_vote` VALUES ('549', '8', '1', '115.55.86.205', '10698', null, '419');
INSERT INTO `game_mad_user_vote` VALUES ('550', '72', '1', '121.110.61.113', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('551', '9', '1', '60.25.238.160', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('552', '81', '1', '116.1.55.66', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('553', '103', '1', '60.25.238.160', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('554', '8', '1', '60.25.238.160', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('555', '54', '1', '153.229.117.195', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('556', '81', '1', '114.98.129.92', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('557', '103', '1', '114.98.129.92', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('558', '8', '1', '114.98.129.92', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('559', '54', '1', '60.223.221.18', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('560', '8', '1', '99.16.130.60', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('561', '9', '1', '218.111.66.57', '10788', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('562', '8', '1', '112.5.236.116', null, null, '55');
INSERT INTO `game_mad_user_vote` VALUES ('563', '103', '1', '112.5.236.116', null, null, '55');
INSERT INTO `game_mad_user_vote` VALUES ('564', '81', '1', '112.5.236.116', null, null, '55');
INSERT INTO `game_mad_user_vote` VALUES ('565', '54', '1', '112.5.236.116', null, null, '55');
INSERT INTO `game_mad_user_vote` VALUES ('566', '72', '1', '112.5.236.116', null, null, '55');
INSERT INTO `game_mad_user_vote` VALUES ('567', '54', '1', '60.179.158.57', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('568', '81', '1', '114.167.242.148', '10790', null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('569', '54', '1', '221.221.218.128', '10692', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('570', '103', '1', '221.221.218.128', '10692', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('571', '8', '1', '221.221.218.128', '10692', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('572', '103', '1', '58.93.53.236', '10819', null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('573', '81', '1', '183.163.207.117', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('574', '8', '1', '113.5.2.42', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('575', '9', '1', '113.5.2.42', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('576', '81', '1', '211.10.187.84', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('577', '103', '1', '101.1.162.53', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('578', '54', '1', '219.155.42.72', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('579', '72', '1', '111.182.182.89', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('580', '8', '1', '218.93.253.62', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('581', '9', '1', '218.93.253.62', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('582', '54', '1', '117.136.76.171', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('583', '8', '1', '117.136.76.171', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('584', '81', '1', '115.211.80.188', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('585', '103', '1', '115.211.80.188', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('586', '81', '1', '223.104.9.189', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('587', '81', '1', '60.29.64.110', '10063', null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('588', '103', '1', '60.29.64.110', '10063', null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('589', '8', '1', '60.29.64.110', '10063', null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('590', '54', '1', '182.110.148.238', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('591', '9', '1', '182.110.148.238', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('592', '103', '1', '182.110.148.238', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('593', '72', '1', '123.246.72.93', null, null, '45');
INSERT INTO `game_mad_user_vote` VALUES ('594', '8', '1', '117.70.8.62', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('595', '8', '1', '117.147.28.250', null, null, '374');
INSERT INTO `game_mad_user_vote` VALUES ('596', '9', '1', '117.147.28.250', null, null, '374');
INSERT INTO `game_mad_user_vote` VALUES ('597', '54', '1', '106.185.54.35', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('598', '72', '1', '106.185.54.35', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('599', '103', '1', '106.185.54.35', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('600', '81', '1', '106.185.54.35', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('601', '54', '1', '23.239.23.22', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('602', '72', '1', '23.239.23.22', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('603', '81', '1', '23.239.23.22', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('604', '103', '1', '23.239.23.22', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('605', '54', '1', '88.208.229.173', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('606', '72', '1', '88.208.229.173', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('607', '81', '1', '88.208.229.173', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('608', '103', '1', '88.208.229.173', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('609', '8', '1', '113.5.2.52', null, null, '509');
INSERT INTO `game_mad_user_vote` VALUES ('610', '9', '1', '113.5.2.52', null, null, '509');
INSERT INTO `game_mad_user_vote` VALUES ('611', '8', '1', '115.228.72.4', '10719', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('612', '54', '1', '115.228.72.4', '10719', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('613', '54', '1', '119.34.71.19', '10184', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('614', '103', '1', '223.73.11.187', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('615', '81', '1', '223.73.11.187', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('616', '54', '1', '223.73.11.187', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('617', '8', '1', '223.73.11.187', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('618', '9', '1', '223.73.11.187', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('619', '8', '1', '60.4.226.212', '10156', null, '5413');
INSERT INTO `game_mad_user_vote` VALUES ('620', '8', '1', '119.34.71.19', '10184', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('621', '81', '1', '119.34.71.19', '10184', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('622', '103', '1', '119.34.71.19', '10184', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('623', '72', '1', '119.34.71.19', '10184', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('624', '54', '1', '61.184.85.8', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('625', '54', '1', '27.129.135.117', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('626', '72', '1', '27.129.135.117', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('627', '103', '1', '27.129.135.117', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('628', '81', '1', '27.129.135.117', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('629', '8', '1', '58.19.148.53', null, null, '14');
INSERT INTO `game_mad_user_vote` VALUES ('630', '54', '1', '58.19.148.53', null, null, '14');
INSERT INTO `game_mad_user_vote` VALUES ('631', '72', '1', '58.19.148.53', null, null, '14');
INSERT INTO `game_mad_user_vote` VALUES ('632', '81', '1', '58.19.148.53', null, null, '14');
INSERT INTO `game_mad_user_vote` VALUES ('633', '103', '1', '58.19.148.53', null, null, '14');
INSERT INTO `game_mad_user_vote` VALUES ('634', '9', '1', '58.19.148.53', null, null, '14');
INSERT INTO `game_mad_user_vote` VALUES ('635', '72', '1', '223.104.45.81', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('636', '54', '1', '223.104.45.81', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('637', '81', '1', '223.104.45.81', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('638', '103', '1', '223.104.45.81', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('639', '81', '1', '97.93.51.124', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('640', '54', '1', '97.93.51.124', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('641', '54', '1', '121.32.145.56', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('642', '72', '1', '121.32.145.56', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('643', '81', '1', '121.32.145.56', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('644', '103', '1', '121.32.145.56', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('645', '8', '1', '97.93.51.124', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('646', '54', '1', '59.36.150.170', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('647', '72', '1', '59.36.150.170', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('648', '81', '1', '59.36.150.170', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('649', '103', '1', '59.36.150.170', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('650', '81', '1', '106.120.40.91', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('651', '8', '1', '60.11.208.58', '10776', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('652', '9', '1', '60.11.208.58', '10776', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('653', '8', '1', '223.246.219.223', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('654', '81', '1', '223.246.219.223', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('655', '9', '1', '223.246.219.223', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('656', '8', '1', '121.11.58.88', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('657', '54', '1', '171.111.43.234', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('658', '54', '1', '116.3.80.107', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('659', '72', '1', '171.111.43.234', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('660', '103', '1', '116.3.80.107', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('661', '81', '1', '171.111.43.234', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('662', '103', '1', '171.111.43.234', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('663', '8', '1', '171.111.43.234', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('664', '9', '1', '171.111.43.234', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('665', '54', '1', '27.208.110.164', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('666', '54', '1', '183.213.56.108', '10797', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('667', '72', '1', '183.213.56.108', '10797', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('668', '81', '1', '183.213.56.108', '10797', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('669', '103', '1', '183.213.56.108', '10797', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('670', '9', '1', '183.213.56.108', '10797', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('671', '8', '1', '183.213.56.108', '10797', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('672', '72', '1', '117.140.64.43', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('673', '54', '1', '117.140.64.43', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('674', '8', '1', '139.189.122.12', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('675', '103', '1', '117.169.6.15', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('676', '8', '1', '14.219.47.239', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('677', '9', '1', '14.219.47.239', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('678', '8', '1', '182.148.111.242', null, null, '9993');
INSERT INTO `game_mad_user_vote` VALUES ('679', '81', '1', '14.219.47.239', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('680', '81', '1', '58.55.34.152', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('681', '103', '1', '117.156.2.20', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('682', '103', '1', '58.55.34.152', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('683', '8', '1', '117.140.84.52', '10197', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('684', '54', '1', '117.140.84.52', '10197', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('685', '81', '1', '117.140.84.52', '10197', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('686', '8', '1', '113.246.211.186', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('687', '8', '1', '58.55.34.152', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('688', '8', '1', '60.181.129.183', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('689', '9', '1', '60.181.129.183', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('690', '54', '1', '60.181.129.183', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('691', '9', '1', '183.145.78.46', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('692', '54', '1', '223.86.250.166', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('693', '72', '1', '223.86.250.166', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('694', '81', '1', '223.86.250.166', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('695', '8', '1', '223.86.250.166', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('696', '54', '1', '123.158.146.156', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('697', '103', '1', '123.158.146.156', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('698', '9', '1', '123.158.146.156', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('699', '8', '1', '112.85.43.198', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('700', '8', '1', '110.248.65.234', null, null, '93');
INSERT INTO `game_mad_user_vote` VALUES ('701', '9', '1', '110.248.65.234', null, null, '93');
INSERT INTO `game_mad_user_vote` VALUES ('702', '72', '1', '115.199.53.204', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('703', '8', '1', '117.66.6.117', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('704', '9', '1', '117.66.6.117', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('705', '81', '1', '180.212.201.58', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('706', '103', '1', '180.212.201.58', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('707', '9', '1', '180.212.201.58', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('708', '103', '1', '180.213.44.92', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('709', '103', '1', '42.122.250.56', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('710', '81', '1', '36.1.99.217', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('711', '9', '1', '36.1.99.217', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('712', '103', '1', '36.1.99.217', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('713', '54', '1', '119.144.35.71', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('714', '103', '1', '119.144.35.71', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('715', '81', '1', '119.144.35.71', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('716', '81', '1', '183.39.247.45', '10794', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('717', '8', '1', '120.84.11.81', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('718', '54', '1', '121.15.101.47', '10075', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('719', '8', '1', '121.15.101.47', '10075', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('720', '103', '1', '121.15.101.47', '10075', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('721', '81', '1', '121.15.101.47', '10075', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('722', '8', '1', '125.196.227.60', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('723', '8', '1', '60.11.207.20', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('724', '9', '1', '60.11.207.20', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('725', '9', '1', '222.191.144.191', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('726', '103', '1', '222.191.144.191', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('727', '8', '1', '222.191.144.191', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('728', '72', '1', '222.191.144.191', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('729', '54', '1', '222.191.144.191', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('730', '81', '1', '222.191.144.191', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('731', '8', '1', '111.20.20.63', '10825', null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('732', '54', '1', '221.225.90.220', '10701', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('733', '72', '1', '221.225.90.220', '10701', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('734', '103', '1', '221.225.90.220', '10701', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('735', '81', '1', '221.225.90.220', '10701', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('736', '9', '1', '221.225.90.220', '10701', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('737', '8', '1', '183.35.251.210', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('738', '81', '1', '183.35.251.210', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('739', '54', '1', '1.190.187.110', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('740', '8', '1', '1.190.187.110', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('741', '54', '1', '183.29.178.69', '10045', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('742', '72', '1', '183.29.178.69', '10045', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('743', '81', '1', '183.29.178.69', '10045', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('744', '81', '1', '117.156.4.27', '10044', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('745', '54', '1', '117.156.4.27', '10044', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('746', '72', '1', '117.156.4.27', '10044', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('747', '8', '1', '113.5.2.27', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('748', '9', '1', '113.5.2.27', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('749', '8', '1', '14.148.140.63', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('750', '103', '1', '14.148.140.63', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('751', '9', '1', '14.148.140.63', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('752', '8', '1', '60.11.209.90', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('753', '9', '1', '60.11.209.90', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('754', '81', '1', '219.16.142.131', '10829', null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('755', '8', '1', '121.232.218.177', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('756', '81', '1', '115.218.209.112', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('757', '8', '1', '14.106.126.210', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('758', '103', '1', '14.106.126.210', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('759', '54', '1', '112.87.245.17', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('760', '8', '1', '183.213.56.151', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('761', '54', '1', '124.64.108.234', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('762', '72', '1', '124.64.108.234', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('763', '8', '1', '113.83.198.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('764', '72', '1', '113.83.198.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('765', '54', '1', '113.83.198.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('766', '9', '1', '60.11.207.171', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('767', '8', '1', '60.11.207.171', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('768', '9', '1', '115.211.80.188', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('769', '8', '1', '115.211.80.188', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('770', '8', '1', '223.73.106.94', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('771', '81', '1', '115.63.15.96', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('772', '9', '1', '115.63.15.96', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('773', '8', '1', '117.143.174.255', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('774', '81', '1', '61.8.94.75', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('775', '103', '1', '219.16.142.131', '10829', null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('776', '99', '1', '171.113.93.234', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('777', '45', '1', '223.86.85.115', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('778', '99', '1', '218.201.180.11', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('779', '10', '1', '171.113.93.234', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('780', '99', '1', '60.11.207.171', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('781', '10', '1', '60.11.207.171', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('782', '83', '1', '223.86.85.115', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('783', '99', '1', '123.139.75.242', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('784', '99', '1', '223.86.85.115', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('785', '99', '1', '14.209.235.27', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('786', '10', '1', '14.209.235.27', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('787', '27', '1', '223.86.85.115', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('788', '45', '1', '183.163.207.117', '10399', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('789', '27', '1', '27.156.148.53', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('790', '61', '1', '27.156.148.53', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('791', '83', '1', '27.156.148.53', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('792', '45', '1', '27.156.148.53', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('793', '83', '1', '116.24.45.95', '10338', null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('794', '99', '1', '116.24.45.95', '10338', null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('795', '61', '1', '111.182.182.89', '10081', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('796', '45', '1', '114.96.50.175', null, null, '46043');
INSERT INTO `game_mad_user_vote` VALUES ('797', '10', '1', '114.96.50.175', null, null, '46043');
INSERT INTO `game_mad_user_vote` VALUES ('798', '99', '1', '123.134.232.23', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('799', '99', '1', '183.40.119.30', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('800', '99', '1', '112.224.65.128', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('801', '45', '1', '171.36.134.184', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('802', '27', '1', '117.143.174.255', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('803', '45', '1', '117.143.174.255', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('804', '99', '1', '182.121.14.127', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('805', '45', '1', '114.167.242.148', '10790', null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('806', '27', '1', '114.111.166.44', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('807', '99', '1', '114.111.166.44', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('808', '99', '1', '117.81.249.150', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('809', '99', '1', '183.157.160.57', '10062', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('810', '83', '1', '183.157.160.57', '10062', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('811', '99', '1', '49.80.98.104', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('812', '45', '1', '106.187.102.6', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('813', '10', '1', '116.24.45.95', '10338', null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('814', '99', '1', '112.5.236.116', null, null, '55');
INSERT INTO `game_mad_user_vote` VALUES ('815', '45', '1', '112.5.236.116', null, null, '55');
INSERT INTO `game_mad_user_vote` VALUES ('816', '99', '1', '182.241.195.79', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('817', '27', '1', '116.24.45.95', '10338', null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('818', '45', '1', '116.24.45.95', '10338', null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('819', '61', '1', '218.20.63.211', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('820', '99', '1', '119.96.106.69', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('821', '45', '1', '121.56.254.234', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('822', '99', '1', '58.19.254.150', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('823', '61', '1', '116.24.45.95', '10338', null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('824', '99', '1', '117.151.42.199', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('825', '99', '1', '119.36.131.36', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('826', '99', '1', '220.160.53.14', '10696', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('827', '10', '1', '220.160.53.14', '10696', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('828', '27', '1', '221.7.249.230', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('829', '61', '1', '221.7.249.230', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('830', '83', '1', '221.7.249.230', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('831', '45', '1', '221.7.249.230', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('832', '45', '1', '120.201.224.91', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('833', '83', '1', '120.201.224.91', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('834', '45', '1', '24.238.15.219', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('835', '99', '1', '24.238.15.219', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('836', '27', '1', '24.238.15.219', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('837', '45', '1', '180.176.88.23', '10346', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('838', '27', '1', '113.99.208.120', null, null, '426');
INSERT INTO `game_mad_user_vote` VALUES ('839', '83', '1', '27.200.87.108', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('840', '10', '1', '180.176.88.23', '10346', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('841', '10', '1', '14.152.94.89', '10015', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('842', '27', '1', '60.25.238.160', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('843', '99', '1', '14.152.94.89', '10015', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('844', '99', '1', '113.200.58.67', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('845', '10', '1', '113.200.58.67', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('846', '99', '1', '124.72.174.170', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('847', '10', '1', '175.137.136.111', '10788', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('848', '61', '1', '60.25.238.160', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('849', '61', '1', '115.239.86.144', '10130', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('850', '45', '1', '115.239.86.144', '10130', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('851', '10', '1', '115.239.86.144', '10130', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('852', '99', '1', '115.239.86.144', '10130', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('853', '99', '1', '60.25.238.160', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('854', '45', '1', '125.39.9.144', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('855', '45', '1', '60.25.238.160', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('856', '83', '1', '106.185.28.48', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('857', '45', '1', '106.185.28.48', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('858', '61', '1', '106.185.28.48', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('859', '45', '1', '182.123.110.179', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('860', '10', '1', '60.25.238.160', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('861', '99', '1', '36.107.6.8', '10720', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('862', '10', '1', '36.107.6.8', '10720', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('863', '27', '1', '183.60.183.40', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('864', '99', '1', '60.11.212.32', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('865', '10', '1', '60.11.212.32', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('866', '99', '1', '112.4.109.7', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('867', '45', '1', '219.155.42.72', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('868', '61', '1', '219.155.42.72', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('869', '27', '1', '219.155.42.72', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('870', '83', '1', '219.155.42.72', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('871', '99', '1', '111.243.132.238', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('872', '99', '1', '222.51.39.29', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('873', '99', '1', '59.172.44.169', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('874', '83', '1', '223.104.13.174', null, null, '755');
INSERT INTO `game_mad_user_vote` VALUES ('875', '61', '1', '223.104.13.174', null, null, '755');
INSERT INTO `game_mad_user_vote` VALUES ('876', '27', '1', '223.104.13.174', null, null, '755');
INSERT INTO `game_mad_user_vote` VALUES ('877', '45', '1', '223.104.13.174', null, null, '755');
INSERT INTO `game_mad_user_vote` VALUES ('878', '99', '1', '223.104.13.174', null, null, '755');
INSERT INTO `game_mad_user_vote` VALUES ('879', '10', '1', '223.104.13.174', null, null, '755');
INSERT INTO `game_mad_user_vote` VALUES ('880', '10', '1', '218.93.253.62', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('881', '99', '1', '218.93.253.62', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('882', '10', '1', '221.221.194.106', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('883', '10', '1', '125.34.203.4', '10690', null, '472');
INSERT INTO `game_mad_user_vote` VALUES ('884', '99', '1', '125.34.203.4', '10690', null, '472');
INSERT INTO `game_mad_user_vote` VALUES ('885', '99', '1', '60.20.141.239', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('886', '10', '1', '60.20.141.239', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('887', '61', '1', '60.20.141.239', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('888', '27', '1', '115.55.82.111', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('889', '45', '1', '115.55.82.111', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('890', '83', '1', '115.55.82.111', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('891', '45', '1', '123.96.182.145', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('892', '99', '1', '123.96.182.145', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('893', '99', '1', '124.167.191.194', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('894', '45', '1', '120.42.165.235', null, null, '83');
INSERT INTO `game_mad_user_vote` VALUES ('895', '83', '1', '117.21.165.64', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('896', '99', '1', '117.136.45.209', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('897', '45', '1', '119.34.70.86', '10184', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('898', '27', '1', '119.34.70.86', '10184', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('899', '45', '1', '111.227.8.75', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('900', '27', '1', '117.70.158.183', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('901', '27', '1', '106.39.120.162', '10065', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('902', '45', '1', '106.39.120.162', '10065', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('903', '99', '1', '106.39.120.162', '10065', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('904', '83', '1', '106.117.121.11', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('905', '27', '1', '223.73.11.187', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('906', '45', '1', '223.73.11.187', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('907', '61', '1', '223.73.11.187', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('908', '27', '1', '171.111.43.234', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('909', '61', '1', '171.111.43.234', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('910', '99', '1', '171.111.43.234', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('911', '10', '1', '171.111.43.234', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('912', '83', '1', '171.111.43.234', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('913', '45', '1', '171.111.43.234', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('914', '45', '1', '36.22.42.194', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('915', '10', '1', '171.95.225.147', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('916', '99', '1', '171.95.225.147', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('917', '45', '1', '123.147.196.18', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('918', '45', '1', '183.208.99.39', '10192', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('919', '61', '1', '110.186.79.195', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('920', '27', '1', '110.186.79.195', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('921', '45', '1', '222.26.211.44', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('922', '10', '1', '222.26.211.44', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('923', '45', '1', '97.93.51.124', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('924', '99', '1', '97.93.51.124', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('925', '83', '1', '175.3.49.202', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('926', '10', '1', '175.3.49.202', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('927', '45', '1', '14.148.142.186', null, null, '92');
INSERT INTO `game_mad_user_vote` VALUES ('928', '61', '1', '118.187.21.47', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('929', '61', '1', '101.245.165.43', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('930', '99', '1', '112.111.251.79', '10282', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('931', '27', '1', '60.25.241.232', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('932', '45', '1', '60.25.241.232', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('933', '45', '1', '183.29.185.31', '10045', null, '62');
INSERT INTO `game_mad_user_vote` VALUES ('934', '27', '1', '183.29.185.31', '10045', null, '62');
INSERT INTO `game_mad_user_vote` VALUES ('935', '83', '1', '183.29.185.31', '10045', null, '62');
INSERT INTO `game_mad_user_vote` VALUES ('936', '99', '1', '125.84.188.81', '10033', null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('937', '10', '1', '125.84.188.81', '10033', null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('938', '45', '1', '125.84.188.81', '10033', null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('939', '45', '1', '117.156.2.35', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('940', '99', '1', '221.224.134.178', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('941', '45', '1', '183.39.247.45', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('942', '45', '1', '124.77.64.98', '10714', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('943', '27', '1', '124.77.64.98', '10714', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('944', '83', '1', '124.77.64.98', '10714', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('945', '45', '1', '221.224.134.178', null, null, '878');
INSERT INTO `game_mad_user_vote` VALUES ('946', '99', '1', '221.223.4.249', null, null, '696');
INSERT INTO `game_mad_user_vote` VALUES ('947', '45', '1', '221.223.4.249', null, null, '696');
INSERT INTO `game_mad_user_vote` VALUES ('948', '10', '1', '221.223.4.249', null, null, '696');
INSERT INTO `game_mad_user_vote` VALUES ('949', '10', '1', '115.228.72.4', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('950', '99', '1', '218.8.150.126', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('951', '10', '1', '218.8.150.126', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('952', '99', '1', '58.33.241.106', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('953', '45', '1', '211.81.255.2', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('954', '45', '1', '111.58.36.84', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('955', '83', '1', '114.249.24.215', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('956', '61', '1', '122.193.10.130', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('957', '45', '1', '113.103.137.120', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('958', '45', '1', '221.221.218.128', '10692', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('959', '10', '1', '221.221.218.128', '10692', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('960', '99', '1', '60.11.213.19', null, null, '7854');
INSERT INTO `game_mad_user_vote` VALUES ('961', '45', '1', '49.72.248.44', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('962', '99', '1', '183.138.180.250', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('963', '83', '1', '183.138.180.250', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('964', '83', '1', '117.173.104.199', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('965', '10', '1', '218.201.180.11', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('966', '60', '1', '183.157.160.57', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('967', '96', '1', '183.157.160.57', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('968', '60', '1', '114.228.204.36', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('969', '1', '1', '171.113.103.65', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('970', '5', '1', '171.113.103.65', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('971', '1', '1', '49.113.158.119', '10720', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('972', '5', '1', '49.113.158.119', '10720', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('973', '1', '1', '113.200.58.72', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('974', '5', '1', '113.200.58.72', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('975', '60', '1', '60.29.64.110', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('976', '1', '1', '220.160.53.14', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('977', '5', '1', '220.160.53.14', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('978', '1', '1', '114.243.129.229', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('979', '5', '1', '114.243.129.229', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('980', '96', '1', '115.239.86.144', '10130', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('981', '96', '1', '183.17.222.95', null, null, '7864');
INSERT INTO `game_mad_user_vote` VALUES ('982', '1', '1', '218.201.180.11', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('983', '5', '1', '218.201.180.11', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('984', '37', '1', '183.17.222.95', null, null, '7864');
INSERT INTO `game_mad_user_vote` VALUES ('985', '96', '1', '223.73.11.187', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('986', '37', '1', '223.73.11.187', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('987', '1', '1', '223.73.11.187', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('988', '96', '1', '113.92.183.199', '10338', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('989', '60', '1', '113.92.183.199', '10338', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('990', '37', '1', '113.92.183.199', '10338', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('991', '25', '1', '113.92.183.199', '10338', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('992', '1', '1', '113.92.183.199', '10338', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('993', '5', '1', '113.92.183.199', '10338', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('994', '25', '1', '14.215.136.51', '10015', null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('995', '1', '1', '119.140.69.132', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('996', '5', '1', '119.140.69.132', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('997', '37', '1', '219.92.164.145', '10788', null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('998', '5', '1', '219.92.164.145', '10788', null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('999', '60', '1', '223.86.85.115', '10041', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1000', '96', '1', '114.167.242.148', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1001', '60', '1', '114.167.242.148', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1002', '25', '1', '223.86.85.115', '10041', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1003', '37', '1', '223.86.85.115', '10041', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1004', '37', '1', '14.215.136.51', '10015', null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1005', '37', '1', '123.166.29.231', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1006', '1', '1', '106.187.102.6', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1007', '37', '1', '106.187.102.6', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1008', '25', '1', '223.73.11.187', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1009', '60', '1', '223.73.11.187', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1010', '37', '1', '139.189.122.12', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1011', '1', '1', '14.215.136.51', '10015', null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1012', '1', '1', '125.84.188.81', '10033', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1013', '37', '1', '180.176.88.23', '10346', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1014', '60', '1', '112.4.109.18', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1015', '1', '1', '112.4.109.18', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1016', '25', '1', '112.4.109.18', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1017', '37', '1', '112.4.109.18', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1018', '60', '1', '119.237.101.57', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1019', '1', '1', '119.237.101.57', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1020', '1', '1', '218.93.253.62', '10107', null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1021', '5', '1', '218.93.253.62', '10107', null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1022', '1', '1', '27.38.0.106', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1023', '5', '1', '60.20.131.38', '10687', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1024', '5', '1', '27.38.0.136', '10775', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1025', '96', '1', '115.211.80.188', '10470', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1026', '60', '1', '115.211.80.188', '10470', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1027', '60', '1', '183.29.184.161', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1028', '96', '1', '183.29.184.161', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1029', '37', '1', '183.29.184.161', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1030', '25', '1', '183.29.184.161', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1031', '1', '1', '60.20.131.38', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1032', '37', '1', '222.241.10.108', '10085', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1033', '25', '1', '222.241.10.108', '10085', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1034', '1', '1', '101.94.99.13', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1035', '37', '1', '117.156.4.5', '10044', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1036', '25', '1', '106.117.121.11', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1037', '25', '1', '114.233.2.195', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1038', '25', '1', '202.103.247.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1039', '25', '1', '180.175.165.91', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1040', '37', '1', '36.22.43.12', '10490', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1041', '96', '1', '27.156.148.53', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1042', '60', '1', '27.156.148.53', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1043', '25', '1', '27.156.148.53', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1044', '37', '1', '27.156.148.53', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1045', '1', '1', '125.117.164.114', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('1046', '37', '1', '117.70.13.250', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1047', '60', '1', '221.4.141.41', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1048', '5', '1', '221.4.141.41', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1049', '60', '1', '183.204.152.7', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1050', '1', '1', '60.11.214.49', '10055', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1051', '5', '1', '60.11.214.49', '10055', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1052', '96', '1', '60.25.241.232', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('1053', '5', '1', '111.243.132.238', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('1054', '60', '1', '49.79.155.134', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1055', '1', '1', '114.111.166.43', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1056', '5', '1', '114.111.166.43', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1057', '37', '1', '61.171.118.178', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1058', '5', '1', '61.171.118.178', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1059', '1', '1', '61.171.118.178', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1060', '60', '1', '221.172.26.85', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1061', '96', '1', '221.172.26.85', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1062', '60', '1', '14.147.119.45', null, null, '86382');
INSERT INTO `game_mad_user_vote` VALUES ('1063', '37', '1', '14.147.119.45', '10841', null, '86382');
INSERT INTO `game_mad_user_vote` VALUES ('1064', '1', '1', '14.147.119.45', '10841', null, '86382');
INSERT INTO `game_mad_user_vote` VALUES ('1065', '5', '1', '14.147.119.45', '10841', null, '86382');
INSERT INTO `game_mad_user_vote` VALUES ('1066', '96', '1', '106.83.61.248', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1067', '20', '1', '218.201.180.11', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1068', '7', '1', '218.201.180.11', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1069', '20', '1', '60.11.214.49', '10055', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1070', '7', '1', '60.11.214.49', '10055', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1071', '40', '1', '61.131.115.172', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1072', '20', '1', '119.140.69.132', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1073', '7', '1', '119.140.69.132', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1074', '20', '1', '61.131.115.172', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1075', '7', '1', '61.131.115.172', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1076', '40', '1', '175.177.175.223', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1077', '63', '1', '223.73.10.22', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1078', '20', '1', '113.200.58.70', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1079', '7', '1', '113.200.58.70', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1080', '7', '1', '220.160.53.14', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1081', '20', '1', '175.177.175.223', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1082', '47', '1', '223.86.204.118', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1083', '63', '1', '223.86.204.118', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1084', '40', '1', '223.86.204.118', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1085', '20', '1', '115.55.82.111', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1086', '40', '1', '113.92.183.199', '10338', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1087', '47', '1', '113.92.183.199', '10338', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1088', '46', '1', '113.92.183.199', '10338', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1089', '20', '1', '183.60.183.93', '10423', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1090', '63', '1', '113.92.183.199', '10338', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1091', '20', '1', '113.92.183.199', '10338', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1092', '7', '1', '113.92.183.199', '10338', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1093', '40', '1', '111.193.44.154', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1094', '20', '1', '221.239.244.59', null, null, '27');
INSERT INTO `game_mad_user_vote` VALUES ('1095', '7', '1', '14.215.136.11', '10015', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1096', '20', '1', '126.67.238.160', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1097', '20', '1', '14.215.136.11', '10015', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1098', '20', '1', '60.54.86.75', '10788', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1099', '20', '1', '114.249.20.185', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1100', '7', '1', '114.249.20.185', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1101', '20', '1', '116.11.18.227', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1102', '20', '1', '12.68.181.2', '10356', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1103', '63', '1', '12.68.181.2', '10356', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1104', '20', '1', '112.4.109.18', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1105', '7', '1', '112.4.109.18', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1106', '40', '1', '112.4.109.18', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1107', '63', '1', '112.4.109.18', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1108', '20', '1', '112.66.245.64', '10113', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1109', '7', '1', '112.66.245.64', '10113', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1110', '20', '1', '218.93.253.62', '10107', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1111', '7', '1', '218.93.253.62', '10107', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1112', '20', '1', '125.117.196.177', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('1113', '47', '1', '223.247.194.107', '10073', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1114', '20', '1', '221.4.141.41', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1115', '40', '1', '223.247.194.107', '10073', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1116', '63', '1', '223.247.194.107', '10073', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1117', '46', '1', '223.247.194.107', '10073', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1118', '20', '1', '223.247.194.107', '10073', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1119', '7', '1', '223.247.194.107', '10073', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1120', '47', '1', '203.219.243.96', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1121', '40', '1', '223.73.10.22', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1122', '47', '1', '223.73.10.22', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1123', '46', '1', '223.73.10.22', '10359', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1124', '40', '1', '116.31.175.1', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1125', '40', '1', '218.15.111.69', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1126', '40', '1', '171.106.194.56', null, null, '18');
INSERT INTO `game_mad_user_vote` VALUES ('1127', '20', '1', '218.8.150.190', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1128', '7', '1', '218.8.150.190', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1129', '63', '1', '114.106.255.191', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1130', '20', '1', '114.106.255.191', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1131', '7', '1', '114.106.255.191', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1132', '47', '1', '114.106.255.191', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1133', '20', '1', '175.148.100.230', null, null, '55');
INSERT INTO `game_mad_user_vote` VALUES ('1134', '63', '1', '175.148.100.230', null, null, '55');
INSERT INTO `game_mad_user_vote` VALUES ('1135', '7', '1', '175.148.100.230', null, null, '55');
INSERT INTO `game_mad_user_vote` VALUES ('1136', '63', '1', '61.131.115.172', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1137', '47', '1', '106.184.5.65', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1138', '20', '1', '106.184.5.65', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1139', '7', '1', '106.184.5.65', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1140', '7', '1', '14.147.119.45', '10841', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1141', '20', '1', '14.147.119.45', '10841', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1142', '63', '1', '115.58.150.219', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1143', '7', '1', '115.58.150.219', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1144', '20', '1', '117.67.228.218', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1145', '20', '1', '14.106.125.151', '10116', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1146', '7', '1', '221.239.244.59', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1147', '40', '1', '163.204.10.82', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1148', '63', '1', '163.204.10.82', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1149', '47', '1', '163.204.10.82', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1150', '46', '1', '163.204.10.82', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1151', '63', '1', '180.143.190.148', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1152', '63', '1', '221.2.243.2', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1153', '63', '1', '180.175.165.91', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1154', '20', '1', '133.236.100.142', null, null, '44');
INSERT INTO `game_mad_user_vote` VALUES ('1155', '20', '1', '60.11.209.60', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1156', '7', '1', '60.11.209.60', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1157', '20', '1', '50.245.179.241', '10033', null, '64');
INSERT INTO `game_mad_user_vote` VALUES ('1158', '7', '1', '50.245.179.241', '10033', null, '64');
INSERT INTO `game_mad_user_vote` VALUES ('1159', '47', '1', '50.245.179.241', '10033', null, '64');
INSERT INTO `game_mad_user_vote` VALUES ('1160', '63', '1', '223.65.190.129', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1161', '40', '1', '58.246.91.198', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1162', '63', '1', '58.33.241.106', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1163', '20', '1', '113.200.58.72', '10210', null, '90');
INSERT INTO `game_mad_user_vote` VALUES ('1164', '7', '1', '113.200.58.72', '10210', null, '90');
INSERT INTO `game_mad_user_vote` VALUES ('1165', '20', '1', '221.230.188.138', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1166', '20', '1', '183.186.6.141', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1167', '63', '1', '183.186.6.141', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1168', '7', '1', '183.186.6.141', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1169', '40', '1', '183.186.6.141', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1170', '20', '1', '49.118.135.28', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('1171', '7', '1', '49.118.135.28', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('1172', '47', '1', '119.121.205.164', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1173', '63', '1', '119.121.205.164', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1174', '46', '1', '119.121.205.164', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1175', '40', '1', '112.250.123.164', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1176', '47', '1', '112.250.123.164', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1177', '20', '1', '112.250.123.164', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1178', '46', '1', '112.250.123.164', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1179', '20', '1', '122.232.39.182', '10719', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1180', '7', '1', '122.232.39.182', '10719', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1181', '20', '1', '58.55.34.124', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('1182', '40', '1', '58.55.34.124', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('1183', '59', '1', '183.49.120.87', '10338', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1184', '98', '1', '183.49.120.87', '10338', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1185', '16', '1', '49.118.135.28', '10720', null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('1186', '3', '1', '49.118.135.28', '10720', null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('1187', '57', '1', '115.229.188.190', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1188', '98', '1', '14.215.136.18', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1189', '50', '1', '14.215.136.18', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1190', '16', '1', '218.201.180.11', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1191', '3', '1', '218.201.180.11', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1192', '16', '1', '115.209.176.66', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1193', '98', '1', '115.209.176.66', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1194', '57', '1', '115.209.176.66', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1195', '57', '1', '120.210.170.221', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1196', '16', '1', '183.49.120.87', '10338', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1197', '3', '1', '183.49.120.87', '10338', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1198', '57', '1', '183.49.120.87', '10338', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1199', '57', '1', '115.239.86.144', '10130', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1200', '16', '1', '115.239.86.144', '10130', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1201', '50', '1', '183.49.120.87', '10338', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1202', '3', '1', '111.161.32.70', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('1203', '16', '1', '111.161.32.70', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('1204', '16', '1', '171.113.96.116', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1205', '3', '1', '171.113.96.116', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1206', '3', '1', '112.17.241.214', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1207', '59', '1', '223.86.204.139', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1208', '98', '1', '223.86.204.139', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1209', '57', '1', '223.86.204.139', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1210', '50', '1', '223.86.204.139', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1211', '98', '1', '183.157.160.57', '10062', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1212', '59', '1', '222.138.63.68', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1213', '98', '1', '222.138.63.68', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1214', '16', '1', '112.250.123.164', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1215', '3', '1', '112.250.123.164', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1216', '16', '1', '120.201.224.91', null, null, '73');
INSERT INTO `game_mad_user_vote` VALUES ('1217', '50', '1', '120.201.224.91', null, null, '73');
INSERT INTO `game_mad_user_vote` VALUES ('1218', '3', '1', '120.201.224.91', null, null, '73');
INSERT INTO `game_mad_user_vote` VALUES ('1219', '16', '1', '222.138.63.68', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1220', '3', '1', '222.138.63.68', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1221', '59', '1', '60.25.241.232', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1222', '50', '1', '60.25.241.232', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1223', '16', '1', '113.200.58.72', null, null, '90');
INSERT INTO `game_mad_user_vote` VALUES ('1224', '3', '1', '113.200.58.72', null, null, '90');
INSERT INTO `game_mad_user_vote` VALUES ('1225', '57', '1', '59.172.147.139', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1226', '16', '1', '115.62.251.108', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1227', '57', '1', '60.25.241.232', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1228', '16', '1', '119.140.69.183', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1229', '3', '1', '119.140.69.183', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1230', '59', '1', '113.106.101.108', '10015', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1231', '98', '1', '110.248.66.106', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1232', '57', '1', '110.248.66.106', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1233', '16', '1', '110.248.66.106', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1234', '3', '1', '110.248.66.106', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1235', '57', '1', '1.189.124.140', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1236', '16', '1', '220.160.53.14', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1237', '3', '1', '220.160.53.14', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1238', '16', '1', '113.106.101.108', '10015', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1239', '50', '1', '175.153.40.103', '10034', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1240', '98', '1', '175.153.40.103', '10034', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1241', '57', '1', '27.151.35.195', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1242', '57', '1', '118.181.249.60', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1243', '3', '1', '112.66.245.64', '10113', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1244', '16', '1', '112.66.245.64', '10113', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1245', '3', '1', '219.139.93.25', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1246', '3', '1', '60.49.120.157', '10788', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1247', '59', '1', '60.49.120.157', '10788', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1248', '3', '1', '123.112.252.158', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1249', '16', '1', '123.112.252.158', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1250', '98', '1', '112.4.109.18', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1251', '57', '1', '58.55.187.164', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1252', '59', '1', '112.4.109.18', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1253', '50', '1', '112.4.109.18', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1254', '3', '1', '112.4.109.18', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1255', '16', '1', '183.213.56.116', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1256', '59', '1', '12.68.181.2', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1257', '50', '1', '12.68.181.2', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1258', '57', '1', '116.21.120.13', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('1259', '59', '1', '116.21.120.13', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('1260', '16', '1', '125.117.196.177', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1261', '50', '1', '116.16.49.207', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1262', '98', '1', '116.16.49.207', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1263', '16', '1', '123.163.176.43', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1264', '3', '1', '123.163.176.43', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1265', '16', '1', '218.93.253.62', '10107', null, '64');
INSERT INTO `game_mad_user_vote` VALUES ('1266', '3', '1', '218.93.253.62', '10107', null, '64');
INSERT INTO `game_mad_user_vote` VALUES ('1267', '59', '1', '122.67.26.23', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1268', '16', '1', '111.181.183.26', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1269', '50', '1', '122.67.26.23', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1270', '57', '1', '111.181.183.26', '10870', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1271', '59', '1', '116.16.49.207', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1272', '16', '1', '211.138.116.225', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('1273', '57', '1', '27.156.148.53', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1274', '98', '1', '27.156.148.53', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1275', '50', '1', '27.156.148.53', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1276', '59', '1', '27.156.148.53', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1277', '16', '1', '27.156.148.53', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1278', '3', '1', '27.156.148.53', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1279', '98', '1', '111.72.42.254', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1280', '16', '1', '111.72.42.254', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1281', '57', '1', '111.246.131.237', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1282', '98', '1', '111.246.131.237', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1283', '50', '1', '111.246.131.237', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1284', '16', '1', '111.246.131.237', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1285', '16', '1', '218.8.150.196', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1286', '3', '1', '218.8.150.196', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1287', '50', '1', '14.122.91.86', null, null, '50');
INSERT INTO `game_mad_user_vote` VALUES ('1288', '59', '1', '14.122.91.86', null, null, '50');
INSERT INTO `game_mad_user_vote` VALUES ('1289', '16', '1', '223.104.19.83', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('1290', '50', '1', '182.142.137.211', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1291', '57', '1', '61.131.115.172', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1292', '59', '1', '61.131.115.172', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1293', '3', '1', '61.131.115.172', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1294', '16', '1', '61.131.115.172', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1295', '57', '1', '42.91.241.182', '10766', null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('1296', '3', '1', '117.136.37.224', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1297', '16', '1', '117.136.37.224', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1298', '16', '1', '180.157.230.186', '10128', null, '91');
INSERT INTO `game_mad_user_vote` VALUES ('1299', '57', '1', '180.157.230.186', '10128', null, '91');
INSERT INTO `game_mad_user_vote` VALUES ('1300', '50', '1', '59.172.33.26', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('1301', '59', '1', '14.147.122.94', '10841', null, '540');
INSERT INTO `game_mad_user_vote` VALUES ('1302', '50', '1', '14.147.122.94', '10841', null, '540');
INSERT INTO `game_mad_user_vote` VALUES ('1303', '16', '1', '116.11.18.227', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1304', '57', '1', '14.152.94.103', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('1305', '59', '1', '122.225.36.139', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1306', '16', '1', '14.152.94.103', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('1307', '50', '1', '110.6.64.161', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1308', '98', '1', '219.159.107.142', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('1309', '16', '1', '110.6.64.161', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1310', '59', '1', '110.6.64.161', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1311', '3', '1', '98.224.85.103', '10033', null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('1312', '16', '1', '98.224.85.103', '10033', null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('1313', '16', '1', '183.138.165.80', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1314', '3', '1', '183.138.165.80', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1315', '59', '1', '183.138.165.80', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1316', '50', '1', '110.184.46.52', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1317', '57', '1', '117.57.33.72', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1318', '57', '1', '123.165.224.153', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1319', '59', '1', '119.133.152.63', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1320', '50', '1', '119.133.152.63', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1321', '50', '1', '112.13.49.200', null, null, '93');
INSERT INTO `game_mad_user_vote` VALUES ('1322', '57', '1', '112.13.49.200', null, null, '93');
INSERT INTO `game_mad_user_vote` VALUES ('1323', '16', '1', '60.11.214.167', '10055', null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1324', '3', '1', '60.11.214.167', '10055', null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1325', '4', '1', '60.11.214.167', '10055', null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1326', '85', '1', '60.11.214.167', '10055', null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1327', '4', '1', '49.113.134.233', '10720', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1328', '85', '1', '49.113.134.233', '10720', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1329', '4', '1', '113.200.58.72', '10685', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1330', '85', '1', '113.200.58.72', '10685', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1331', '34', '1', '122.243.10.98', '10772', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1332', '104', '1', '211.162.33.60', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1333', '34', '1', '175.148.100.230', null, null, '55');
INSERT INTO `game_mad_user_vote` VALUES ('1334', '4', '1', '114.94.139.40', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1335', '4', '1', '171.113.97.24', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1336', '85', '1', '171.113.97.24', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1337', '4', '1', '117.136.94.196', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1338', '85', '1', '117.136.94.196', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1339', '34', '1', '223.86.204.139', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1340', '23', '1', '223.86.204.139', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1341', '4', '1', '223.86.204.139', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1342', '104', '1', '223.86.204.139', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1343', '48', '1', '223.86.204.139', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1344', '104', '1', '140.224.102.128', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1345', '34', '1', '139.205.71.205', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('1346', '104', '1', '112.90.236.62', null, null, '41');
INSERT INTO `game_mad_user_vote` VALUES ('1347', '34', '1', '182.129.53.209', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1348', '104', '1', '14.30.0.42', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1349', '4', '1', '220.160.53.233', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1350', '85', '1', '220.160.53.233', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1351', '104', '1', '221.3.134.35', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1352', '4', '1', '114.240.118.40', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1353', '85', '1', '114.240.118.40', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1354', '4', '1', '98.126.98.38', null, null, '35');
INSERT INTO `game_mad_user_vote` VALUES ('1355', '4', '1', '58.30.233.196', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1356', '34', '1', '121.229.120.145', '10121', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1357', '85', '1', '58.30.233.196', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1358', '34', '1', '183.49.120.87', '10338', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1359', '104', '1', '112.96.118.137', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1360', '23', '1', '175.148.100.230', null, null, '55');
INSERT INTO `game_mad_user_vote` VALUES ('1361', '104', '1', '175.42.226.170', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1362', '4', '1', '163.179.157.67', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1363', '34', '1', '163.179.157.67', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1364', '4', '1', '14.209.230.30', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1365', '85', '1', '14.209.230.30', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1366', '104', '1', '113.228.205.55', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1367', '85', '1', '113.228.205.55', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1368', '34', '1', '75.143.44.58', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('1369', '48', '1', '113.228.205.55', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1370', '34', '1', '113.228.205.55', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1371', '23', '1', '113.228.205.55', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1372', '4', '1', '113.228.205.55', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1373', '34', '1', '59.38.97.152', '10015', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1374', '34', '1', '120.84.9.224', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1375', '4', '1', '180.119.0.37', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('1376', '85', '1', '180.119.0.37', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('1377', '34', '1', '98.224.85.103', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1378', '34', '1', '116.1.55.143', '10016', null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1379', '34', '1', '24.238.15.219', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('1380', '85', '1', '24.238.15.219', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('1381', '34', '1', '67.186.6.119', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1382', '34', '1', '117.169.6.46', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1383', '4', '1', '117.169.6.46', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1384', '85', '1', '218.201.180.11', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1385', '4', '1', '218.201.180.11', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1386', '4', '1', '218.93.253.62', '10107', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1387', '85', '1', '218.93.253.62', '10107', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1388', '104', '1', '122.91.195.88', null, null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('1389', '104', '1', '27.158.170.222', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1390', '34', '1', '119.34.69.68', '10184', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1391', '34', '1', '112.4.109.20', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1392', '48', '1', '112.4.109.20', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1393', '34', '1', '42.239.41.238', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1394', '4', '1', '42.239.41.238', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1395', '104', '1', '117.136.20.166', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1396', '4', '1', '112.4.109.20', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1397', '34', '1', '218.76.28.110', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1398', '4', '1', '112.17.245.67', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1399', '4', '1', '221.224.134.178', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1400', '4', '1', '222.161.201.14', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1401', '85', '1', '222.161.201.14', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1402', '104', '1', '58.16.238.49', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1403', '34', '1', '117.10.250.138', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1404', '48', '1', '117.10.250.138', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1405', '23', '1', '221.4.141.41', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1406', '4', '1', '110.6.68.223', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1407', '85', '1', '110.6.68.223', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1408', '104', '1', '110.88.206.241', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1409', '34', '1', '106.39.120.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1410', '48', '1', '106.39.120.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1411', '104', '1', '106.39.120.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1412', '4', '1', '110.83.173.13', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('1413', '85', '1', '110.83.173.13', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('1414', '23', '1', '106.39.120.162', '10065', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1415', '34', '1', '180.103.20.161', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1416', '4', '1', '171.107.168.144', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1417', '34', '1', '171.107.168.144', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1418', '104', '1', '120.84.12.248', null, null, '16');
INSERT INTO `game_mad_user_vote` VALUES ('1419', '104', '1', '123.147.196.18', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1420', '4', '1', '123.147.196.18', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1421', '23', '1', '120.84.12.248', null, null, '16');
INSERT INTO `game_mad_user_vote` VALUES ('1422', '23', '1', '121.236.219.244', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1423', '4', '1', '60.11.213.152', null, null, '65');
INSERT INTO `game_mad_user_vote` VALUES ('1424', '85', '1', '60.11.213.152', null, null, '65');
INSERT INTO `game_mad_user_vote` VALUES ('1425', '34', '1', '223.151.1.246', '10085', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1426', '34', '1', '1.58.160.190', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1427', '34', '1', '106.187.102.6', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1428', '23', '1', '1.58.160.190', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1429', '34', '1', '116.11.18.227', '10096', null, '86');
INSERT INTO `game_mad_user_vote` VALUES ('1430', '34', '1', '221.2.243.2', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1431', '4', '1', '183.202.31.6', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1432', '85', '1', '183.202.31.6', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1433', '104', '1', '183.202.31.6', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1434', '4', '1', '120.84.12.248', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1435', '34', '1', '120.84.12.248', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1436', '48', '1', '120.84.12.248', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1437', '4', '1', '117.136.94.168', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('1438', '85', '1', '117.136.94.168', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('1439', '104', '1', '222.47.208.18', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1440', '4', '1', '1.189.124.140', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1441', '4', '1', '59.172.34.122', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1442', '34', '1', '111.76.132.224', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1443', '34', '1', '61.131.115.172', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1444', '48', '1', '61.131.115.172', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1445', '23', '1', '60.5.206.171', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1446', '48', '1', '89.134.48.79', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1447', '104', '1', '114.111.166.47', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1448', '4', '1', '122.232.39.182', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1449', '85', '1', '122.232.39.182', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1450', '4', '1', '113.200.58.73', null, null, '4595');
INSERT INTO `game_mad_user_vote` VALUES ('1451', '85', '1', '113.200.58.73', null, null, '4595');
INSERT INTO `game_mad_user_vote` VALUES ('1452', '34', '1', '14.122.236.237', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1453', '23', '1', '14.122.236.237', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1454', '104', '1', '14.122.236.237', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1455', '18', '1', '218.201.180.11', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1456', '6', '1', '218.201.180.11', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1457', '36', '1', '223.86.204.135', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1458', '26', '1', '106.39.120.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1459', '36', '1', '106.39.120.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1460', '51', '1', '106.39.120.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1461', '29', '1', '106.39.120.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1462', '51', '1', '223.86.204.135', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1463', '29', '1', '223.86.204.135', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1464', '6', '1', '180.115.128.19', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1465', '18', '1', '180.115.128.19', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1466', '18', '1', '60.11.213.152', null, null, '65');
INSERT INTO `game_mad_user_vote` VALUES ('1467', '6', '1', '60.11.213.152', null, null, '65');
INSERT INTO `game_mad_user_vote` VALUES ('1468', '36', '1', '123.11.159.175', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1469', '18', '1', '113.200.58.73', '10685', null, '64');
INSERT INTO `game_mad_user_vote` VALUES ('1470', '6', '1', '113.200.58.73', '10685', null, '64');
INSERT INTO `game_mad_user_vote` VALUES ('1471', '18', '1', '220.160.53.233', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1472', '6', '1', '220.160.53.233', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1473', '26', '1', '111.194.94.96', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1474', '29', '1', '111.194.94.96', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1475', '36', '1', '111.194.94.96', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1476', '51', '1', '111.194.94.96', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1477', '36', '1', '113.92.183.137', '10338', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1478', '6', '1', '24.238.15.219', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('1479', '51', '1', '223.73.24.198', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1480', '18', '1', '49.113.134.233', '10720', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1481', '6', '1', '49.113.134.233', '10720', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1482', '36', '1', '175.148.100.230', null, null, '55');
INSERT INTO `game_mad_user_vote` VALUES ('1483', '18', '1', '171.113.107.240', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1484', '6', '1', '171.113.107.240', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1485', '51', '1', '222.77.130.164', null, null, '69');
INSERT INTO `game_mad_user_vote` VALUES ('1486', '36', '1', '180.157.218.218', '10161', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1487', '26', '1', '180.157.218.218', '10161', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1488', '51', '1', '180.157.218.218', '10161', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1489', '51', '1', '112.4.109.20', '10029', null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1490', '36', '1', '112.4.109.20', '10029', null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1491', '36', '1', '98.224.85.103', '10033', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1492', '18', '1', '59.38.97.107', '10015', null, '56');
INSERT INTO `game_mad_user_vote` VALUES ('1493', '26', '1', '223.86.204.135', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1494', '51', '1', '67.186.6.119', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1495', '29', '1', '1.75.0.105', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1496', '6', '1', '218.93.253.62', '10107', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1497', '18', '1', '218.93.253.62', '10107', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1498', '36', '1', '126.67.238.160', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1499', '29', '1', '126.67.238.160', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1500', '18', '1', '126.67.238.160', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1501', '51', '1', '58.33.241.106', '10213', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1502', '36', '1', '58.33.241.106', '10213', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1503', '29', '1', '58.33.241.106', '10213', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1504', '26', '1', '58.33.241.106', '10213', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1505', '36', '1', '14.122.236.66', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('1506', '29', '1', '14.122.236.66', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('1507', '26', '1', '27.208.110.164', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1508', '29', '1', '60.184.179.64', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1509', '29', '1', '223.247.194.95', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1510', '29', '1', '223.86.204.119', null, null, '65');
INSERT INTO `game_mad_user_vote` VALUES ('1511', '51', '1', '223.86.204.119', null, null, '65');
INSERT INTO `game_mad_user_vote` VALUES ('1512', '36', '1', '223.86.204.119', null, null, '65');
INSERT INTO `game_mad_user_vote` VALUES ('1513', '26', '1', '223.86.204.119', null, null, '65');
INSERT INTO `game_mad_user_vote` VALUES ('1514', '18', '1', '114.111.166.45', null, null, '60');
INSERT INTO `game_mad_user_vote` VALUES ('1515', '26', '1', '119.97.196.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1516', '29', '1', '119.97.196.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1517', '36', '1', '119.97.196.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1518', '51', '1', '119.97.196.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1519', '36', '1', '101.94.96.164', '10010', null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('1520', '51', '1', '124.160.67.130', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1521', '36', '1', '97.93.51.124', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1522', '29', '1', '97.93.51.124', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1523', '6', '1', '14.122.236.66', null, null, '734');
INSERT INTO `game_mad_user_vote` VALUES ('1524', '18', '1', '111.36.226.5', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1525', '6', '1', '111.36.226.5', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1526', '26', '1', '119.122.244.137', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1527', '6', '1', '113.95.114.17', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1528', '18', '1', '113.95.114.17', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1529', '51', '1', '183.92.62.13', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1530', '18', '1', '113.78.226.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1531', '18', '1', '110.83.173.13', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1532', '6', '1', '110.83.173.13', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1533', '29', '1', '124.234.66.197', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1534', '18', '1', '183.131.105.173', '10694', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1535', '6', '1', '183.131.105.173', '10694', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1536', '51', '1', '14.122.236.66', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1537', '51', '1', '113.92.183.137', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('1538', '26', '1', '117.169.6.61', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1539', '29', '1', '117.169.6.61', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1540', '36', '1', '117.169.6.61', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1541', '51', '1', '60.168.233.30', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1542', '18', '1', '125.68.143.35', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1543', '18', '1', '117.31.85.253', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1544', '18', '1', '60.11.208.35', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1545', '6', '1', '60.11.208.35', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1546', '26', '1', '42.203.217.121', null, null, '5');
INSERT INTO `game_mad_user_vote` VALUES ('1547', '36', '1', '59.38.97.244', '10015', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1548', '18', '1', '59.38.97.244', '10015', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1549', '51', '1', '116.11.18.227', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1550', '18', '1', '27.200.183.7', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1551', '6', '1', '27.200.183.7', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1552', '51', '1', '139.205.65.199', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1553', '6', '1', '115.210.39.149', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1554', '18', '1', '223.199.119.163', '10113', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1555', '6', '1', '223.199.119.163', '10113', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1556', '26', '1', '1.25.131.148', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1557', '29', '1', '183.228.201.70', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1558', '18', '1', '183.228.201.70', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1559', '26', '1', '221.237.118.245', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1560', '29', '1', '117.169.6.30', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1561', '29', '1', '42.235.97.13', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1562', '51', '1', '42.235.97.13', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1563', '36', '1', '42.235.97.13', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1564', '36', '1', '139.205.65.199', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1565', '6', '1', '42.235.97.13', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1566', '18', '1', '183.159.116.196', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1567', '18', '1', '60.11.208.70', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1568', '6', '1', '60.11.208.70', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1569', '36', '1', '59.172.34.122', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1570', '29', '1', '124.152.183.183', null, null, '28');
INSERT INTO `game_mad_user_vote` VALUES ('1571', '18', '1', '124.152.183.183', null, null, '28');
INSERT INTO `game_mad_user_vote` VALUES ('1572', '26', '1', '120.83.212.24', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1573', '18', '1', '119.183.159.223', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1574', '6', '1', '119.183.159.223', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1575', '51', '1', '59.66.174.23', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1576', '36', '1', '59.66.174.23', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1577', '6', '1', '60.182.167.78', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1578', '102', '1', '110.83.173.13', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('1579', '86', '1', '110.83.173.13', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('1580', '86', '1', '219.137.199.3', null, null, '6');
INSERT INTO `game_mad_user_vote` VALUES ('1581', '86', '1', '183.232.55.199', '10720', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1582', '102', '1', '183.232.55.199', '10720', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1583', '102', '1', '49.113.134.233', '10760', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1584', '86', '1', '49.113.134.233', '10760', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1585', '102', '1', '119.183.159.223', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1586', '86', '1', '119.183.159.223', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1587', '31', '1', '14.215.136.6', '10015', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1588', '31', '1', '117.136.54.63', null, null, '75');
INSERT INTO `game_mad_user_vote` VALUES ('1589', '102', '1', '14.215.136.6', '10015', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1590', '102', '1', '113.200.58.72', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1591', '86', '1', '113.200.58.72', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1592', '31', '1', '97.93.51.124', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1593', '24', '1', '97.93.51.124', '10356', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1594', '86', '1', '24.238.15.219', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1595', '31', '1', '112.4.109.7', '10029', null, '681');
INSERT INTO `game_mad_user_vote` VALUES ('1596', '12', '1', '116.234.121.191', null, null, '31');
INSERT INTO `game_mad_user_vote` VALUES ('1597', '41', '1', '180.143.46.54', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1598', '31', '1', '106.39.120.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1599', '41', '1', '106.39.120.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1600', '24', '1', '106.39.120.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1601', '12', '1', '106.39.120.162', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1602', '86', '1', '60.182.167.78', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1603', '102', '1', '59.38.97.164', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1604', '24', '1', '223.73.10.246', '10359', null, '88');
INSERT INTO `game_mad_user_vote` VALUES ('1605', '12', '1', '223.73.10.246', '10359', null, '88');
INSERT INTO `game_mad_user_vote` VALUES ('1606', '31', '1', '223.73.10.246', '10359', null, '88');
INSERT INTO `game_mad_user_vote` VALUES ('1607', '41', '1', '223.73.10.246', '10359', null, '88');
INSERT INTO `game_mad_user_vote` VALUES ('1608', '102', '1', '183.213.56.147', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1609', '31', '1', '58.60.156.5', null, null, '75');
INSERT INTO `game_mad_user_vote` VALUES ('1610', '102', '1', '113.5.2.88', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1611', '86', '1', '113.5.2.88', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1612', '31', '1', '168.150.33.29', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1613', '86', '1', '60.181.146.18', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1614', '102', '1', '223.73.171.127', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1615', '12', '1', '223.73.171.127', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1616', '86', '1', '223.73.171.127', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1617', '102', '1', '60.11.213.41', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1618', '86', '1', '60.11.213.41', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1619', '31', '1', '183.213.56.147', '10272', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1620', '102', '1', '60.11.209.209', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1621', '86', '1', '60.11.209.209', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1622', '102', '1', '60.11.210.112', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1623', '86', '1', '60.11.210.112', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1624', '24', '1', '183.70.255.186', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1625', '12', '1', '183.70.255.186', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1626', '102', '1', '183.70.255.186', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1627', '41', '1', '183.70.255.186', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1628', '31', '1', '59.46.54.27', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1629', '24', '1', '101.20.196.126', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1630', '12', '1', '101.20.196.126', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1631', '102', '1', '112.17.245.76', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1632', '102', '1', '113.200.58.69', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1633', '86', '1', '113.200.58.69', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1634', '31', '1', '218.75.146.172', '10085', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1635', '41', '1', '218.75.146.172', '10085', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1636', '24', '1', '218.75.146.172', '10085', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1637', '102', '1', '218.75.146.172', '10085', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1638', '102', '1', '60.11.213.26', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1639', '86', '1', '60.11.213.26', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1640', '41', '1', '171.95.227.41', null, null, '34');
INSERT INTO `game_mad_user_vote` VALUES ('1641', '12', '1', '171.95.227.41', null, null, '34');
INSERT INTO `game_mad_user_vote` VALUES ('1642', '24', '1', '171.95.227.41', null, null, '34');
INSERT INTO `game_mad_user_vote` VALUES ('1643', '102', '1', '171.95.227.41', null, null, '34');
INSERT INTO `game_mad_user_vote` VALUES ('1644', '12', '1', '119.4.252.160', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1645', '31', '1', '98.224.85.103', '10033', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1646', '13', '1', '113.200.58.69', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1647', '17', '1', '113.200.58.69', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1648', '13', '1', '110.83.173.13', null, null, '15');
INSERT INTO `game_mad_user_vote` VALUES ('1649', '17', '1', '110.83.173.13', null, null, '15');
INSERT INTO `game_mad_user_vote` VALUES ('1650', '62', '1', '182.202.13.51', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1651', '62', '1', '49.77.221.231', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1652', '42', '1', '49.77.221.231', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1653', '13', '1', '113.95.115.21', null, null, '60');
INSERT INTO `game_mad_user_vote` VALUES ('1654', '17', '1', '113.95.115.21', null, null, '60');
INSERT INTO `game_mad_user_vote` VALUES ('1655', '62', '1', '126.67.238.160', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1656', '13', '1', '60.11.213.26', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1657', '17', '1', '60.11.213.26', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1658', '13', '1', '27.200.177.181', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1659', '17', '1', '27.200.177.181', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1660', '62', '1', '223.73.10.246', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1661', '52', '1', '223.73.10.246', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1662', '42', '1', '223.73.10.246', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1663', '79', '1', '223.73.10.246', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1664', '13', '1', '223.73.10.246', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1665', '13', '1', '110.152.126.160', '10720', null, '73');
INSERT INTO `game_mad_user_vote` VALUES ('1666', '17', '1', '110.152.126.160', '10720', null, '73');
INSERT INTO `game_mad_user_vote` VALUES ('1667', '42', '1', '114.111.166.46', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1668', '13', '1', '219.137.198.113', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1669', '17', '1', '219.137.198.113', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1670', '13', '1', '121.204.112.231', null, null, '79');
INSERT INTO `game_mad_user_vote` VALUES ('1671', '17', '1', '121.204.112.231', null, null, '79');
INSERT INTO `game_mad_user_vote` VALUES ('1672', '13', '1', '171.113.104.54', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1673', '17', '1', '171.113.104.54', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1674', '42', '1', '98.224.85.103', '10033', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1675', '52', '1', '98.224.85.103', '10033', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1676', '62', '1', '98.224.85.103', '10033', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1677', '79', '1', '60.11.213.26', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1678', '13', '1', '60.11.210.136', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1679', '17', '1', '60.11.210.136', '10055', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1680', '13', '1', '211.65.214.14', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1681', '17', '1', '211.65.214.14', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1682', '42', '1', '42.100.53.215', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1683', '79', '1', '42.100.53.215', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1684', '62', '1', '42.100.53.215', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1685', '52', '1', '42.100.53.215', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1686', '52', '1', '113.106.101.98', '10035', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1687', '79', '1', '113.106.101.98', '10035', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1688', '13', '1', '223.199.119.163', '10113', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1689', '17', '1', '223.199.119.163', '10113', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1690', '13', '1', '180.115.131.18', '10691', null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1691', '17', '1', '180.115.131.18', '10691', null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1692', '17', '1', '14.215.136.21', '10015', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1693', '17', '1', '221.239.244.59', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('1694', '13', '1', '221.239.244.59', null, null, '4');
INSERT INTO `game_mad_user_vote` VALUES ('1695', '62', '1', '182.148.111.212', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1696', '42', '1', '182.148.111.212', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1697', '52', '1', '182.148.111.212', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1698', '79', '1', '182.148.111.212', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1699', '13', '1', '128.199.111.137', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1700', '17', '1', '128.199.111.137', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1701', '13', '1', '192.241.205.29', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1702', '17', '1', '192.241.205.29', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1703', '13', '1', '111.197.217.232', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1704', '13', '1', '212.71.237.205', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1705', '17', '1', '212.71.237.205', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1706', '13', '1', '106.185.37.37', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1707', '17', '1', '106.185.37.37', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1708', '79', '1', '98.224.85.103', '10033', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1709', '13', '1', '146.185.137.243', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1710', '17', '1', '146.185.137.243', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1711', '42', '1', '112.4.109.7', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1712', '13', '1', '10.42.6.59', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1713', '17', '1', '10.42.6.59', null, null, '7');
INSERT INTO `game_mad_user_vote` VALUES ('1714', '62', '1', '112.4.109.7', '10029', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1715', '62', '1', '113.251.26.255', '10320', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1716', '42', '1', '113.251.26.255', '10320', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1717', '52', '1', '113.251.26.255', '10320', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1718', '79', '1', '113.251.26.255', '10320', null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1719', '62', '1', '118.187.21.58', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1720', '42', '1', '118.187.21.58', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1721', '79', '1', '118.187.21.58', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1722', '52', '1', '118.187.21.58', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1723', '13', '1', '111.161.32.70', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1724', '17', '1', '111.161.32.70', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1725', '13', '1', '10.47.9.106', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1726', '17', '1', '10.47.9.106', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1727', '13', '1', '10.56.20.48', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1728', '17', '1', '10.56.20.48', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1729', '13', '1', '10.59.149.200', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1730', '17', '1', '10.59.149.200', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1731', '13', '1', '10.56.162.113', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1732', '17', '1', '10.56.162.113', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1733', '13', '1', '10.42.16.194', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1734', '17', '1', '10.42.16.194', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1735', '17', '1', '10.40.151.82', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1736', '13', '1', '10.40.158.171', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1737', '17', '1', '10.40.158.171', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1738', '13', '1', '10.56.105.209', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1739', '17', '1', '10.56.105.209', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1740', '17', '1', '10.40.49.131', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1741', '13', '1', '10.44.2.42', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1742', '17', '1', '10.44.2.42', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1743', '13', '1', '10.56.253.69', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1744', '17', '1', '10.56.253.69', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1745', '13', '1', '10.40.107.106', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1746', '17', '1', '10.40.107.106', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1747', '13', '1', '10.44.4.107', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1748', '17', '1', '10.44.4.107', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1749', '13', '1', '10.40.130.23', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1750', '17', '1', '10.40.130.23', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1751', '13', '1', '10.56.165.242', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1752', '17', '1', '10.56.165.242', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1753', '13', '1', '10.40.23.140', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1754', '17', '1', '10.40.23.140', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1755', '17', '1', '10.57.2.3', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1756', '62', '1', '111.22.15.233', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1757', '13', '1', '10.57.2.3', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1758', '42', '1', '111.22.15.233', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1759', '13', '1', '10.45.148.68', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1760', '17', '1', '10.45.148.68', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1761', '79', '1', '111.22.15.233', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1762', '52', '1', '111.22.15.233', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1763', '13', '1', '10.57.17.167', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1764', '17', '1', '10.57.17.167', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1765', '13', '1', '10.56.21.102', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1766', '17', '1', '10.56.21.102', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1767', '13', '1', '10.56.99.47', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1768', '17', '1', '10.56.99.47', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1769', '13', '1', '10.45.13.132', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1770', '17', '1', '10.45.13.132', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1771', '62', '1', '10.45.13.132', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1772', '42', '1', '10.45.13.132', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1773', '79', '1', '10.45.13.132', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1774', '52', '1', '10.45.13.132', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1775', '13', '1', '10.58.22.179', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1776', '17', '1', '10.58.22.179', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1777', '13', '1', '10.56.244.227', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1778', '17', '1', '10.56.244.227', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1779', '42', '1', '10.56.244.227', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1780', '13', '1', '10.63.128.87', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1781', '17', '1', '10.63.128.87', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1782', '62', '1', '10.63.128.87', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1783', '13', '1', '10.56.104.78', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1784', '17', '1', '10.56.104.78', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1785', '13', '1', '10.60.16.187', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1786', '17', '1', '10.60.16.187', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1787', '42', '1', '10.43.141.196', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1788', '13', '1', '10.43.141.196', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1789', '17', '1', '10.43.141.196', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1790', '13', '1', '10.40.22.184', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1791', '17', '1', '10.40.22.184', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1792', '13', '1', '10.56.241.243', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1793', '17', '1', '10.56.241.243', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1794', '13', '1', '10.56.143.108', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1795', '17', '1', '10.56.143.108', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1796', '13', '1', '10.57.20.125', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1797', '17', '1', '10.57.20.125', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1798', '62', '1', '10.57.20.125', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1799', '13', '1', '10.56.172.37', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1800', '17', '1', '10.56.172.37', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1801', '13', '1', '10.63.133.196', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1802', '17', '1', '10.63.133.196', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1803', '13', '1', '10.40.160.108', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1804', '17', '1', '10.40.160.108', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1805', '13', '1', '10.42.5.99', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1806', '17', '1', '10.42.5.99', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1807', '13', '1', '10.41.156.223', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1808', '62', '1', '10.41.156.223', null, null, '9');
INSERT INTO `game_mad_user_vote` VALUES ('1809', '13', '1', '111.194.102.135', '10692', null, '3');
INSERT INTO `game_mad_user_vote` VALUES ('1810', '62', '1', '97.93.51.124', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1811', '42', '1', '97.93.51.124', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1812', '62', '1', '123.8.105.122', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1813', '13', '1', '113.5.2.58', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1814', '17', '1', '113.5.2.58', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1815', '42', '1', '67.186.6.119', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1816', '13', '1', '112.17.243.238', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1817', '13', '1', '111.36.224.176', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1818', '17', '1', '111.36.224.176', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1819', '13', '1', '218.93.253.62', '10107', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1820', '17', '1', '218.93.253.62', '10107', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1821', '17', '1', '119.0.40.131', null, null, '15');
INSERT INTO `game_mad_user_vote` VALUES ('1822', '52', '1', '14.106.120.148', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1823', '62', '1', '14.106.120.148', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1824', '42', '1', '14.106.120.148', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1825', '79', '1', '14.106.120.148', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1826', '62', '1', '119.34.70.150', '10184', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1827', '42', '1', '14.122.238.83', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1828', '62', '1', '14.122.238.83', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1829', '79', '1', '14.122.238.83', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1830', '52', '1', '14.122.238.83', null, null, '8');
INSERT INTO `game_mad_user_vote` VALUES ('1831', '62', '1', '110.83.173.13', null, null, '968');
INSERT INTO `game_mad_user_vote` VALUES ('1832', '42', '1', '110.83.173.13', null, null, '968');
INSERT INTO `game_mad_user_vote` VALUES ('1833', '52', '1', '110.83.173.13', null, null, '968');
INSERT INTO `game_mad_user_vote` VALUES ('1834', '79', '1', '110.83.173.13', null, null, '968');
INSERT INTO `game_mad_user_vote` VALUES ('1835', '13', '1', '116.3.95.142', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1836', '17', '1', '116.3.95.142', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1837', '13', '1', '67.198.207.42', null, null, '32');
INSERT INTO `game_mad_user_vote` VALUES ('1838', '17', '1', '67.198.207.42', null, null, '32');
INSERT INTO `game_mad_user_vote` VALUES ('1839', '62', '1', '183.25.50.95', null, null, '1');
INSERT INTO `game_mad_user_vote` VALUES ('1840', '42', '1', '117.172.27.245', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1841', '62', '1', '117.172.27.245', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1842', '13', '1', '117.172.27.245', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1843', '17', '1', '117.172.27.245', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1844', '79', '1', '117.172.27.245', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1845', '52', '1', '117.172.27.245', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1846', '52', '1', '183.131.22.55', null, null, '2');
INSERT INTO `game_mad_user_vote` VALUES ('1847', '62', '1', '112.65.46.134', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1848', '42', '1', '112.65.46.134', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1849', '79', '1', '112.65.46.134', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1850', '52', '1', '112.65.46.134', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1851', '17', '1', '112.17.245.107', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1852', '42', '1', '58.251.170.19', '10135', null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1853', '42', '1', '219.137.198.113', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1854', '13', '1', '110.6.73.75', null, null, '59');
INSERT INTO `game_mad_user_vote` VALUES ('1855', '17', '1', '110.6.73.75', null, null, '59');
INSERT INTO `game_mad_user_vote` VALUES ('1856', '79', '1', '127.0.0.1', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1857', '13', '1', '139.203.74.29', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1858', '17', '1', '139.203.74.29', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1859', '42', '1', '61.131.115.172', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1860', '62', '1', '61.131.115.172', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1861', '52', '1', '61.131.115.172', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1862', '79', '1', '61.131.115.172', null, null, '0');
INSERT INTO `game_mad_user_vote` VALUES ('1863', '13', '1', '113.5.2.45', null, null, '143');
INSERT INTO `game_mad_user_vote` VALUES ('1864', '17', '1', '113.5.2.45', null, null, '143');

-- ----------------------------
-- Table structure for home_page_mad
-- ----------------------------
DROP TABLE IF EXISTS `home_page_mad`;
CREATE TABLE `home_page_mad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_create` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `explain` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `click` int(11) NOT NULL DEFAULT '0',
  `is_del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of home_page_mad
-- ----------------------------
INSERT INTO `home_page_mad` VALUES ('1', '2015-09-01 11:26:41', null, '新人战2015即将开战', 'home_1.jpg', '__APP__/Events/eventsRelease?date=New', '0', '0');
INSERT INTO `home_page_mad` VALUES ('2', '2015-09-01 11:27:35', null, '东方合作PV——遥不可及', 'home_2.jpg', '__APP__/VideoDetail?vid=MAD10140', '0', '0');
INSERT INTO `home_page_mad` VALUES ('3', '2015-09-01 11:49:09', null, 'Re.T新作MEP', 'home_3.png', '__APP__/VideoDetail?vid=MAD10143', '0', '0');

-- ----------------------------
-- Table structure for node
-- ----------------------------
DROP TABLE IF EXISTS `node`;
CREATE TABLE `node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of node
-- ----------------------------
INSERT INTO `node` VALUES ('49', 'read', '查看', '1', '', null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('40', 'Index', '默认模块', '1', '', '1', '1', '2', '0', '0');
INSERT INTO `node` VALUES ('39', 'index', '列表', '1', '', null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('37', 'resume', '恢复', '1', '', null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('36', 'forbid', '禁用', '1', '', null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('35', 'foreverdelete', '删除', '1', '', null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('34', 'update', '更新', '1', '', null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('33', 'edit', '编辑', '1', '', null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('32', 'insert', '写入', '1', '', null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('31', 'add', '新增', '1', '', null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('30', 'Public', '公共模块', '1', '', '2', '1', '2', '0', '0');
INSERT INTO `node` VALUES ('7', 'User', '后台用户', '1', '', '4', '1', '2', '0', '2');
INSERT INTO `node` VALUES ('6', 'Role', '角色管理', '1', '', '3', '1', '2', '0', '2');
INSERT INTO `node` VALUES ('2', 'Node', '节点管理', '1', '', '2', '1', '2', '0', '2');
INSERT INTO `node` VALUES ('1', 'Admin', '后台管理', '1', '', null, '0', '1', '0', '0');
INSERT INTO `node` VALUES ('50', 'main', '空白首页', '1', '', null, '40', '3', '0', '0');
INSERT INTO `node` VALUES ('86', 'Spsh', '视频审核', '1', '', null, '1', '2', '0', '2');
INSERT INTO `node` VALUES ('87', 'Video', '视频管理', '1', '', null, '1', '2', '0', '2');
INSERT INTO `node` VALUES ('88', 'Mad_user', '账号管理', '1', '', null, '1', '2', '0', '2');
INSERT INTO `node` VALUES ('91', 'Test_email', '邮箱管理', '1', '', null, '1', '2', '0', '2');
INSERT INTO `node` VALUES ('60', 'sh_delete', '删除', '1', null, null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('61', 'sh', '审核', '1', null, null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('62', 'jf', '解封', '1', null, null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('63', 'fj', '封禁', '1', null, null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('64', 'gl_delete', '删除', '1', null, null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('65', 'fh', '封号', '1', null, null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('66', 'jf', '解封', '1', null, null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('67', 'spqx', '给予审核权限', '1', null, null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('68', 'zs', '给予正式', '1', null, null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('69', 'fzs', '剥夺正式', '1', null, null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('100', 'Sp_shenhe', '视频审核观看权限', '1', '', null, '30', '3', '0', '2');
INSERT INTO `node` VALUES ('101', 'sp_delete', '删除', '1', null, null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('103', 'Sp_shenhe', '视频审核观看权限', '1', '', null, '1', '2', '0', '2');
INSERT INTO `node` VALUES ('104', 'Edit_video', '审核修改视频', '1', '', null, '1', '2', '0', '2');
INSERT INTO `node` VALUES ('105', 'session_send', '发送私信', '1', null, null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('106', 'session_admin', '发送', '1', null, null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('107', 'del_pinglun', '删除视频评论', '1', null, null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('108', 'ok_update', '过审', '1', null, null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('109', 'del_update', '删除', '1', null, null, '30', '3', '0', '0');
INSERT INTO `node` VALUES ('110', 'send_tongzhi', '发送', '1', null, null, '30', '3', '0', '0');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `type` int(10) NOT NULL COMMENT '1私信2回复3通知4定向通知',
  `state` int(2) DEFAULT '0' COMMENT '0未读1已读',
  `user_id` varchar(11) DEFAULT NULL,
  `game_mad_id` int(11) NOT NULL DEFAULT '4' COMMENT '通知模块',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('10', '您的视频【不好不好不好】审核不通过,请检查后重新上传视频。是大叔', '2015-07-05 20:07:52', '4', '0', '10651', '0');
INSERT INTO `notice` VALUES ('11', '您的视频【dsdsad】审核不通过,请检查后重新上传视频。', '2015-07-05 22:57:58', '4', '0', '10651', '0');
INSERT INTO `notice` VALUES ('12', '您的视频【asdads】审核不通过,请检查后重新上传视频。', '2015-07-05 22:58:07', '4', '0', '10651', '0');
INSERT INTO `notice` VALUES ('13', '您的视频【dsdsad】审核不通过,请检查后重新上传视频。', '2015-07-05 23:08:51', '4', '0', '10651', '0');
INSERT INTO `notice` VALUES ('14', '您的视频【不好不好不好】审核不通过,请检查后重新上传视频。wwww', '2015-07-05 23:40:30', '4', '0', '10651', '0');
INSERT INTO `notice` VALUES ('15', '您的视频【dsdsad】审核不通过,请检查后重新上传视频。', '2015-07-05 23:55:36', '4', '0', '10651', '0');
INSERT INTO `notice` VALUES ('16', '通知你妈妈妈妈', '2015-07-08 18:59:53', '3', '0', null, '0');
INSERT INTO `notice` VALUES ('17', '你好这里是通知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知知2222', '2015-07-27 19:02:46', '3', '0', null, '0');
INSERT INTO `notice` VALUES ('18', '您的视频【水电费发送到】审核不通过,请检查后重新上传视频。', '2015-08-12 21:41:24', '4', '0', '5000', '0');
INSERT INTO `notice` VALUES ('19', '您的视频【测试1】审核不通过,请检查后重新上传视频。', '2015-09-06 18:11:14', '4', '0', '233', '0');
INSERT INTO `notice` VALUES ('20', '鸟天使通知', '2015-09-09 17:56:13', '3', '0', null, '3');
INSERT INTO `notice` VALUES ('21', '通知哈哈', null, '4', '0', null, '3');

-- ----------------------------
-- Table structure for notice_model
-- ----------------------------
DROP TABLE IF EXISTS `notice_model`;
CREATE TABLE `notice_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `game_mad_id` int(11) NOT NULL DEFAULT '4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice_model
-- ----------------------------
INSERT INTO `notice_model` VALUES ('1', '模版1', '您的视频aaaa审核不通过,请检查后重新上传视频。', '4');
INSERT INTO `notice_model` VALUES ('2', '模版2', '您的视频aaaa审核不通过,请检查后重新上传视频。hhhh', '4');
INSERT INTO `notice_model` VALUES ('3', '模版3', '您的视频aaaa审核不通过,请检查后重新上传视频。wwww', '4');
INSERT INTO `notice_model` VALUES ('5', '膜拜', '三大三大四的aaaa', '4');
INSERT INTO `notice_model` VALUES ('6', '模板111', '毒贩夫妇', '3');

-- ----------------------------
-- Table structure for organize_release_mad_1
-- ----------------------------
DROP TABLE IF EXISTS `organize_release_mad_1`;
CREATE TABLE `organize_release_mad_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `explain` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `organize_type` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `click` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of organize_release_mad_1
-- ----------------------------
INSERT INTO `organize_release_mad_1` VALUES ('1', '2015-08-13', '136期新人专题', '泷沉琉璃精选MAD第43-44期，为AB站热门MAD，以及部分国外网站的优秀动漫MAD整合，共收录27部作品，希望大家喜欢并支持我们！部分作者信息已标注在作品名称中，预览图详见合集内压缩包。', '1', 'http://pan.baidu.com/s/1sjmLQ49', 'kwpq', 'df', null, null);
INSERT INTO `organize_release_mad_1` VALUES ('3', '2015-08-05', '萌狼第二期', '介绍', '1', 'http://test.drawmadver2.com/index.php/Organize/Video/addRelease', 'ss', 'sad', '2015-08-16 22:44:08', null);
INSERT INTO `organize_release_mad_1` VALUES ('4', '2015-07-27', '标题', '介绍', '1', 'dsa', 'asd', 'ddd', '2015-08-17 10:16:55', null);

-- ----------------------------
-- Table structure for organize_release_mad_2
-- ----------------------------
DROP TABLE IF EXISTS `organize_release_mad_2`;
CREATE TABLE `organize_release_mad_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `head_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `click` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `video_code` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of organize_release_mad_2
-- ----------------------------
INSERT INTO `organize_release_mad_2` VALUES ('15', '1', '2015-08-16 22:11:28', '视频', 'php/Organize/Video/addRelease?id=1', 'http://www.drawmad.com/MAD/Modules/Index/Tpl/Public/images/banner2.jpg', null, 'dd', '作者1', 'http://www.drawmad.com//MAD/Modules/Index/Tpl/Public/videos/id_10125_num_1.flv');
INSERT INTO `organize_release_mad_2` VALUES ('36', '3', '2015-08-17 13:49:08', '标题1', 'http://weibo.com/576771140', 'http://www.drawmad.com/MAD/Modules/Index/Tpl/Public/images/banner2.jpg', null, '', '作者1', 'http://www.drawmad.com//MAD/Modules/Index/Tpl/Public/videos/id_10125_num_1.flv');
INSERT INTO `organize_release_mad_2` VALUES ('37', '3', '2015-08-17 13:49:08', '标题2', 'http://weibo.com/576771140', 'http://www.drawmad.com/MAD/Modules/Index/Tpl/Public/images/banner2.jpg', null, '', '作者2', 'http://www.drawmad.com//MAD/Modules/Index/Tpl/Public/videos/id_10824_num_1.flv');
INSERT INTO `organize_release_mad_2` VALUES ('38', '4', '2015-08-17 14:12:51', '标题1', 'sads', 'asd', null, '', '作者1', '');
INSERT INTO `organize_release_mad_2` VALUES ('39', '4', '2015-08-17 14:12:51', '标题2', 'dasdas', 'asd', null, '', '作者2', '');

-- ----------------------------
-- Table structure for organize_type
-- ----------------------------
DROP TABLE IF EXISTS `organize_type`;
CREATE TABLE `organize_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `date` date DEFAULT NULL,
  `name_eng` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of organize_type
-- ----------------------------
INSERT INTO `organize_type` VALUES ('1', '萌狼', null, 'Moewolf');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent` varchar(255) NOT NULL DEFAULT '0' COMMENT '父级ID',
  `type` varchar(255) NOT NULL DEFAULT '0' COMMENT '操作/菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '评论删除', null, '0', '0');
INSERT INTO `role` VALUES ('2', '视频审核', null, '0', '0');
INSERT INTO `role` VALUES ('3', '视频管理', null, '0', '0');
INSERT INTO `role` VALUES ('4', '用户管理', null, '0', '0');

-- ----------------------------
-- Table structure for role_group
-- ----------------------------
DROP TABLE IF EXISTS `role_group`;
CREATE TABLE `role_group` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `parent_id` smallint(6) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_group
-- ----------------------------
INSERT INTO `role_group` VALUES ('1', '管理员', '0', '', '1208784792', '1254325558');
INSERT INTO `role_group` VALUES ('2', '用户', '0', '', '1428368878', '1428369429');
INSERT INTO `role_group` VALUES ('3', '测试', '0', '0', '1429143027', '0');

-- ----------------------------
-- Table structure for role_group_role
-- ----------------------------
DROP TABLE IF EXISTS `role_group_role`;
CREATE TABLE `role_group_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` varchar(255) DEFAULT NULL,
  `role_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_group_role
-- ----------------------------
INSERT INTO `role_group_role` VALUES ('10', '1,2,3,4', '1');
INSERT INTO `role_group_role` VALUES ('14', '1,4', '3');
INSERT INTO `role_group_role` VALUES ('15', '1,2', '2');

-- ----------------------------
-- Table structure for user_admin
-- ----------------------------
DROP TABLE IF EXISTS `user_admin`;
CREATE TABLE `user_admin` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `nick` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `last_login_time` int(11) unsigned DEFAULT '0',
  `last_login_ip` varchar(40) DEFAULT NULL,
  `login_count` mediumint(8) unsigned DEFAULT '0',
  `verify` varchar(32) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `purview` tinyint(2) unsigned DEFAULT '0',
  `info` text NOT NULL,
  `create_ip` varchar(20) DEFAULT NULL,
  `user_admin_type` int(11) NOT NULL DEFAULT '4',
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_admin
-- ----------------------------
INSERT INTO `user_admin` VALUES ('1', 'admin', '管理员', 'e10adc3949ba59abbe56e057f20f883e', '1441537671', '127.0.0.1', '998', '8888', 'liu21st@gmail.com', '备注信息', '1222907803', '1239977420', '1', '', null, '4');
INSERT INTO `user_admin` VALUES ('2', 'GM001', 'GM001', 'e10adc3949ba59abbe56e057f20f883e', '1441461047', '127.0.0.1', '123', '8888', 'ats9958@163.com', '', '1239783735', '1428385400', '0', '', null, '4');
INSERT INTO `user_admin` VALUES ('3', 'GM002', 'GM002', '1178692fc49d8631a6aec13891b0522d', '1429145163', '127.0.0.1', '17', '', 'ats9958@163.com', '', '1253514375', '1428385387', '0', '', null, '4');
INSERT INTO `user_admin` VALUES ('4', 'GM003', 'GM003', '01991580e4b97c0db54021985581e1ef', '1429800950', '110.184.204.133', '22', '', 'ats9958@163.com', '', '1253514575', '1428385377', '0', '', null, '4');
INSERT INTO `user_admin` VALUES ('36', 'GM004', 'GM004', '1178692fc49d8631a6aec13891b0522d', '0', null, '0', null, 'ats9958@163.com', '', '1284448629', '1428385365', '0', '', null, '4');
INSERT INTO `user_admin` VALUES ('37', 'GM005', 'GM005', '1178692fc49d8631a6aec13891b0522d', '1428365854', '127.0.0.1', '5', null, 'ats9958@163.com', '', '1428029314', '1428385355', '0', '', null, '4');
INSERT INTO `user_admin` VALUES ('38', 'GM006', 'GM006', '1178692fc49d8631a6aec13891b0522d', '0', null, '0', null, 'ats9958@163.com', '', '1428366939', '1428385336', '0', '', null, '4');
INSERT INTO `user_admin` VALUES ('39', 'moewolf', '萌狼', 'e10adc3949ba59abbe56e057f20f883e', '1441295573', '127.0.0.1', '0', null, '', '', '0', '0', '0', '', null, '5');
INSERT INTO `user_admin` VALUES ('40', 'event', '', 'e10adc3949ba59abbe56e057f20f883e', '1441789986', '127.0.0.1', '0', null, '', '', '0', '0', '0', '', null, '3');
INSERT INTO `user_admin` VALUES ('42', 'admin2', 'admin2', 'e10adc3949ba59abbe56e057f20f883e', '0', null, '0', null, '', '', '0', '0', '0', '', null, '3');

-- ----------------------------
-- Table structure for user_admin_type
-- ----------------------------
DROP TABLE IF EXISTS `user_admin_type`;
CREATE TABLE `user_admin_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_admin_type
-- ----------------------------
INSERT INTO `user_admin_type` VALUES ('1', 'drawmad管理员');
INSERT INTO `user_admin_type` VALUES ('2', 'moewolf管理员');
INSERT INTO `user_admin_type` VALUES ('3', '通用后台账户');

-- ----------------------------
-- Table structure for user_friend
-- ----------------------------
DROP TABLE IF EXISTS `user_friend`;
CREATE TABLE `user_friend` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_friend_id` int(255) DEFAULT NULL COMMENT '关注了谁',
  `user_id` int(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_friend
-- ----------------------------
INSERT INTO `user_friend` VALUES ('119', '10259', '10213', null);
INSERT INTO `user_friend` VALUES ('120', '10259', '10244', null);
INSERT INTO `user_friend` VALUES ('121', '10010', '10154', null);
INSERT INTO `user_friend` VALUES ('122', '10266', '10033', null);
INSERT INTO `user_friend` VALUES ('123', '10015', '10033', null);
INSERT INTO `user_friend` VALUES ('124', '10154', '10033', null);
INSERT INTO `user_friend` VALUES ('125', '10051', '10033', null);
INSERT INTO `user_friend` VALUES ('126', '10266', '10385', null);
INSERT INTO `user_friend` VALUES ('127', '10014', '10029', null);
INSERT INTO `user_friend` VALUES ('128', '10259', '10033', null);
INSERT INTO `user_friend` VALUES ('129', '10014', '10033', null);
INSERT INTO `user_friend` VALUES ('130', '10385', '10033', null);
INSERT INTO `user_friend` VALUES ('131', '10266', '10418', null);
INSERT INTO `user_friend` VALUES ('132', '10014', '10429', null);
INSERT INTO `user_friend` VALUES ('133', '10051', '10038', null);
INSERT INTO `user_friend` VALUES ('134', '10259', '10435', null);
INSERT INTO `user_friend` VALUES ('135', '10016', '10435', null);
INSERT INTO `user_friend` VALUES ('136', '10051', '10435', null);
INSERT INTO `user_friend` VALUES ('137', '10015', '10435', null);
INSERT INTO `user_friend` VALUES ('138', '10435', '10016', null);
INSERT INTO `user_friend` VALUES ('139', '10399', '10033', null);
INSERT INTO `user_friend` VALUES ('140', '10051', '10035', null);
INSERT INTO `user_friend` VALUES ('141', '10010', '10035', null);
INSERT INTO `user_friend` VALUES ('142', '10259', '10035', null);
INSERT INTO `user_friend` VALUES ('143', '10266', '10035', null);
INSERT INTO `user_friend` VALUES ('144', '10356', '10035', null);
INSERT INTO `user_friend` VALUES ('145', '10154', '10035', null);
INSERT INTO `user_friend` VALUES ('146', '10259', '10479', null);
INSERT INTO `user_friend` VALUES ('147', '10010', '10500', null);
INSERT INTO `user_friend` VALUES ('148', '10055', '10536', null);
INSERT INTO `user_friend` VALUES ('149', '10356', '10062', null);
INSERT INTO `user_friend` VALUES ('150', '10031', '10053', null);
INSERT INTO `user_friend` VALUES ('151', '10280', '10435', null);
INSERT INTO `user_friend` VALUES ('152', '10356', '10576', null);
INSERT INTO `user_friend` VALUES ('153', '10056', '10509', null);
INSERT INTO `user_friend` VALUES ('154', '10051', '10000', null);
INSERT INTO `user_friend` VALUES ('155', '10015', '10586', null);
INSERT INTO `user_friend` VALUES ('156', '10053', '10586', null);
INSERT INTO `user_friend` VALUES ('157', '10025', '10053', null);
INSERT INTO `user_friend` VALUES ('158', '10014', '10608', null);
INSERT INTO `user_friend` VALUES ('159', '10613', '10016', null);
INSERT INTO `user_friend` VALUES ('160', '10613', '10209', null);
INSERT INTO `user_friend` VALUES ('161', '10016', '10209', null);
INSERT INTO `user_friend` VALUES ('162', '10407', '10213', null);
INSERT INTO `user_friend` VALUES ('163', '10280', '10041', null);
INSERT INTO `user_friend` VALUES ('164', '10280', '10297', null);
INSERT INTO `user_friend` VALUES ('165', '10613', '10297', null);
INSERT INTO `user_friend` VALUES ('166', '10280', '10184', null);
INSERT INTO `user_friend` VALUES ('167', '10621', '10617', null);
INSERT INTO `user_friend` VALUES ('168', '10280', '10033', null);
INSERT INTO `user_friend` VALUES ('169', '10056', '10359', null);
INSERT INTO `user_friend` VALUES ('170', '10259', '10624', null);
INSERT INTO `user_friend` VALUES ('171', '10028', '10033', null);
INSERT INTO `user_friend` VALUES ('172', '10259', '10028', null);
INSERT INTO `user_friend` VALUES ('173', '10613', '10624', null);
INSERT INTO `user_friend` VALUES ('174', '10056', '10624', null);
INSERT INTO `user_friend` VALUES ('175', '10051', '10624', null);
INSERT INTO `user_friend` VALUES ('176', '10280', '10624', null);
INSERT INTO `user_friend` VALUES ('177', '10266', '10624', null);
INSERT INTO `user_friend` VALUES ('178', '10056', '10188', null);
INSERT INTO `user_friend` VALUES ('179', '10056', '10000', null);
INSERT INTO `user_friend` VALUES ('180', '10280', '10056', null);
INSERT INTO `user_friend` VALUES ('181', '10014', '10213', null);
INSERT INTO `user_friend` VALUES ('182', '10113', '10033', null);
INSERT INTO `user_friend` VALUES ('183', '10356', '10645', null);
INSERT INTO `user_friend` VALUES ('184', '10356', '10662', null);
INSERT INTO `user_friend` VALUES ('194', '10010', '10662', null);
INSERT INTO `user_friend` VALUES ('195', '10028', '10662', null);
INSERT INTO `user_friend` VALUES ('196', '10558', '10662', null);
INSERT INTO `user_friend` VALUES ('197', '10113', '10662', null);
INSERT INTO `user_friend` VALUES ('198', '10015', '10662', null);
INSERT INTO `user_friend` VALUES ('199', '10399', '10651', null);
INSERT INTO `user_friend` VALUES ('203', '10651', '10266', '2015-06-25 11:56:39');
INSERT INTO `user_friend` VALUES ('208', '10651', '10267', null);
INSERT INTO `user_friend` VALUES ('213', '10266', '10651', '2015-06-26 09:27:35');
INSERT INTO `user_friend` VALUES ('214', '10267', '10651', '2015-06-26 09:27:38');
INSERT INTO `user_friend` VALUES ('215', '10154', '10651', '2015-06-29 11:00:01');
INSERT INTO `user_friend` VALUES ('218', '10035', '10651', '2015-06-30 10:39:33');
INSERT INTO `user_friend` VALUES ('219', '10015', '10651', '2015-06-30 11:52:45');
INSERT INTO `user_friend` VALUES ('220', '10558', '10651', '2015-06-30 11:53:12');
INSERT INTO `user_friend` VALUES ('221', '10113', '5000', '2015-08-25 18:41:17');

-- ----------------------------
-- Table structure for user_mad
-- ----------------------------
DROP TABLE IF EXISTS `user_mad`;
CREATE TABLE `user_mad` (
  `id` int(8) NOT NULL AUTO_INCREMENT COMMENT '用户名',
  `username` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `nicheng` varchar(255) COLLATE utf8_bin NOT NULL,
  `img` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `text` varchar(255) COLLATE utf8_bin NOT NULL,
  `reg_time` int(12) NOT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_activate` tinyint(1) DEFAULT '0',
  `last_user` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1见习会员2正式会员',
  `last_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `is_uid` tinyint(1) DEFAULT '0',
  `is_friend` tinyint(4) DEFAULT '0',
  `last_time` int(12) DEFAULT NULL,
  `reg_ip` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `user_state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1正常2封禁',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18068 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_mad
-- ----------------------------
INSERT INTO `user_mad` VALUES ('233', 'wuliao', 'e10adc3949ba59abbe56e057f20f883e', '无聊', 'hed_wuliao.jpg', '恭喜你找到了D站程序员', '1436086063', '1254109699@qq.com', '1', null, '2', '127.0.0.1', '0', '0', '1441534115', '61.164.211.210', '1');
INSERT INTO `user_mad` VALUES ('10000', 'marshall-fun', 'fb06720f020127f7c94625d02076a46f', 'Marshall-fun', 'hed_marshall-fun.jpg', '拖延症晚期患儿', '1428162141', '182152608@qq.com', '0', '管理员', '2', '112.65.46.134', '0', '0', '1440991111', null, '1');
INSERT INTO `user_mad` VALUES ('10001', '', '', '', 'nohead.png', '', '0', null, '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10006', '3', '23', '213', '213', '213', '2131', '1231', '0', '123', '127', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10008', 'geminiviol', 'e682142cf632d79e51704f7f7aeaa83c', '凌晓', 'hed_geminiviol.png', '好懒啊…不想干活……', '1428161870', '604296673@qq.com', '0', '管理员', '2', '122.157.66.195', '0', '0', '1436577099', null, '1');
INSERT INTO `user_mad` VALUES ('10010', 'littledango', '929b00b5cf20f211f307e6ebac1c6adb', 'littledango', 'slt_littledango.jpg', 'Towiko M@D Team搞卫生的', '1428162616', '769295301@qq.com', '0', null, '3', '101.94.97.158', '0', '0', '1440922568', null, '1');
INSERT INTO `user_mad` VALUES ('10011', 'littledango~', '929b00b5cf20f211f307e6ebac1c6adb', 'littledango~', 'nohead.png', '', '1428163188', '13211230029@fudan.edu.cn', '0', null, '2', '101.94.96.164', '0', '0', '1440290460', null, '1');
INSERT INTO `user_mad` VALUES ('10012', 'llluffy', '72b579229f67dc6c4353d00f6a3063fd', 'Saika', 'nohead.png', '', '1428164077', '1216158687@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10013', 'lansis', '318d93ea42eaef777e5e4f9dbb2847a9', 'PrincessGod', 'nohead.png', '', '1428164701', '285383808@qq.com', '0', null, '1', '60.241.13.220', '0', '0', '1435846544', null, '1');
INSERT INTO `user_mad` VALUES ('10014', 'yun2he', '6a1686e5f627d77c17b99b7a6dc9d63c', '桥西', 'slt_yun2he.png', '', '1428165553', '252890422@qq.com', '0', null, '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10015', '364486142@qq.com', 'd13b35603f0ac9ea60526169eb4d29c7', '魅影', 'hed_10015.jpg', '做mad的都是傻逼吧，嗯，这里也有一只', '1428165562', '364486142@qq.com', '0', null, '2', '59.38.97.100', '0', '0', '1441214559', null, '1');
INSERT INTO `user_mad` VALUES ('10016', '413310822', '45996d67b6590eb2abc717799ff13afe', 'MK菌丶', 'slt_413310822.jpg', '', '1428165564', '413310822@qq.com', '0', '管理员', '2', '116.1.55.143', '0', '0', '1440605364', null, '1');
INSERT INTO `user_mad` VALUES ('10017', 'monika', 'a629eb08e1f04be4782f2b081a6b0894', 'Liar', 'nohead.png', '', '1428194121', '179393506@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10018', 'WTX147', 'defac44447b57f152d14f30cea7a73cb', '望天晓', 'nohead.png', '', '1428197450', 'wtx147@gmail.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10019', 'KLOWRY', '01991580e4b97c0db54021985581e1ef', 'Falling', 'slt_KLOWRY.jpg', '', '1428197479', 'zengyunsong@qq.com', '0', 'GM003', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10020', '254969185', '19ef74f08a991de7935d495c03e369cd', '仓米丁', 'nohead.png', '', '1428197499', '254969185@qq.COM', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10021', '260057353', '22595311153b1075b1e9c0f8a60033ac', '逝梦', 'nohead.png', '', '1428197535', '260057353@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10022', 'whitebeaver', '9ed704bef351c0da2b935dc25f6dc73b', 'Beaver', 'nohead.png', '', '1428197543', 'zjq_my_adb@qq.com', '0', null, '1', '116.21.33.194', '0', '0', '1434974410', null, '1');
INSERT INTO `user_mad` VALUES ('10023', 'lyh14310', '9bd772c041b9889bcc2c07a7089b750d', '原画画质高', 'slt_lyh14310.jpg', '', '1428197625', '1060705961@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10024', 'cranberry', '72c315d38e5f1e743d79a50d28f3692d', '蔓越莓', 'nohead.png', '', '1428197734', 'yagade@sina.com', '0', 'GM003', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10025', 'w116525022', 'dd0c43eb166b89618b157eccb0cd3e65', 'Musicool', 'slt_w116525022.png', 'uncle.wang', '1428197750', '258735248@qq.com', '0', null, '2', '116.228.90.156', '0', '0', '1436247846', null, '1');
INSERT INTO `user_mad` VALUES ('10026', 'dzshero', '09f64d6f3054e93529e5f31c7bacf535', 'DZS漫音', 'slt_dzshero.JPG', '', '1428197867', 'dzshero@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10027', 'mooncake', 'cad634d3aef5045f5e0b539e11cc6a60', 'mooncake', 'hed_10027.jpg', '', '1428198081', '943284082@qq.com', '0', '管理员', '2', '106.186.18.97', '0', '0', '1440752989', null, '1');
INSERT INTO `user_mad` VALUES ('10028', 'jojoanns', '999b4e549c7e55b1d2aaf4a44b54e203', 'jojoanna', 'hed_jojoanns.png', '', '1428198122', 'jojoanna@qq.com', '0', null, '2', '222.71.13.134', '0', '0', '1439267559', null, '1');
INSERT INTO `user_mad` VALUES ('10029', '1413177915', '6a7a65f7c185be616e1d1f54d1fe3d8f', 'Bobo', 'hed_10029.jpg', '你可以强暴我，但是你无法剥夺我呻吟的权利。', '1428198467', '1413177915@qq.com', '0', null, '2', '112.4.109.9', '0', '0', '1440520931', null, '1');
INSERT INTO `user_mad` VALUES ('10030', '111vv11', '19ef74f08a991de7935d495c03e369cd', '仓泶', 'nohead.png', '', '1428198498', '254969185@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10031', '924442791', '315eb115d98fcbad39ffc5edebd669c9', '远子酱', 'hed_924442791.jpg', '渣渣新人一枚', '1428198549', '924442791@qq.com', '0', null, '2', '171.223.84.149', '0', '0', '1440779290', null, '1');
INSERT INTO `user_mad` VALUES ('10032', '82099758', 'f31ffde55a0f607f6082854dbc63bced', '插秧', 'slt_82099758.jpg', 'T组农业研究人员，每日辛勤插秧', '1428198770', '82099758@qq.com', '0', null, '1', '106.186.114.6', '0', '0', '1440777752', null, '1');
INSERT INTO `user_mad` VALUES ('10033', '605918279', '90696af107f6b384deaf76022dfa8d24', '歼灭小天使', 'slt_605918279.jpg', '咪啪咪啪咪~', '1428198992', '605918279@qq.com', '0', null, '2', '98.224.85.103', '0', '0', '1441053519', null, '1');
INSERT INTO `user_mad` VALUES ('10034', '295350609', '529f35e054e23b7a73fd7be2b8ceaede', '残磬雪风吹', 'slt_295350609.png', '', '1428199066', 'roadhead@amver.im', '0', null, '2', '221.3.134.119', '0', '0', '1440002806', null, '1');
INSERT INTO `user_mad` VALUES ('10035', '527451241@qq.com', '3b185716506834d7ed2a2d57f993e89b', 'Mell', 'hed_10035.jpg', '', '1428199137', '527451241@qq.com', '0', null, '2', '14.152.94.62', '0', '0', '1440605473', null, '1');
INSERT INTO `user_mad` VALUES ('10036', 'lucifel', 'f174fa0d56bdfab8530c9fa15799a790', 'lucifel', 'hed_lucifel.jpg', '', '1428199188', '651222785@qq.com', '0', null, '1', '119.138.210.163', '0', '0', '1439623860', null, '1');
INSERT INTO `user_mad` VALUES ('10037', '1145564982', 'bb15645f46e30fe639840cd14ea89332', '餐刀', 'slt_1145564982.png', '', '1428199532', 'www.1145564982@qq.com', '0', null, '1', '59.35.71.213', '0', '0', '1440688294', null, '1');
INSERT INTO `user_mad` VALUES ('10038', '136055676', '25f9e794323b453885f5181f1b624d0b', 'Ice·尘', 'hed_10038.jpg', '渣渣什么时候能触呢……', '1428199692', '136055676@qq.com', '0', null, '2', '175.148.102.44', '0', '0', '1440864336', null, '1');
INSERT INTO `user_mad` VALUES ('10039', 'kkltxpzy', 'a3ff957075a7dbb78c1a0473c911e467', '掌心君', 'slt_kkltxpzy.jpg', '', '1428199712', '409962830@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10040', 'ranranxm', 'ef9af8cf86d6e6d70ccfb1a69c8c611c', '冉冉xm', 'hed_10040.jpg', '', '1428201004', '727341118@qq.com', '0', null, '2', '49.80.151.25', '0', '0', '1440912623', null, '1');
INSERT INTO `user_mad` VALUES ('10041', 'Misata', 'c98aaaea0f8059ce9527843ec1ebcc2d', 'Misata', 'hed_10041.jpg', '并没有什么个性签名', '1428202621', '435774443@qq.com', '0', null, '2', '223.86.85.104', '0', '0', '1440135235', null, '1');
INSERT INTO `user_mad` VALUES ('10042', '332809557@qq.com', '71ec73e278dfe52857d706647c556846', '郁闷的月影', 'slt_332809557@qq.com.jpg', '', '1428202728', '332809557@qq.com', '0', '管理员', '1', '171.107.42.99', '0', '0', '1435492813', null, '1');
INSERT INTO `user_mad` VALUES ('10043', 'miku1958', '8ec3d96ddb35f7556b427671352bec69', '庄黛淳华', 'nohead.png', '', '1428204848', 'v.v1958@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10044', 'beichen', '8d8d5808ed028a74143362f2476f16b2', '北辰子', 'hed_beichen.jpg', '', '1428205710', '810081954@qq.com', '0', null, '2', '117.156.2.60', '0', '0', '1440073465', null, '1');
INSERT INTO `user_mad` VALUES ('10045', '15755373357', '5b3b74b4ad365bc254eca184613d0f73', 'tamako丶KK', 'hed_15755373357.jpg', '', '1428206248', 'chengjh1358@163.com', '0', null, '2', '14.122.237.137', '0', '0', '1440558832', null, '1');
INSERT INTO `user_mad` VALUES ('10046', 'andrewlevis', '2a31fce127392e8aaed28d822b5cd5b5', 'Wink君', 'slt_andrewlevis.png', '长吻过后更是永恒伤感', '1428206791', '907571576@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10048', 'emwcnbdn', '468acb6afd7ff74f9d5d920336f58437', '廿佚', 'slt_emwcnbdn.jpg', '笨蛋廿', '1428212182', '970937916@qq.com', '0', null, '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10049', 'zqf110gx', '50522875264e2a344b30e4996a814e89', '泛式', 'hed_10049.jpg', '', '1428212591', '470664814@qq.com', '0', '管理员', '2', '49.77.167.209', '0', '0', '1440702281', null, '1');
INSERT INTO `user_mad` VALUES ('10051', 'FuryCal', 'c4a17576707445f0e1c4c1ee8f72ff62', '复仇女王', 'slt_FuryCal.jpeg', 'Furycal', '1428219243', '935224890@qq.com', '0', null, '2', '49.85.249.14', '0', '0', '1440380602', null, '1');
INSERT INTO `user_mad` VALUES ('10052', 'cxl_will', '0b12e9645b691b8e2dd8166011820571', 'Neko3000', 'hed_10052.jpg', 'Whore', '1428221455', 'neko3000@live.com', '0', '管理员', '2', '183.141.115.91', '0', '0', '1440776086', null, '1');
INSERT INTO `user_mad` VALUES ('10053', 'NICOMAKI', 'd4e78d65132e7417ed670a78930e5f38', 'Nishikino_Nico', 'hed_NICOMAKI.png', '', '1428223767', 'zlw19951225@qq.com', '0', null, '2', '219.139.27.12', '0', '0', '1440779631', null, '1');
INSERT INTO `user_mad` VALUES ('10054', 'gg754220791', 'bc63853f17e6d19a82f04eb6e634aa6d', '弃疗的某菌', 'slt_gg754220791.jpg', 'sh是傻逼', '1428231376', '754220791@qq.com', '0', null, '2', '36.62.156.205', '0', '0', '1439659324', null, '1');
INSERT INTO `user_mad` VALUES ('10055', 'Sung Hsu', 'b50eef74baf316832eae664b4a36ce18', 'Sung Hsu', 'hed_Sung Hsu.jpg', '弃疗是傻逼', '1428231698', '390649856@qq.com', '0', '管理员', '2', '218.8.150.186', '0', '0', '1441258942', null, '1');
INSERT INTO `user_mad` VALUES ('10056', 'hiroshidan', 'c26229a9bf0f0cfd40d94c3955302bd1', '一识', 'slt_hiroshidan.png', '', '1428236368', 'ichishiki@qq.com', '0', null, '2', '221.4.141.41', '0', '0', '1441091570', null, '1');
INSERT INTO `user_mad` VALUES ('10057', '673324880', '890710c330bfd83758e27ceb7344d3bf', '千叶草_阑小逝', 'hed_10057.jpg', '', '1428236713', '673324880@qq.com', '0', '管理员', '2', '27.199.1.175', '0', '0', '1440521522', null, '1');
INSERT INTO `user_mad` VALUES ('10058', 'ice_mirror', 'e66c6a73aeb5194814cc76d4a35d9fb3', 'ice_mirror', 'nohead.png', '', '1428236817', '565149480@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10059', 'Winsper', '3a11154e2a5fd81d638fff9cec78ca6a', '风吟Winsper', 'slt_Winsper.JPG', '', '1428236990', '541155165@qq.com', '0', null, '2', '180.116.210.103', '0', '0', '1441016335', null, '1');
INSERT INTO `user_mad` VALUES ('10060', 'l751414112', '5d6307b0cab9d1879e63b56618911520', 'ActDeco', 'nohead.png', '', '1428237067', 'actdeco@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10061', 'leonana69', '4b69c9d3100b40721b0ae77d838f6ba1', '落花无意、', 'nohead.png', '', '1428237096', '517682597@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10062', 'Estrella', '6bdf04ea82d5b991c7cc54b6a7748bb6', 'Estrella_伊吹', 'hed_10062.jpg', '渣新一枚，诚招女友', '1428237104', '644534739@qq.com', '0', null, '2', '59.66.174.25', '0', '0', '1440852261', null, '1');
INSERT INTO `user_mad` VALUES ('10063', 'lin2525884', '8062073f65e54e75d5e6f99b7dc58ae8', '41days', 'hed_10063.jpg', '', '1428237110', '543114628@qq.com', '0', null, '2', '60.29.64.110', '0', '0', '1440766358', null, '1');
INSERT INTO `user_mad` VALUES ('10064', 'a8732575', '680010f566b955a00b8234e0a7fcd001', '[⑨]', 'nohead.png', '', '1428237158', '475028830@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10065', 'sosmiku', 'e51ffa1022849e5df31ca7710633f1ba', '米库米库米', 'hed_10065.jpg', '', '1428237159', '416875239@qq.com', '0', null, '2', '60.247.14.46', '0', '0', '1440667718', null, '1');
INSERT INTO `user_mad` VALUES ('10066', 'GameGay', '2d3bbbec4f9b02eb1abd909cc6f74f30', '游戏基', 'hed_GameGay.jpg', '基基渣渣', '1428237282', '190891583@qq.com', '0', null, '1', '119.129.210.185', '0', '0', '1437715015', null, '1');
INSERT INTO `user_mad` VALUES ('10067', '282584064@qq.com', '4afac88da0743163a93449a0c51dcced', '小猪', 'nohead.png', '', '1428237304', '282584064@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10068', 'a406764706', '2cd3e4f606e2c7bb2559a6bdd414baf7', '终结的序章', 'nohead.png', '', '1428237311', '406764706@qq.com', '0', null, '1', '116.238.59.190', '0', '0', '1440664653', null, '1');
INSERT INTO `user_mad` VALUES ('10069', 'squaresr', '987a770d1719836d31e2a95b8530a1d8', '四方SR', 'nohead.png', '', '1428237345', '274882760@qq.com', '0', null, '1', '183.138.164.220', '0', '0', '1440777077', null, '1');
INSERT INTO `user_mad` VALUES ('10070', 'laonai45', '010394c1c630249df90100edc96a6150', '狂気の比利兄贵', 'hed_laonai45.jpg', '现在才刚刚开始', '1428237407', 'huang_6690706@163.com', '0', '管理员', '2', '59.173.103.55', '0', '0', '1440527411', null, '1');
INSERT INTO `user_mad` VALUES ('10071', '781808281', 'f72352c2fd5e9a38baa2c1b79a562a4f', '傲娇的曲线', 'nohead.png', '', '1428237445', '781808281@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10072', '1254170587', '723d505516e0c197e42a6be3c0af910e', '八坂琴里', 'slt_1254170587.png', '', '1428237451', '1254170587@qq.com', '0', null, '2', '163.179.157.67', '0', '0', '1440031286', null, '1');
INSERT INTO `user_mad` VALUES ('10073', '295196477', '07d890f363b8106595203af9cd56cedd', '北之辰', 'nohead.png', '', '1428237452', '295196477@qq.com', '0', null, '1', '223.247.194.107', '0', '0', '1439946800', null, '1');
INSERT INTO `user_mad` VALUES ('10074', 'aa947523811@sina.com', 'af1af80b3f308cfb2bfe7d832d51cd91', 'Flagrance15', 'nohead.png', '', '1428237478', 'aa947523811@sina.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10075', 'qiujing135', '7ed2d7435988fb738712aa7116647030', 'NKnife', 'hed_qiujing135.jpg', '', '1428237482', '442966010@qq.com', '0', null, '2', '119.139.8.28', '0', '0', '1440733174', null, '1');
INSERT INTO `user_mad` VALUES ('10076', 'wzfzywll', '10386b62fe303802b3924221fff0c1af', 'NightRaid丶NANO', 'slt_wzfzywll.jpg', '教练，我想做MAD！', '1428237487', '385175743@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10077', 'wuyu7751566', 'c4f0b0e1137a478d0a2c564bd34c1249', '7751566', 'nohead.png', '', '1428237490', '517947251@qq.com', '0', null, '1', '123.97.232.72', '0', '0', '1434962808', null, '1');
INSERT INTO `user_mad` VALUES ('10078', '778052', '4494f83640496635f0e6606e06485912', 'ADKsb', 'slt_778052.jpg', '', '1428237495', 'aoh3@sohu.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10079', 'wuliao聊', '25d19df553e69269f31f1c6cef94a977', 'wuliao聊', 'hed_10079.png', '啦啦啦~', '1428237498', 'wuliaodekg@hotmail.com', '0', null, '1', '125.33.124.111', '0', '0', '1438445055', null, '1');
INSERT INTO `user_mad` VALUES ('10080', '645186833', '14c82d27218856dba85b763f89be87c3', '栗子', 'nohead.png', '', '1428237499', '641320080@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10081', 'Biliamv', '2dc536a6dfb5c36c14216665729ffc15', 'biliの非日常', 'hed_10081.jpg', '幸せの向こう侧', '1428237507', '574801934@qq.com', '0', null, '2', '111.182.182.89', '0', '0', '1440374984', null, '1');
INSERT INTO `user_mad` VALUES ('10082', '围观的小清新', 'b7f9e1261565ae26edb64b944afe3f85', '花开时散', 'nohead.png', '', '1428237513', '13026536901@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10083', '516331944', '72396dac44b5583ab2326dc1c253b5c1', 'Shion丶静', 'nohead.png', '', '1428237519', '516331944@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10084', '2277903914', '28f70deac17ca5dd8c2597187c5fc92c', '简夕', 'nohead.png', '', '1428237519', '2277903914@qq.com', '0', null, '1', '125.41.150.53', '0', '0', '1439041247', null, '1');
INSERT INTO `user_mad` VALUES ('10085', '1148179957', 'bb87e5f3adac3cfee63dae332d98f838', 'Rewrite', 'hed_1148179957.jpg', '', '1428237522', '1148179957@qq.com', '0', null, '2', '27.21.3.185', '0', '0', '1440850430', null, '1');
INSERT INTO `user_mad` VALUES ('10086', '360272837', '9da52d20500003996baab0909b4d12b5', '东君Sluynh', 'nohead.png', '', '1428237542', '360272837@qq.com', '0', null, '1', '183.151.227.244', '0', '0', '1439714221', null, '1');
INSERT INTO `user_mad` VALUES ('10087', 'shenyuchao7', 'becd3278935dec4c87a51a594f9315fb', '洂渊', 'nohead.png', '', '1428237558', '1210116142@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10088', '1535344157', 'aed15c390d59e09d86c532305406b184', '巧克力君☆', 'nohead.png', '', '1428237567', '1535344157@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10089', 'Angel丶', 'beef680d2e20dd6db4fa68cecdb42f6a', '与你相差1世纪', 'nohead.png', '', '1428237572', '1152466734@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10090', 'loveme', 'e4b86e1e9cd185378a161e7a1071d73b', '萌神', 'nohead.png', '', '1428237573', '304652548@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10091', 'qsbecky00', '1a659eb69825b8e0b791972ad4af3d8c', '奈良的鹿。', 'nohead.png', '', '1428237576', '491573884@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10092', 'qianmeizha', 'bb997268cddd6def7e4c97225254fe83', '钱妹', 'slt_qianmeizha.jpg', '', '1428237580', '476202034@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10093', '479885031', '53372c22512018bbef474a02a3109f7e', '七海vAv', 'nohead.png', '', '1428237591', '479885031@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10094', '13913697415', '0bd415e7f1df4f0d3f1b7650fa54dcfe', '上月', 'nohead.png', '', '1428237593', 'a253917708@126.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10095', '1293002252', 'a176b1ad5d5790cb139562052c9ed2e8', '希尔菌', 'nohead.png', '', '1428237594', '1293000252@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10096', 'gwrosae', 'e420cbe1c5a03072c782c32ea50a6a30', 'GwRosaE', 'nohead.png', '', '1428237596', '854665353@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10097', 'a1046076755', 'd89fdd4a38e506a9448b66511906b369', '为你神经经', 'nohead.png', '', '1428237609', '1046076755@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10098', '512727982', 'fa4247404ce15ffae95ff3bade13ebfd', '小思绪丿', 'nohead.png', '', '1428237614', '512727982@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10099', 'mrunsad', 'aa697cebb4d4c21c6e3f0ac2789ff919', 'unsad', 'nohead.png', '', '1428237623', '1913502187@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10100', 'xzw4323241', 'bd3a5d15fe16ba6877f5fb93a1f84b0a', '白夜琳音', 'hed_xzw4323241.jpg', '', '1428237623', 'xiangziwen123@qq.com', '0', null, '2', '59.173.103.55', '0', '0', '1440701921', null, '1');
INSERT INTO `user_mad` VALUES ('10101', 'Chitanda·Eru', '4e72c73a87046bb2758c0674afe15df0', 'Chitanda·Eru', 'hed_10101.jpg', '', '1428237642', '200629902@qq.com', '0', null, '2', '27.156.148.53', '0', '0', '1440048198', null, '1');
INSERT INTO `user_mad` VALUES ('10102', 'tgbhy6', 'ba35306d851d4a13a5338336e3cbee20', '赤羽さとり', 'nohead.png', '', '1428237658', 'fin-spi@hotmail.com', '0', null, '1', '130.245.206.157', '0', '0', '1440296440', null, '1');
INSERT INTO `user_mad` VALUES ('10103', '1003144938', 'cb6b351e7e4d35168cf7dff06fcba9c1', 'WF', 'hed_10103.jpg', '', '1428237659', '1003144938@qq.com', '0', null, '2', '36.110.33.1', '0', '0', '1439384469', null, '1');
INSERT INTO `user_mad` VALUES ('10104', 'kagami', '33b203d02bc3000f8e3e5c49089398ae', '@提不起镜', 'nohead.png', '', '1428237664', '994426516@qq.com', '0', null, '1', '113.65.192.82', '0', '0', '1439656228', null, '1');
INSERT INTO `user_mad` VALUES ('10105', 'SawaguchiMai', 'a66f661840998abd131d2c428983215b', '星宫响', 'nohead.png', '', '1428237668', '619057420@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10106', 'dunshusama', '4581412f8f07a4c4268d2df262498492', '抵天壁垒', 'nohead.png', '', '1428237687', '1041938599@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10107', '强强YOUNG', '8a5068c7f9c58de30c03515131de75e8', '强强YOUNG', 'hed_10107.jpg', '', '1428237690', '1339082669@qq.com', '0', null, '2', '218.93.253.62', '0', '0', '1440459168', null, '1');
INSERT INTO `user_mad` VALUES ('10108', 'Hollyhock', '264c64a0182b3634ec7478d5e299f9c8', '杨钧', 'nohead.png', '', '1428237711', '965961025@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10109', 't420330825', '4c595a18e4e5e232fc289193749612f6', '永A远C忠G诚', 'nohead.png', '', '1428237731', '420330825@qq.com', '0', null, '1', '112.5.236.232', '0', '0', '1435312465', null, '1');
INSERT INTO `user_mad` VALUES ('10110', '黯淡神殇123', 'e10adc3949ba59abbe56e057f20f883e', '黯淡神殇', 'nohead.png', '', '1428237744', '1076887163@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10111', 'aass22369', '6b5a5c8588994f2b3b6ac506c208ebef', '路米斯', 'nohead.png', '', '1428237746', '546866353@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10112', 'zll19961201', 'd9c9f3d9ff7f81d7a2fa2e0bdbd29615', '方丈', 'nohead.png', '', '1428237746', '857792539@qq.com', '0', null, '1', '1.58.120.28', '0', '0', '1440521314', null, '1');
INSERT INTO `user_mad` VALUES ('10113', 'hnscby6', '205c6711ec00299fa5ffb9700a292b1d', '金闪闪', 'slt_hnscby6.jpg', '萌萌哒', '1428237749', '470670326@qq.com', '0', null, '2', '223.199.252.183', '0', '0', '1440693840', null, '1');
INSERT INTO `user_mad` VALUES ('10114', 'de380230970', '6e92a9811faaa877f4c501920aa20acd', '贱撸', 'hed_10114.jpg', '', '1428237770', '380230970@qq.com', '0', null, '1', '111.75.23.61', '0', '0', '1439611025', null, '1');
INSERT INTO `user_mad` VALUES ('10115', 'sky108walker', 'fbb32e65e78827dcad1f6063a911f652', '伍同学_', 'slt_sky108walker.jpg', 'be yourself', '1428237776', '1084049480@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10116', 'www12450', 'fab903416a91eb0da0aabe0930d2b1d8', '茶te', 'hed_www12450.jpg', '', '1428237791', '798345752@qq.com', '0', null, '2', '14.106.124.125', '0', '0', '1440637699', null, '1');
INSERT INTO `user_mad` VALUES ('10117', 'jspzzl', '840c578ce933c4bfeb0db075a31ca95a', '浅殇', 'nohead.png', '', '1428237794', '1413471789@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10118', '732492496', '37b4e2d82900d5e94b8da524fbeb33c0', '伪信徒', 'hed_10118.jpg', '0-0', '1428237810', 'sic_sic@126.com', '0', '管理员', '2', '97.64.215.195', '0', '0', '1441237559', null, '1');
INSERT INTO `user_mad` VALUES ('10119', '657417018', 'e52919427d0ad23882983eca523ae73b', '轩辕云起', 'nohead.png', '', '1428237813', '657417018@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10120', 'a1415761813', '1c9bc8ee39ace0c6a5ec302d1f8a6d04', 'Alice 伊萨卡', 'hed_10120.gif', '', '1428237853', '1415761813@qq.com', '0', null, '1', '113.5.89.94', '0', '0', '1439831112', null, '1');
INSERT INTO `user_mad` VALUES ('10121', 'durk123', 'e10adc3949ba59abbe56e057f20f883e', '糖糖酱', 'nohead.png', '', '1428237863', '824271656@qq.com', '0', null, '1', '121.229.120.145', '0', '0', '1440087220', null, '1');
INSERT INTO `user_mad` VALUES ('10122', '466741750', '784ac1d7cf1ad78479c7a0035dd45735', '☆爱衣酱☆', 'hed_10122.png', '', '1428237869', '466741750@qq.com', '0', null, '2', '115.220.7.35', '0', '0', '1439875681', null, '1');
INSERT INTO `user_mad` VALUES ('10123', 'rcd123456', '8a832f4fe055579d59099df057291595', '你猜啊', 'nohead.png', '', '1428237872', 'daobi@orituremad.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10124', 'qq948089974', '8bf5adbb55fec715e9f01ca54eb9d94c', '御夏の凌', 'nohead.png', '', '1428237873', '948089974@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10125', '1255618710', 'f1bbe8c1feebc2c1bc36916f3882b1db', 'guicai酱', 'hed_1255618710.jpg', '', '1428237898', '1255618710@qq.com', '0', null, '2', '175.137.136.111', '0', '0', '1439746131', null, '1');
INSERT INTO `user_mad` VALUES ('10126', 'zhizhizheshan', 'd9b4ead7267403716a6236d07daf6081', '纸质折扇', 'hed_10126.jpeg', '', '1428237921', '2562650245@qq.com', '0', null, '2', '103.230.0.248', '0', '0', '1440816487', null, '1');
INSERT INTO `user_mad` VALUES ('10127', 'ASCEXH', 'd1dca72558db58d730a4202ddffe51fc', 'ASCEXH', 'nohead.png', '', '1428237926', '734442904@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10128', 'NaraYaki', '6a73b097b2b80f21adc58576e7e8c7a7', 'Nara夜祭', 'nohead.png', '', '1428237931', '1256740965@qq.com', '0', null, '1', '180.157.230.186', '0', '0', '1440059597', null, '1');
INSERT INTO `user_mad` VALUES ('10129', '824971895', 'a8f5f167f44f4964e6c998dee827110c', '诸神之上的太阳', 'nohead.png', '', '1428237955', '824971895@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10130', '309138195', 'bff168013b933211aa64464958f07c5b', '断心玄', 'slt_309138195.jpg', '', '1428237961', '309138195@qq.com', '0', null, '2', '115.239.86.144', '0', '0', '1440000037', null, '1');
INSERT INTO `user_mad` VALUES ('10131', '1519649701', 'c267e74fcbbc9fe7518f2ad392f7d5ad', '非黑', 'nohead.png', '', '1428237966', '1519649701@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10132', 'zhisha', '708cbb84b481bc66149964a0db460661', '凪莎', 'nohead.png', '', '1428237968', '1455820252@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10133', '960913', '3f2caa1d85268f1f10bc40d7d81f4444', 'Jusen', 'hed_960913.png', '', '1428237984', 'l494638637@163.com', '0', null, '1', '60.166.206.103', '0', '0', '1437118602', null, '1');
INSERT INTO `user_mad` VALUES ('10134', 'qq782793395', 'a1857b994c7f01b5b21d1fbe2ba29491', '夕阳下の二少', 'nohead.png', '', '1428238006', '782793395@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10135', '294781347', 'b26855ccc61137518b6d05067c6cb452', 'HACKERMOUSE', 'hed_294781347.jpg', '拖延症后群患者...', '1428238020', '294781347@qq.com', '0', '管理员', '2', '202.104.141.67', '0', '0', '1440646748', null, '1');
INSERT INTO `user_mad` VALUES ('10136', '962343249', '75c85605b5b113de8de96c9ed245c903', 'qincai', 'nohead.png', '', '1428238065', '962343249@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10137', '522411869', '1801c3b1a9ab79d0d781d360e85f065a', '娘口三三の', 'nohead.png', '', '1428238079', '522411869@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10138', 'yeah2109', '22c3070048a41a192b164790000ed44d', '蓝莓铁匠', 'nohead.png', '', '1428238110', 'yeah2109@yeah.net', '0', '管理员', '2', '171.115.194.111', '0', '0', '1441214372', null, '1');
INSERT INTO `user_mad` VALUES ('10139', 'Nae520', 'eaf4f812fc1a6abc3e9b8182171ffc21', '云之丨彼端', 'nohead.png', '', '1428238110', '792399267@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10140', 'Aennef', 'e10adc3949ba59abbe56e057f20f883e', 'Aennef', 'nohead.png', '', '1428238111', '1823067819@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10141', 'Qwe695824820', 'a74b5688a3fce2a55feb7cb4593deb93', '拿破仑修车', 'nohead.png', '', '1428238111', 'T19942008@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10142', '997204524', 'ce78c12d89640352f462117121e620aa', '水杯里的茶', 'nohead.png', '', '1428238114', 'kxbshn@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10143', '1763023601', '2053c62bed16e927c368845a5c162e91', '空白渣', 'nohead.png', '没有渣，只有更渣', '1428238157', '1763023604@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10144', '2360868169', '7b95d577f0239209cf4d0e91d6295b63', '名宫弦纸', 'nohead.png', '', '1428238170', '2360868169@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10145', 'q805388297', 'b1c6bbb327aed12d8aae1c30a61936f0', '王帆', 'nohead.png', '', '1428238253', '805388297@qq.com', '0', null, '1', '223.86.254.66', '0', '0', '1440437326', null, '1');
INSERT INTO `user_mad` VALUES ('10146', 'zanghunge', '8a9128e4be8211310304cfff33d960f8', 'M魂', 'nohead.png', '', '1428238256', '526090201@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10147', '523538483', 'c1ac3e125c2422455d39696c1aeb4ea2', '正午', 'nohead.png', '', '1428238276', '523538483@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10148', 'wang602223', '6eab6c3c05a148af4121606d3af8a0ac', '菟姬', 'nohead.png', '', '1428238295', '396052922@qq.com', '0', null, '1', '101.87.95.214', '0', '0', '1439573436', null, '1');
INSERT INTO `user_mad` VALUES ('10149', '1326759021', 'f48e6cdcf8c0a2decb4e06b6628b37e4', '傲雪幻世', 'nohead.png', '', '1428238369', '1326759021@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10150', 'qq120681518', 'c9f2a712b985f4e723321385abbacf56', '乳酸君', 'nohead.png', '', '1428238378', '120681518@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10151', 'mapodoufu', '3e0d0a77afa763e431dfc7925ef5dc36', '麻婆♂豆腐', 'nohead.png', '', '1428238391', '2623645104@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10152', '804171330', '96698e70c9bcf0e22f87ed878324bc9d', '折了腿的猫', 'nohead.png', '', '1428238404', '804171330@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10153', 'zsw757673499', '7bae1327c288de87cfa3e8c6e60162d6', '墨舞丹青', 'nohead.png', '', '1428238432', '757673499@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10154', 'zhusama', 'b9cdec33da4ac45398d9cc02a76174fb', '猪宝宝', 'slt_zhusama.jpg', '', '1428238440', 'dd.dd.dd.dd@qq.com', '0', null, '2', '180.173.20.131', '0', '0', '1440401114', null, '1');
INSERT INTO `user_mad` VALUES ('10155', 'scepter', '77c341217987b65f88aa6947c7ac08fc', '不明のscepter', 'nohead.png', '', '1428238448', 'scepter39@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10156', 'lzf343', 'aaa2115f7603ebfa6abf737559598113', '钻石星痕', 'hed_10156.jpg', '', '1428238461', '736770516@qq.com', '0', '管理员', '2', '60.4.227.137', '0', '0', '1440555588', null, '1');
INSERT INTO `user_mad` VALUES ('10157', '颠覆_MySelf', 'c53ed01d477e7d61d1565f5cd0c08742', '颠覆W', 'nohead.png', '', '1428238523', '2585372371@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10158', '1137374967', 'fbc53f38e7a8da24a126cba380c31f24', 'wjh123', 'hed_10158.jpg', '', '1428238523', '1137374967@qq.com', '0', null, '1', '113.77.216.186', '0', '0', '1440902067', null, '1');
INSERT INTO `user_mad` VALUES ('10159', '354017134', '894675a89b8d1dd892aa679eaa6b86d6', '炫翼族灬潮流', 'nohead.png', '', '1428238530', '354017134@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10160', 'a1831357066', '7e1c2421505ac09ab9dc02b5ac5cd17b', '战魂之殇', 'nohead.png', '', '1428238540', '1831357066@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10161', 'jc8864', 'b1f0227ff348695c7e11934f7dfcfd46', '草石虫', 'nohead.png', '', '1428238542', '806276675@qq.com', '0', null, '2', '180.157.218.218', '0', '0', '1440521888', null, '1');
INSERT INTO `user_mad` VALUES ('10162', 'tcrose0', '79d9390d0561d91562886b297b55313d', '魅媚', 'nohead.png', '', '1428238557', '948931744@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10163', 'finfuture', '84d961568a65073a3bcf0eb216b2a576', 'finfuture', 'slt_finfuture.jpg', '', '1428238571', 'finfuture@163.com', '0', null, '1', '113.83.198.162', '0', '0', '1439727597', null, '1');
INSERT INTO `user_mad` VALUES ('10164', 'sad angle', 'eb93541626c59d185c5ded20840b2886', '何宇', 'nohead.png', '', '1428238581', '714713828@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10165', 'yangweiyi', 'f5a98dd3fa07cb1bee4018f55a5e2b1a', '杨炜毅', 'nohead.png', '', '1428238594', '1213815413@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10166', '0904Dnnightmare', 'c53ed01d477e7d61d1565f5cd0c08742', '颠覆M', 'nohead.png', '', '1428238612', '1403371731@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10167', 'ADOBE4D', 'cdba83d96ac00189d81720138259fa8e', 'ZEROの轨迹', 'nohead.png', '', '1428238616', '1280380732@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10168', '小小小小小鱼', 'b7f9e1261565ae26edb64b944afe3f85', '溺水金鱼', 'nohead.png', '', '1428238617', '251151494@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10169', 'makebei', '56db0f912d989cf1d24d4d981bb6e0fa', '马克杯', 'nohead.png', '', '1428238631', 'xuanlangdian@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10170', 'zyucik', '31039794b2fe64d2bd0cbd07c3a01d1a', 'AoLLe丶', 'nohead.png', '', '1428238673', 'zyucik@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10171', 'qa6537951', 'f3d8e337306e57eced07517f11860571', '折木F太郎', 'nohead.png', '', '1428238676', '553902964@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10172', '93426luck', '6bb6d6bb930c8bad0ec4cd1d616ee45b', '鬼畜君', 'nohead.png', '', '1428238769', '970553473@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10173', '1476941718', 'c769236ffe730c80bf49afe264d28ce6', '丶綘', 'nohead.png', '', '1428238820', '1476941718@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10174', 'a839754163', '0cb5be28eee56478cc455db125ed3af5', '爱疯滴猫', 'nohead.png', '', '1428238824', '839754163@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10175', '名前DOLL', 'b26855ccc61137518b6d05067c6cb452', '名前', 'nohead.png', '', '1428238842', '1176608029@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10176', 'Evidafahao', '5257f71c329601e4641ac0fd064a42b3', 'Evi', 'nohead.png', '', '1428238860', '842975309@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10177', 'thn71919', '636ef74e1b4d1a2a23283b39a111daa1', 'Logluo', 'nohead.png', '', '1428238896', '2324931592@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10178', '741748275', 'b7ced556035d4aa6902947d026932196', 'Kirastar', 'nohead.png', '', '1428238929', '741748275@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10179', 'yisuzhishen', 'e3706f6ae90d4d28467c936fa555f183', '博丽西瓜', 'nohead.png', '', '1428238978', '739156646@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10180', 'chenzhuo2144', 'c4de6e47a983cd16e62f1cec4a90f3c6', '进击的黑星', 'nohead.png', '', '1428239108', '1793581098@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10181', 'lu417804705', 'bc8a9b2ee98fb99b4e4aae412e3e7427', '陆青山院长', 'nohead.png', '', '1428239300', '417804705@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10182', '1586180650', '3d723f825262ad4ff97bc934b532b8d8', '再年', 'nohead.png', '', '1428239313', '1586180650@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10183', '543613586', '6fd90b2a9f4149681795679d5df0ac2e', 'Clubs J', 'slt_543613586.jpg', '', '1428239431', '543613586@qq.com', '0', null, '1', '117.143.31.93', '0', '0', '1437629659', null, '1');
INSERT INTO `user_mad` VALUES ('10184', 'blacksnow', '073951dcf6b44b5aedae827f1be489a7', '黑雪', 'hed_blacksnow.jpg', '', '1428239440', 'longyuhuhao@126.com', '0', null, '2', '119.34.67.205', '0', '0', '1440643996', null, '1');
INSERT INTO `user_mad` VALUES ('10185', '1446519649', 'f761ba9b175256ccb90e17762277592a', '风与雪', 'nohead.png', '', '1428239442', '1446519649@qq.ocm', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10186', '627028179', '8c9e515bb75b916a494fa25757b22e11', '小约酱', 'nohead.png', '', '1428239461', '627028179@qq.com', '0', null, '1', '222.163.189.11', '0', '0', '1439573124', null, '1');
INSERT INTO `user_mad` VALUES ('10187', 'cxeona', '546ef6a65a054ff58f7da23803166f30', 'xeona', 'nohead.png', '', '1428239510', '467357257@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10188', 'Moneight', '8258446210df791df6ddf76f9c58e55c', '月八', 'hed_Moneight.jpg', '', '1428239518', '409728536@qq.com', '0', null, '1', '106.161.65.250', '0', '0', '1440861055', null, '1');
INSERT INTO `user_mad` VALUES ('10189', '2634283819', 'effe63545a968f057b7a510a59ad8c6a', '念乐者', 'nohead.png', '', '1428239522', '2634283819@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10190', 'zxszxs00', '1849b4cfda9584d456533045793c9f80', '桜の初雪', 'nohead.png', '', '1428239566', '1733318624@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10191', '461566349', '256c3edb87b35a2f8b0bb874e5d299bd', '星光狱', 'nohead.png', '', '1428239572', '461566349@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10192', 'fengyya', '7cf071ecaae1e3b60931119b82a89c6e', '霜炎', 'hed_10192.jpg', '', '1428239592', '825800897@qq.com', '0', null, '1', '183.208.99.39', '0', '0', '1439787790', null, '1');
INSERT INTO `user_mad` VALUES ('10193', 'DarkFlameCat', 'e10adc3949ba59abbe56e057f20f883e', '暗猫', 'nohead.png', '', '1428239596', '342082596@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10194', 'zhuzhuwyx1', '6960d52c3568eaa18fbb989e7816bc56', '骚饼赛赛', 'nohead.png', '', '1428239604', '99501407@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10195', 'wdsy963', '9688facf2d846a5c147367c38dc939a3', '麻婆腐乳', 'nohead.png', '', '1428239690', '645458884@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10196', '1095408977@qq.com', '90977593e29615920df5331fd9fae7cf', 'My丶WiFi', 'nohead.png', '', '1428239756', '573918625@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10197', '781140567', 'e10adc3949ba59abbe56e057f20f883e', '我看你修轮胎', 'hed_10197.jpg', '', '1428239808', '781140567@qq.com', '0', null, '1', '116.1.68.175', '0', '0', '1440758441', null, '1');
INSERT INTO `user_mad` VALUES ('10198', 'zhoumengmeng', '6b5eb1791ce9c044e6bcef694c6cd4b5', '静静的发呆呆呆的笑', 'slt_zhoumengmeng.jpg', '静静的发呆呆呆的微笑', '1428239817', '1668242330@qq.com', '0', null, '1', '183.64.174.62', '0', '0', '1439569653', null, '1');
INSERT INTO `user_mad` VALUES ('10199', 'xuan402', '3101636e7e181051577dc2a5bcb03fa1', '蒙奇「D」路飞', 'nohead.png', '', '1428239832', '305796474@qq.com', '0', '管理员', '2', '24.238.15.219', '0', '0', '1438140897', null, '1');
INSERT INTO `user_mad` VALUES ('10200', '542942742', 'e9bd9473167d773fb8059641858d3d0f', '深藏黑与锅', 'nohead.png', '', '1428239870', '542942742@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10201', '530508289', 'a753611172794edf92b13e1412128511', '一千五百磅の马林鱼', 'slt_530508289.jpg', '', '1428239897', '530508289@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10202', 'DarkFlameCatOwO', '5cf8fff28aa37dbdaa2bf4fc68f8bd4d', '暗猫の祝福', 'hed_10202.jpg', 'AMVer', '1428239908', 'blackcat@amver.im', '0', '管理员', '2', '123.152.97.167', '0', '0', '1439829646', null, '1');
INSERT INTO `user_mad` VALUES ('10203', 'aassd000', '3cf834ad84fd28bb06c15889851779ff', '辰梦', 'nohead.png', '', '1428239913', 'aassd000@126.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10204', 'ReTAllen', '4eb7f242cfc3ecbe96aa120a6995fe3a', 'Allen', 'nohead.png', '', '1428239943', 'x805186414@sina.com', '0', null, '1', '106.226.31.124', '0', '0', '1439608639', null, '1');
INSERT INTO `user_mad` VALUES ('10205', 'sawako', 'dbafebea50984d9345541c202266f447', '黑沼爽子', 'hed_10205.jpg', '', '1428239958', '352103503@qq.com', '0', null, '2', '183.67.62.202', '0', '0', '1440650169', null, '1');
INSERT INTO `user_mad` VALUES ('10206', '1147310398', '5bbb396d64f705610439c6edaf06339f', '丿三十丨三石', 'nohead.png', '', '1428239962', '1147310398@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10207', '2950066158', '5e1acf272c2c7ac1a549d5cf18cd0fcf', '节操满满的飞机君', 'nohead.png', '', '1428240007', '2950066158@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10208', 'DCloud', 'c1e5213620449a8c95d4248a24f0ed97', '_碧空残云_', 'nohead.png', '', '1428240010', '453152098@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10209', 'chen1230', 'c627db8bbc676cdcbc9f6fbb3c5f3097', 'LittleMrCHen', 'slt_chen1230.jpg', '因MDS而生，因MDS而死。', '1428240064', '1456261443@qq.com', '0', null, '2', '61.181.93.202', '0', '0', '1440762463', null, '1');
INSERT INTO `user_mad` VALUES ('10210', 'fish123366', '0deb937b56d65bc7b77ee0302f95007e', '平行线', 'hed_fish123366.png', '', '1428240150', '690915328@qq.com', '0', null, '2', '36.22.58.92', '0', '0', '1440692498', null, '1');
INSERT INTO `user_mad` VALUES ('10211', '292301930', '147f6b51133a1d758f38b2002b356f8d', '橘丶万里花酱', 'nohead.png', '', '1428240152', '292301930@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10212', 'weilai9612', '326ce92a533c78661474817be2ac48b7', '忠犬', 'nohead.png', '', '1428240211', '455382186@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10213', 'tree1995', '652d38bf0028813f8701cf2c8d821f69', '闲时安稳', 'slt_tree1995.jpg', '', '1428240222', '434927490@qq.com', '0', null, '1', '58.33.241.106', '0', '0', '1440206226', null, '1');
INSERT INTO `user_mad` VALUES ('10214', 'jeremy', '8a9128e4be8211310304cfff33d960f8', '其实诚哥是我的小号', 'nohead.png', '', '1428240271', 'zhg198933@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10215', '915908848', 'e9616b4e9a578d816d45f025cdef4b7b', '谈情不说爱', 'nohead.png', '', '1428240272', '915908848@qq.com', '0', null, '1', '180.157.50.98', '0', '0', '1439609846', null, '1');
INSERT INTO `user_mad` VALUES ('10216', '302909061', '6ad5d6c2433cd745cf3807a60969b6c1', '漆夭71', 'nohead.png', '', '1428240273', '302909061@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10217', '243766680', '5905e84accc0ff635ca3801889185b7a', 'dog', 'nohead.png', '', '1428240307', '243766680@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10218', 'solakunn', '31d5769a98db9159ebed1c812d064198', 'solakunn', 'nohead.png', '', '1428240326', '370251389@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10219', 'zheliawu', '39df9fac9ee54d494ab90cc818f28dc4', '阿无', 'nohead.png', '', '1428240359', '745407181@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10220', '112132', '68f5d72fd558955639b8f0448be211f8', '112132', 'nohead.png', '', '1428240366', 'jmyz112132@yeah.net', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10221', 'rucky_0257@qq.com', 'e38ed3e2462e7bef355036c885d8f257', '茜色之空', 'nohead.png', '', '1428240408', 'rucky_0257@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10222', 'huangjianxiang3', '49e6851548de309b5d5b6651b940713c', 'RailSword', 'hed_huangjianxiang3.jpg', '', '1428240425', 'huangjianxiang3@qq.com', '0', null, '2', '117.136.40.128', '0', '0', '1440349412', null, '1');
INSERT INTO `user_mad` VALUES ('10223', 'autumnsan', '76a34071260dce1e21ed5bc9a4bc3cc7', 'auunn', 'slt_autumnsan.jpg', '', '1428240459', '1790540048@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10224', 'mark123332', '21b63836bbcef1fe7934e890392ee555', '沐桓', 'nohead.png', '', '1428240549', 'liming123332@126.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10225', 'wd284476221', '8e7497b2ce3cb5d1812661a6dcb176d9', '星奈', 'nohead.png', '', '1428240620', '284476221@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10226', '457862470', 'c2fc2f64438b1eb36b7e244bdb7bd535', 'Control', 'slt_457862470.jpg', '笑的咪咪痛', '1428240780', '457862470@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10227', 'AnnGillette', 'b4dbedb21e68620c725c344ec0df7eac', '暗望君', 'slt_AnnGillette.jpg', '', '1428240813', 'anngillette@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10228', 'somiii', '7a80b9bfe8f3aa771b0d0b86d7f5eeab', 'somii', 'nohead.png', '', '1428240889', '408249368@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10229', 'hugmunin', 'd5aa1729c8c253e5d917a5264855eab8', 'Munin', 'nohead.png', '', '1428240946', '980600723@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10230', 'blackink', '3fb9a9e214619df701c800ebfe5407bf', 'ink', 'nohead.png', '', '1428241010', 'mooncake920@outlook.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10231', '327621807', 'b22bb2ab86de99f4c590e9d4e3b46377', '灬由歌', 'nohead.png', '', '1428241017', '327621807@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10232', '1464787640', '793801a2884df0106e6fcc538472792c', 'KXwowo', 'nohead.png', '', '1428241019', '1464787640@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10233', '1195001364', '43ae94216d7dff8374e0a6cfb4d6565d', 'Monday丶M', 'nohead.png', '', '1428241020', '1195001364@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10234', '8night', '722f1ec47c5097061b25eb9069bd154a', '八夜', 'nohead.png', '', '1428241021', '1576510719@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10235', 'qq199301124', '95fddf3b1bd5d2a314f992b4d9d794b1', '罗洛维尔', 'nohead.png', '', '1428241094', '199301124@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10236', 'Misa7Misa', '412ffb58d45eb58157cb7a41f70511bd', 'Misa7Misa', 'nohead.png', '', '1428241126', 'Misa7Misa@QQ.COM', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10238', 'mengmengzhou', '6b5eb1791ce9c044e6bcef694c6cd4b5', '四时之萌蓝色之雨', 'nohead.png', '', '1428241262', '1055633428@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10239', 'mjslxy', '619cdc6b91152db49c1942671e3eb322', '终端城晔', 'nohead.png', '', '1428241294', '651382936@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10241', 'Besing', 'c5fde9de2d29789a81d1bc0f16292048', '白歌', 'nohead.png', '', '1428241655', '2303744546@QQ.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10242', '962097364', 'c6746da4b18a0c156ba74dd13dc4a60d', '双马尾大叔', 'hed_10242.jpg', '', '1428241734', '962097364@qq.com', '0', null, '2', '121.22.104.2', '0', '0', '1439436116', null, '1');
INSERT INTO `user_mad` VALUES ('10243', '921733839', 'd4db4abde1309e1be50cfdb1e39e20f4', '咖啡豆', 'nohead.png', '', '1428241758', '921733839@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10244', '654632292', '46c9d7f9e29376ff37f162f1748972e2', 'ZHL.', 'slt_654632292.jpg', '', '1428241829', '654632292@qq.com', '0', null, '1', '223.244.227.194', '0', '0', '1441081094', null, '1');
INSERT INTO `user_mad` VALUES ('10245', 'aoyunzuo376709', '2d387b21ecd41193caa8df2f492668f1', '雪中的叶子', 'nohead.png', '', '1428241899', '376709262@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10246', 'HonorKing', 'd46734387dd54f4d5741af563f9b3177', 'HonorKing', 'nohead.png', '', '1428241981', 'HonorKing@yeah.net', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10247', 'qwe1sb', '1abd8dbf1d194a0a4e3e232e64112580', '坂井雄二', 'slt_qwe1sb.png', '', '1428242069', '619095869@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10248', 'bakemono', 'b2090b22f610f8738675b00135c81757', 'rii', 'nohead.png', '', '1428242114', '764553378@qq.com', '0', null, '1', '182.242.225.3', '0', '0', '1439468870', null, '1');
INSERT INTO `user_mad` VALUES ('10249', 'PW GAYMAN', '376c43878878ac04e05946ec1dd7a55f', 'PW同学@无尽六月', 'nohead.png', '', '1428242126', '624107446@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10250', 'wudi123138', '2d04386611d397d5c3ceec5e077f32c2', '汤勺', 'nohead.png', '', '1428242161', '948166104@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10251', '605341085@qq.com', '58b8ada7cbc417784e3a888cd87a7400', '弗拉基米尔洛维奇.普京', 'hed_605341085@qq.com.jpg', '', '1428242283', '605341085@qq.com', '0', null, '2', '121.224.59.207', '0', '0', '1441034276', null, '1');
INSERT INTO `user_mad` VALUES ('10252', '19950220dm', '58e66cca2bcda5d8d9605c447703a269', '哈露酱', 'nohead.png', '', '1428242400', '1405597785@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10253', 'xmmo456', '2e38572b2744fd009fef59f6eb485ca8', '欣、沫茉', 'nohead.png', '', '1428242521', '419111834@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10254', 'hxxyp85324', '4e618646a5fe77b351339b01cfb6c34d', '我是帅气的叶子', 'nohead.png', '', '1428242527', '1547508273@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10255', 'baku233', 'e10adc3949ba59abbe56e057f20f883e', 'baku', 'hed_10255.jpg', '', '1428242530', '445184879@qq.com', '0', null, '1', '221.226.47.157', '0', '0', '1440521275', null, '1');
INSERT INTO `user_mad` VALUES ('10256', 'wlgcnms', '4bb51dd1c5c115766e7abd4fc138cc1e', '流影', 'slt_wlgcnms.jpg', '平凡之路', '1428242551', '2805075465@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10257', '1093826915', 'd020a84c3fc13e2536e30b3cc6fb8c2e', '魔音兔', 'hed_1093826915.jpg', '', '1428242569', '1093826915@qq.com', '0', null, '2', '124.237.244.222', '0', '0', '1438669471', null, '1');
INSERT INTO `user_mad` VALUES ('10258', '2093449370', '018927787af068e7ad70e43c06e51899', '款款', 'nohead.png', '', '1428242612', '2093449370@qq.com', '0', null, '1', '61.149.99.242', '0', '0', '1439569766', null, '1');
INSERT INTO `user_mad` VALUES ('10259', 'yxj007', '28c830a578e9adce7c4fa7576501ebdf', 'V.R.', 'slt_yxj007.jpg', '', '1428242719', '275250078@qq.com', '0', null, '2', '59.174.93.95', '0', '0', '1439708273', null, '1');
INSERT INTO `user_mad` VALUES ('10260', '543516908', '72396dac44b5583ab2326dc1c253b5c1', 'S·镜', 'nohead.png', '', '1428242842', '543516908@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10261', 'Shinalok', '0e84de626f2aa61a98d3107f3a04c726', 'Shinalok', 'nohead.png', '', '1428242843', '1170803115@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10262', 'jokerson', '26cc20015fa3b1c07b9729a9d20429d9', '渣渣', 'nohead.png', '', '1428242950', '657861761@qq.com', '0', null, '1', '120.201.224.28', '0', '0', '1434781045', null, '1');
INSERT INTO `user_mad` VALUES ('10263', '1627743028', 'cd69cfdb0267bc29c7dfb628320b8c12', '灬邪帝', 'nohead.png', '', '1428243075', '1627743028@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10264', 'w9031079', 'aecd56528ab2393b3a6fd8d6c36197da', '夜魔', 'nohead.png', '', '1428243154', '416697458@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10265', '1262545695', 'af65b92d45cbfb91a03f05b213624731', '-起名废', 'nohead.png', '', '1428243228', '1262545695@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10266', 'brs1515233', 'd462a56ac8a279588a39c1aaa8df85fe', '番外篇', 'slt_brs1515233.jpg', '', '1428243253', '844172570@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10267', 'hhj19960314', 'd2c1fd3688c4ebd63af57d450f0e7112', '黄鸿嘉', 'nohead.png', '', '1428243283', 'www.272165572@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10268', 'TrueLight', '419ddfaefabec1f398506654917fd3bd', '渣小白', 'nohead.png', '白夜梦', '1428243293', '240984388@qq.com', '0', '管理员', '1', '106.39.135.81', '0', '0', '1440642483', null, '1');
INSERT INTO `user_mad` VALUES ('10269', '1987755962', '5a90e6afb795e77447056d1fa04ce217', '单行道', 'slt_1987755962.jpg', '', '1428243319', '1987755962@qq.com', '0', '管理员', '2', '218.76.37.130', '0', '0', '1436522366', null, '1');
INSERT INTO `user_mad` VALUES ('10270', '389271094', '976adc2f3a8b06149a708692e3adaf9b', '二拉Era', 'nohead.png', '', '1428243391', '389271094@qq.com', '0', '管理员', '1', '119.39.32.69', '0', '0', '1435641308', null, '1');
INSERT INTO `user_mad` VALUES ('10271', 'ichirukia', '4e642989cc63f1849c8691f5c4f9425e', '作死的MT', 'nohead.png', '', '1428243422', 'ichirukia@sina.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10272', 'wftoni', '0c157e62ba952363bff75639ca4de9fb', 'toni', 'hed_wftoni.jpg', '', '1428243460', '981589331@qq.com', '0', '管理员', '2', '221.224.134.178', '0', '0', '1436416112', null, '1');
INSERT INTO `user_mad` VALUES ('10273', 'doomedyawn', 'e5ca5478bca551545f35570c5fbdc524', '哈欠厄', 'nohead.png', '', '1428243648', '1079484540@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10274', '823254165', '64a0e26f5b9a4266b77c13dc0e1c9ff9', '荣耀丨冷井', 'nohead.png', '', '1428243716', '823254165@qq.com', '0', '管理员', '1', '106.118.26.33', '0', '0', '1435591766', null, '1');
INSERT INTO `user_mad` VALUES ('10275', 'dim807', '4de35585e43001e7436de75dae44b67f', '夕丶武', 'nohead.png', '', '1428243727', '807053247@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10276', 'miaoyushu', '552a2b8b18e37c632cd2fd06ec52d7b8', 'M.呜喵', 'nohead.png', '', '1428243938', '1287904575@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10277', '583172112', '4ddeb60e0aa731bf29f473d18a39aea7', 'Recordare丶小绝', 'slt_583172112.png', '我不会忘记，那里，曾有着无可替代的天空。', '1428244197', '583172112@qq.com', '0', '管理员', '1', '121.239.110.82', '0', '0', '1439655085', null, '1');
INSERT INTO `user_mad` VALUES ('10278', '1018983026', '7f5eb24845f411cee2573d497618139f', '飞机啊飞', 'nohead.png', '', '1428244389', '1018983026@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10279', 'MT3066', '4e642989cc63f1849c8691f5c4f9425e', 'ichirukia', 'nohead.png', '', '1428244406', '306634936@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10280', '114805438', 'dfeede3d26c34ed6f07866dc52ba855e', '小伤', 'slt_114805438.jpg', '', '1428244556', '114805438@qq.com', '0', '管理员', '2', '27.44.220.178', '0', '0', '1440941386', null, '1');
INSERT INTO `user_mad` VALUES ('10281', 'w370239568', '93c84b39feb3ff7d262a96378955a879', '染兮', 'nohead.png', '', '1428244770', '370239568@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10282', 'luop621', '4b726ea28140a0a46d0a97d58b61c4d1', 'Sakura四夕', 'slt_luop621.jpg', '', '1428244852', '236826850@qq.com', '0', '管理员', '2', '27.158.171.49', '0', '0', '1440306363', null, '1');
INSERT INTO `user_mad` VALUES ('10283', 'xiaochai', '0c468a3c5bfde1c733b8cf6f2b8f0333', '鼠辈', 'nohead.png', '', '1428244922', '670306286@qq.com', '0', '管理员', '1', '110.77.41.20', '0', '0', '1439569587', null, '1');
INSERT INTO `user_mad` VALUES ('10284', '355539918', '07e6c8a5c19cd7043d97158e09a17bf4', 'TIERLA', 'nohead.png', '', '1428244997', '355539918@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10285', 'mask110016', '4af06d4327d3a8feb7392954d87488e8', 'N丶T', 'nohead.png', '', '1428245096', 'mask110016@163.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10286', 'malthus', 'fb06720f020127f7c94625d02076a46f', 'malthus', 'nohead.png', '', '1428245133', 'm182152608@163.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10287', '老男孩forever', '16e434370b7673d44078faf9d20e1de4', '老男孩forever', 'nohead.png', '', '1428245197', '1599029979@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10288', 'wingsguimo', 'dfaf0d6662469a3f0493ca0c3f2a81c3', '诡墨', 'nohead.png', '', '1428245332', 'wingsguimo@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10289', 'qq236826850', '4b726ea28140a0a46d0a97d58b61c4d1', '傻逼', 'slt_qq236826850.png', '', '1428245649', 'luop621@sina.com', '0', '管理员', '1', '27.158.171.49', '0', '0', '1440306477', null, '1');
INSERT INTO `user_mad` VALUES ('10290', 'Era389271094', '976adc2f3a8b06149a708692e3adaf9b', '二拉_Era', 'nohead.png', '', '1428245680', 'caoyang12123@163.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10291', 'alfase', 'ef6d63eaca8e909e5f52718a5380b794', 'alfase', 'nohead.png', '', '1428245818', 'steven8854@icloud.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10292', 'Lucslas', '6d1ce7aa0a1d988dc96a2abcd187b45a', 'Lcuslas', 'nohead.png', '', '1428245827', '24187769@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10293', 'Rinaki', 'f431bb368429cec0ca7c2ff87b78b13b', '西米想养猫', 'hed_Rinaki.jpg', '', '1428245864', '326947043@qq.com', '0', '管理员', '2', '223.73.195.198', '0', '0', '1439652373', null, '1');
INSERT INTO `user_mad` VALUES ('10294', '老男孩forevers', '16e434370b7673d44078faf9d20e1de4', '老男孩', 'nohead.png', '', '1428245908', '1224169043@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10295', 'dim807083247', '4de35585e43001e7436de75dae44b67f', '夕武', 'nohead.png', '', '1428245928', '807083247@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10296', 'cardeasyan', 'ef6d63eaca8e909e5f52718a5380b794', 'Alfase', 'nohead.png', '', '1428246024', 'cardeasyan@gmail.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10297', '1063320516', '529e4174710554ef6fa3472a28ec50e0', '空白酱', 'hed_10297.png', '', '1428246253', '1063320516@qq.com', '0', '管理员', '2', '221.239.244.59', '0', '0', '1440781164', null, '1');
INSERT INTO `user_mad` VALUES ('10298', 'wangxing722', 'a1a7093a94b916926a01b31041d6dc3c', 'shiina', 'nohead.png', '', '1428246340', 'wangxing722@vip.qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10299', '发癫的四叶草', 'dcab62fa98dce854dffbba3dc4721193', '发癫的四叶草', 'nohead.png', '', '1428246351', '469846878@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10300', 'ccy18627721457', 'd48369c1e7e028a4c1684a9ee7e4dd87', 'Ashikaga', 'nohead.png', '', '1428246477', '549989466@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10301', 'yueyvshi', '7ed5b105771121da442a0585a8cd768e', '月雨式', 'nohead.png', '', '1428246522', '1358327615@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10302', 'Magisquare', '80c6c3b6adc3fcc0534974135d9b7090', 'Magisquare', 'nohead.png', '', '1428246685', 'magisquare@163.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10303', 'Aite25', 'beb2d413606ccea54c67cb86fae5beee', 'Aite25', 'nohead.png', '', '1428246708', '259241475@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10304', 'Joker_CX', 'd70ad52bc61769a2bc44f6a9a9bd32b0', '吴景济', 'nohead.png', '', '1428246821', 'cx1327@hotmail.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10305', 'planeinsky', '5e1acf272c2c7ac1a549d5cf18cd0fcf', 'up飞机啊飞', 'nohead.png', '', '1428247075', '18928916633m0@sina.cn', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10306', 'Joker_W', 'd70ad52bc61769a2bc44f6a9a9bd32b0', 'Joker_CX', 'nohead.png', '', '1428247082', '282907561@qq.com', '0', '管理员', '1', '220.174.118.102', '0', '0', '1439873774', null, '1');
INSERT INTO `user_mad` VALUES ('10307', 'mayf1234', '1383df2e8bf0b9150196e02097bd203a', 'SaMa_Next2015', 'slt_mayf1234.png', '', '1428247217', '847340822@qq.com', '0', '管理员', '1', '27.22.56.44', '0', '0', '1439657243', null, '1');
INSERT INTO `user_mad` VALUES ('10308', 'TonyLiu', '16f37a98af7d5f0c69d4e872a169141f', '淡岚涩眼泪', 'slt_TonyLiu.jpg', '', '1428247463', '1661867047@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10309', 'Hush丶Please', '648ee1d01258f16c712da6a791ede59b', 'Hush', 'slt_Hush丶Please.jpg', '少说话多做事', '1428247580', 'hhhhhhhhhhhush.please@gmail.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10310', 'oracionleo', 'd9e261deabc53e4186b39c412fdeb789', 'oracionleo', 'nohead.png', '', '1428247747', 'oracionleo@126.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10311', 'kumer末', '35b17056f8e5afbd58370c1ad2bc7c0c', 'kumer末', 'slt_kumer末.jpg', '', '1428247755', '273379286@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10312', 'konoha', '17c30bf351c29f45ad8fb6e319c72faf', '遠子の心葉', 'nohead.png', '', '1428247867', '532627170@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10313', 'otaku90', '6133e00c1c9a3544dc0fd803f055c467', 'otaku90', 'slt_otaku90.jpg', '', '1428248030', '1305428166@qq.com', '0', '管理员', '1', '223.167.99.148', '0', '0', '1440167267', null, '1');
INSERT INTO `user_mad` VALUES ('10314', 'abby0731', 'f2d141abeb9617d80e221c7656b4765b', '黏贵妃', 'slt_abby0731.JPG', '非专业出身的剪辑师新职人', '1428248156', 'ruanxiaying@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10315', '942496413', '7272ca036b245d2cc24dead68bfa1210', '5sWind', 'nohead.png', '', '1428248216', '942496413@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10316', 'lym1218', 'cc128c81ba86560375cdc12582e2b87a', '要命菌', 'slt_lym1218.png', '', '1428248278', '421850554@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10317', '421850554', 'cc128c81ba86560375cdc12582e2b87a', '要命jun', 'nohead.png', '', '1428248421', 'lym19981218@outlook.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10318', 'yumelet', '64003cc994710059c32813643a33076b', '梦盛花火', 'hed_yumelet.png', '', '1428248451', 'yumeyuri@vip.qq.com', '0', 'GM001', '2', '183.131.11.57', '0', '0', '1439803589', null, '1');
INSERT INTO `user_mad` VALUES ('10319', '叶子のSakura', '42f6e95d40bc0d11606881f9ddacc721', '张金鹏', 'slt_叶子のSakura.jpg', 'woailoli@outlook.com', '1428248619', 'woailoli@outlook.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10320', 'a66565574', 'e2de8233c89efa7aa39606fd87b2a198', '哥斯拉', 'nohead.png', '', '1428249146', 'xxyyaann@vip.qq.com', '0', '管理员', '1', '113.251.26.255', '0', '0', '1440423521', null, '1');
INSERT INTO `user_mad` VALUES ('10321', 'q1197917933', '809b5344499ab79c13e4b33ab8c78d74', '喵哩喵羊', 'slt_q1197917933.jpg', '', '1428249160', '117917933@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10322', '992328', 'a8706afe501725f1db728cd84b6a7239', 'FLY_X', 'nohead.png', '', '1428249335', '774842582@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10323', '919859827', 'bd3845c940073ed61f0c8341a1ab8b48', '阿姨洗铁路', 'nohead.png', '', '1428249350', '919859827@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10324', 'lutouyu116', '5079e1b573d9aa4f9e65d7ac96538abe', 'YC Miy', 'slt_lutouyu116.jpg', 'Miyu,输入法坑爹,少打一个字母,我也是醉了.......', '1428249423', '764579698@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10325', '991954030', '177277588a615378e568008297a7f6b0', 'Mr.Joker', 'nohead.png', '', '1428249450', '991954030@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10326', 'lyqzxxv587', 'ec192cf87d861566faa670eb9e104c73', '樱花般灿烂的笑容', 'nohead.png', '', '1428249490', '819292838@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10327', 'Jessmiku', '151c73647a03991869055ae618c64590', 'Jess', 'nohead.png', '', '1428249501', 'jesswjs@163.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10328', 'lucheng', 'a092a9ec75bb9cf1bd2bed8a3d265123', 'Final_狱帝', 'nohead.png', '', '1428249659', '593859570@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10329', 'ws8196198593', 'a06014e10ae640f209635e149cc1dcc0', '蛞蝓豆腐', 'hed_10329.png', '', '1428249740', '819619859@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10330', 'sysu_team', '163a1c233a03d39d1fa2dff7e1a5af9b', '割禾青', 'slt_sysu_team.jpg', '教练，我想做mad', '1428249781', '495789622@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10331', 'fyjing', '597a65e164a978869b7ba31ec99a4434', '杨靖帆', 'nohead.png', '', '1428249961', '1084765090@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10332', 'qq1131788221', '69fde428642e5d5038a3a1596bc5928c', '双叶杏', 'nohead.png', '', '1428249971', '1131788221@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10333', 'wjj5201314', '3a46d4437f58b18b47f21ffc1fc61cea', '久居他城', 'nohead.png', '', '1428250394', '945509690@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10334', 'yzxcsyf', 'fc94879ef12bd7838cda8a500d98dc33', 'YF君', 'hed_10334.jpg', '', '1428250429', '276030833@qq.com', '0', '管理员', '1', '60.168.23.131', '0', '0', '1440727060', null, '1');
INSERT INTO `user_mad` VALUES ('10335', 'Nickudo', 'b44f661442c75e81727058b90b8931cf', '7号君', 'nohead.png', '', '1428250461', '964796289@qq.com', '0', '管理员', '1', '14.107.155.74', '0', '0', '1437299794', null, '1');
INSERT INTO `user_mad` VALUES ('10336', 'ssw19981211', '69fde428642e5d5038a3a1596bc5928c', '就是根野草', 'nohead.png', '', '1428250515', '498958242@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10337', '12345678', 'af65b92d45cbfb91a03f05b213624731', '起名废', 'nohead.png', '', '1428250604', '2461477760@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10338', '2696985413', '7f459a24060cf9e1297b6fafe8d475fc', 'Neko姬', 'hed_10338.jpg', '', '1428251175', '2696985413@qq.com', '0', '管理员', '2', '116.24.50.252', '0', '0', '1440761973', null, '1');
INSERT INTO `user_mad` VALUES ('10339', 'malthus1888', 'fb06720f020127f7c94625d02076a46f', 'malthus188', 'nohead.png', '', '1428251431', 'malthus188@163.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10340', 'zerozero', 'd52a47a765c0d5305a5f4fcf3ce56f6a', '缪月', 'slt_zerozero.jpg', '', '1428251473', '1119605855@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10341', '951931778@qq.com', 'e2991616be41966067bce2c912cf62a9', 'Babyhellface', 'slt_951931778@qq.com.png', '一起努力吧', '1428251947', '951931778@qq.com', '0', '管理员', '2', '117.136.37.224', '0', '0', '1440059438', null, '1');
INSERT INTO `user_mad` VALUES ('10342', 'youchenhao', '962f352484a44a6a76f89f76ea418a62', '黑千本时', 'nohead.png', '', '1428252454', '435999433@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10343', 'DrawMAD', 'fb06720f020127f7c94625d02076a46f', 'DrawMAD', 'nohead.png', '', '1428253125', 'drawmad@163.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10344', '851348214', 'ee6912367ac4dcd2ac1a70e9f53c21ac', '小小kun', 'slt_851348214.jpg', '这个人很懒，似乎留下了点东西....', '1428253133', 'qweas329@vip.qq.com', '0', '管理员', '2', '222.89.10.107', '0', '0', '1440639849', null, '1');
INSERT INTO `user_mad` VALUES ('10345', 'xx810847967', '2902629b902d02142702d088a78d493f', '我是你熊叔', 'nohead.png', '', '1428253408', '1607886303@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10346', 'chil_0806', 'ab4d898813b440f45e0c47a78b4b05bd', '狼君', 'slt_chil_0806.jpg', '', '1428253479', 'chil_0806@yahoo.com.tw', '0', '管理员', '1', '180.176.88.23', '0', '0', '1439838562', null, '1');
INSERT INTO `user_mad` VALUES ('10347', 'Rewrite', '60b41ab2226117e64ad940198a964006', '新雨白', 'nohead.png', '', '1428254890', '2689406539@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10348', 'jqs100158874', '1a2aa520f84a47fe5e1eff7e5e09bf93', '小小☆精灵', 'slt_jqs100158874.jpg', '', '1428255061', '100158874@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10349', 'yue_yue_r@163.com', '042406b005c8fff90ab37cd39fccefb9', '本多-二代', 'nohead.png', '', '1428255292', 'yue_yue_r@163.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10350', 'limajjj', '67b53e1e120e97bc01fdf65ebbc2b2ba', '米饭Rice', 'hed_10350.jpg', '', '1428255720', 'limajjj@qq.com', '0', '管理员', '1', '220.167.94.176', '0', '0', '1440990853', null, '1');
INSERT INTO `user_mad` VALUES ('10351', 'kancolle', '62a82add2f0b678bc305fdf421e0897c', '叶落feng逝', 'slt_kancolle.png', 'kantai collection', '1428258431', '1803015269@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10352', 'MMMMMJ', 'aec81bc6751042b704775db7ad2d7646', '某某某某鸠', 'nohead.png', '', '1428259863', 'www.1299815699@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10353', 'OpenEDR', 'f9e1685085f67c1ab5bae0d99e1b1f6d', 'EDR', 'nohead.png', '', '1428263980', '416864144@qq.com', '0', '管理员', '2', '211.100.51.62', '0', '0', '1438234758', null, '1');
INSERT INTO `user_mad` VALUES ('10354', '哀鹿SAMA', 'be4ba9a1f0abea862cef1ffc724c6232', '哀鹿SAMA', 'nohead.png', '', '1428264039', '2057992077@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10355', '769352324', '7beb5a8ae5b366d21ef2f0d2d504e2aa', '兔子さん.', 'nohead.png', '', '1428265580', '769352324@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10356', 'guoxin9001', '705ff28fb31753e89ef2872929218e86', '恋の镇魂曲', 'slt_guoxin9001.jpg', '一只单纯的MADER而已', '1428266855', 'guoxin9001@163.com', '0', null, '3', '12.68.181.2', '0', '0', '1441049725', null, '1');
INSERT INTO `user_mad` VALUES ('10357', 'cantove', '9305db44dfb5268b789f7cf2800b4577', 'cantove', 'nohead.png', '', '1428267476', 'jiamingcb@gmail.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10358', '592465854', 'f1be4a6328199121427e90e66f076b96', '好想侵犯未来', 'nohead.png', '', '1428269293', '592465854@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10359', 'Orangexun', 'fd98d3f00ce3603c8a310a62e304ab0c', 'Oxun', 'hed_Orangexun.jpg', '(づ￣ ▽￣)づ', '1428271642', '1991957082@qq.com', '0', '管理员', '2', '223.73.10.177', '0', '0', '1440840243', null, '1');
INSERT INTO `user_mad` VALUES ('10362', 'RKC0000', '097dda064b3ed476aa8a88ba089eb028', 'RKC0000', 'nohead.png', '', '1428276956', 'chingrk0099@gmail.com', '0', null, '1', '223.73.245.145', '0', '0', '1439953501', null, '1');
INSERT INTO `user_mad` VALUES ('10369', 's_darkedge', '5d750e8db048242acbb42448f836cff0', 'RGT.DaRkEdGe.CN', 'nohead.png', '', '1428277560', '329837773@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10375', '652007706@qq.com', '96104733a09b9d2901973468c8877847', '炭烧の片鱼', 'nohead.png', '', '1428279461', '652007706@qq.com', '0', null, '1', '183.66.139.254', '0', '0', '1440807460', null, '1');
INSERT INTO `user_mad` VALUES ('10376', '13902316170', '3609348571de0ed2b9ff8a7f9de2cf42', 'KUMA菌', 'slt_13902316170.gif', '', '1428279482', '2412282451@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10382', '1002446776', 'e3055cd0e056f09a78e5870cd239dbe6', '歪娘', 'nohead.png', '', '1428281044', '1002446776@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10383', 'Cyrilneko', 'ee91892d9581b7a1f0647af3e9d6db38', 'Cyrilneko', 'slt_Cyrilneko.jpg', '', '1428281100', 'cyril_2007@126.com', '0', null, '1', '106.118.96.22', '0', '0', '1435675703', null, '1');
INSERT INTO `user_mad` VALUES ('10384', 'Cranberry', '72c315d38e5f1e743d79a50d28f3692d', '蔓越莓莓莓', 'nohead.png', '', '1428281307', 'Yagade@sina.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10385', '649539460', 'ffb28888c1d41a895c7f8b139c238434', 'TsukiBito牛牛', 'hed_10385.jpg', 'If I see her standing there alone', '1428281371', '649539460@qq.com', '0', null, '2', '117.70.173.98', '0', '0', '1441168653', null, '1');
INSERT INTO `user_mad` VALUES ('10386', 'wsdlpu', 'b3957233dd5294cbf47d95fb3f584239', '皮蛋', 'nohead.png', '', '1428281388', '309534958@qq.com', '0', null, '1', '118.253.116.54', '0', '0', '1439739418', null, '1');
INSERT INTO `user_mad` VALUES ('10387', '572297314', 'fa2cd30d00e2d47df51416ffc2ac16d6', '夜月晓雨', 'nohead.png', '', '1428281964', '572297314@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10388', 'qq954936476', '8e4ec27462d5de434cf475dc5582bd79', '许仕楷', 'nohead.png', '', '1428282134', '954936476@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10389', '635960458', '93227b00e4fc3f8c7b04bcb0757d922f', '梦散成魇', 'hed_635960458.jpg', '', '1428282978', '635960458@qq.com', '0', null, '1', '223.73.51.140', '0', '0', '1437909185', null, '1');
INSERT INTO `user_mad` VALUES ('10390', 'aqwe707', 'e10adc3949ba59abbe56e057f20f883e', '彩笔707', 'nohead.png', '', '1428283737', '573927420@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10391', 'JIMMEL', 'cf1840fe69b26eb8afb3bab2c96e1c98', '西蒙', 'nohead.png', '', '1428283782', 'tqtson@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10392', '2539705350@qq.com', '47c7c99efa9307d0cd1e374fc26a4550', '冬馬や紗', 'nohead.png', '', '1428283996', '2539705350@qq.com', '0', null, '1', '39.189.53.157', '0', '0', '1437208536', null, '1');
INSERT INTO `user_mad` VALUES ('10393', 'y639chen', '7d40417528533f76f6db9f32e9acc04d', '径川水月', 'nohead.png', '', '1428284437', 'clc1027@126.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10394', 'airaria', '8768f109e51d7ded5cc5af569af46201', '触摸世界线の薯条', 'nohead.png', '', '1428284595', '1803405401@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10395', '719502836', '40be4e59b9a2a2b5dffb918c0e86b3d7', 'Xineohp', 'nohead.png', '', '1428285012', '2690757804@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10396', 'as5899297', '2c2f979db58929a4c0c8cc8641e03b12', '雨亭', 'nohead.png', '', '1428285312', '1127472414@qq.com', '0', null, '1', '112.5.236.20', '0', '0', '1439571221', null, '1');
INSERT INTO `user_mad` VALUES ('10397', 'sjybtdb', '2aa4ae3744d9109ae7e8662ef47ba853', '御涵', 'nohead.png', '', '1428285320', 'sjybtdb@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10398', 'ONEWAYS', '367205928cbd9d4aa98668f457b9f842', 'ONEWAYS', 'slt_ONEWAYS.png', '', '1428285897', '695633527@qq.com', '0', '管理员', '2', '183.192.11.108', '0', '0', '1439891061', null, '1');
INSERT INTO `user_mad` VALUES ('10399', 'zy10112029', '0136838031d5c30c04b43564b806a5c1', 'zy10112029', 'slt_zy10112029.jpg', '', '1428286014', 'zhangyu931011@sina.com', '0', '管理员', '2', '60.21.206.185', '0', '0', '1441035400', null, '1');
INSERT INTO `user_mad` VALUES ('10400', 'bombuu', '017bdd3c2b9e9369b9f85b7dd52c68d2', '凌空', 'nohead.png', '', '1428286532', 'bombuu@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10401', '1179751676', '74e2cc945fab02d94b6b90f86de5c979', '落繁锦叶', 'hed_1179751676.jpg', '', '1428286736', '1179751676@qq.com', '0', null, '1', '101.66.68.197', '0', '0', '1437455543', null, '1');
INSERT INTO `user_mad` VALUES ('10402', 'taketoeiheisou', '65a0ec385ca6a0c1e20d1f8270c28303', 'Pointyou', 'nohead.png', '', '1428286930', '531711315@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10403', 'norson', '731982a033a5cc815ac03c8504abb748', '阿诺菌', 'nohead.png', '', '1428286958', '815002851@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10404', 'low88418959', 'b2f8d5ef59354e1ea2ed87dd91425774', 'AKA冰丽酱', 'hed_10404.png', '', '1428287298', 'hiphopyo@qq.com', '0', null, '1', '222.90.216.36', '0', '0', '1439614522', null, '1');
INSERT INTO `user_mad` VALUES ('10405', 'yusagasuki', '99c56281111140b99dc40f3cd1b45364', '特莱嘻嘻嘻', 'slt_yusagasuki.jpg', '', '1428287383', '425433280@qq.com', '0', 'GM001', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10406', '5922666', 'ae38d569d67fc8c2b8d070e37c35c02d', '张文轩', 'nohead.png', '', '1428287459', '346540839@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10407', 'Gintoki_JF', '1c3a176bc2eef00a25253c180fc70998', '方晴晴', 'nohead.png', '', '1428287486', '464657349@qq.com', '0', null, '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10408', 'hl5922666', 'ae38d569d67fc8c2b8d070e37c35c02d', '张文轩123', 'nohead.png', '', '1428287606', '346540839@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10409', 'hlj5922666', 'ae38d569d67fc8c2b8d070e37c35c02d', '张文轩1234', 'nohead.png', '', '1428287764', '15765504839@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10410', 'dakuikui491126', 'a5c6d384910d3d8f1095087d9ffa1e72', '大葵葵', 'nohead.png', '', '1428287768', '1059123141@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10411', '704028350', '996cde4ac502bf348412d4008a39984f', '岁钥丶锍哖', 'nohead.png', '', '1428287922', '704028350@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10412', 'MiraiMiki', '0be5c3205813a9b1d5c64db786e5c8fa', '星宫花', 'nohead.png', '', '1428287991', 'maplemaple@vip.qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10413', '7174226', '996cde4ac502bf348412d4008a39984f', '梦羽夕时', 'nohead.png', '', '1428288012', '7174226@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10414', '1454297787', 'f9c7a49c09a521457bdef5c249dd26fa', '卖萌的节操酱', 'hed_1454297787.png', '', '1428288046', '1454297787@qq.com', '0', '管理员', '2', '36.1.100.151', '0', '0', '1440693867', null, '1');
INSERT INTO `user_mad` VALUES ('10415', '18022244543', 'fa285fc75fe9c831908637bd166f4764', 'knife神经', 'nohead.png', '', '1428288393', '617361995@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10416', '1807669012', '4444aaa77ea70b44a4ed7cb09f37491f', '椎名观月', 'nohead.png', '', '1428288502', '1807669012@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10417', 'asasasa98656', 'dfa0f13511199189e5441a5a813c5f04', 'C_Present', 'slt_asasasa98656.jpg', '', '1428288845', '708954086@qq.com', '0', null, '1', '223.252.194.101', '0', '0', '1439572782', null, '1');
INSERT INTO `user_mad` VALUES ('10418', 'Aki_lucky', 'a70099e5ce541700409f80d7cfbae626', 'Aki_lucky', 'slt_Aki_lucky.jpg', '', '1428288918', '913821202@qq.com', '0', null, '1', '115.200.219.140', '0', '0', '1439610533', null, '1');
INSERT INTO `user_mad` VALUES ('10419', 'yanhailu', '5b835c4578aa7a59d37e4ccc43835d22', '____映冷', 'nohead.png', '', '1428288936', '573741908@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10420', 'kissofangel', '519495667a6b26577a76d6fe78e2ec7e', '小五呆又呆', 'nohead.png', '', '1428289016', 'kissofangel@vip.qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10421', '39172522', '480f047b80da71dfd6d632e9077d5cf2', '没有名字的名字233', 'nohead.png', '', '1428289050', '39172522@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10422', 'hrs1029@163.com', '3956d79734bfb6b8c8a4729f8664a528', '请叫我1029', 'nohead.png', '', '1428289067', 'hrs1029@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10423', 'gzw199351', 'e85765767d49a813a8d0f223dfb8062e', '坏掉化の黑岩', 'hed_gzw199351.jpg', '新人', '1428289118', '869130663@qq.com', '0', null, '2', '121.12.105.26', '0', '0', '1439914489', null, '1');
INSERT INTO `user_mad` VALUES ('10424', 'dzqzldp', 'c336f3c1268accdbd4595f172179551b', 'ONLY_ZP', 'nohead.png', '', '1428289246', 'dzqzldp@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10425', 'onlyzp', 'c336f3c1268accdbd4595f172179551b', 'JUST_ZP', 'nohead.png', '', '1428289796', '1729070459@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10426', 'chaos33', '95fa70d18f87cc83d6e3bd381c7c0f26', 'chaos33', 'hed_10426.gif', '', '1428289897', 'shangchao8@qq.com', '0', null, '2', '27.208.110.164', '0', '0', '1441106391', null, '1');
INSERT INTO `user_mad` VALUES ('10427', '847812760', '28ab1b974da222d1b107f38d9d3a22a7', ' cc', 'slt_847812760.jpg', '', '1428289987', '847812760@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10428', 'kinglimengqi', 'c56c8a50ca0a4d4c16bfc2599e63977b', 'Captain_X', 'nohead.png', '', '1428290316', 'xl@x-workshop.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10429', 'sawashiro85', 'ecf37753b7a76e330503ef127b14e556', '他喵', 'nohead.png', '', '1428290353', '935861215@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10430', 'mhl1981', '886a3b81604937c9426fe08370141172', '中二加持', 'nohead.png', '', '1428290553', 'mhl1981@126.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10431', 'omae11', 'b84b044e132148c0529e81aaaee18d26', '鬼道', 'nohead.png', '', '1428290730', '470757485@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10432', 'xiuxiu', '6f57d5c5f317103d377195011eac8909', '7/3*∞', 'nohead.png', '', '1428290885', '1924790063@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10433', 'fatory', '9fbee5410232342e204cc3740e1f6e54', '冰汐', 'nohead.png', '', '1428290938', '674705863@qq.con', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10434', 'crazyac0', 'bd1e7c5eed89cb64a0aec52f68a03fd2', '鸢尽苍穹', 'nohead.png', '', '1428290985', '791882194@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10435', 'LMTljm', 'ee265d09f9e032640485ae9b60776b44', '琳酱喵', 'slt_LMTljm.png', '喜卖萌，喜捣乱，作品不精但短。', '1428290989', '234kaikai@gmail.com', '0', null, '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10436', 'Biuuuuuuuu', '471d9875426c797034fbfa2a2acb7ff0', 'Biuuuuuuuu', 'nohead.png', '', '1428290997', 'yhl19970103@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10437', '421744450', '6ea303921b70d2d0e59c87fbec9c00b7', '御坂美琴', 'nohead.png', '', '1428291206', '421744450@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10438', '13794610867', '812111e9e6bd1c996c4713e57ffee546', '张妻情6欲', 'slt_13794610867.jpg', '', '1428291241', '305938300@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10439', 'claris', '708cbb84b481bc66149964a0db460661', '请叫我团长sama', 'nohead.png', '', '1428291244', '492035638@qq.com', '0', null, '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10440', '1530701416', '6d1ce7aa0a1d988dc96a2abcd187b45a', '妹控老王', 'nohead.png', '', '1428291272', '1530701416@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10441', 'wanan199118', 'ea5819849d018697db8b899d5967647e', '夏苏荷', 'nohead.png', '', '1428291381', '476013026@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10442', 'hyj8608', '7c4da6c3155eeda9e9e57fb90d368dda', '游离态', 'nohead.png', '', '1428291480', '455873270@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10443', 'lronkm', '8864f834c9f2489f5d60e8f93c5ae4ec', '暖夏暖一夏', 'nohead.png', '', '1428291609', '898942033@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10444', '502177170@qq.com', '1fd472f4ff07df2285404ede9655ccb5', '迷のA', 'nohead.png', '', '1428291692', '502177170@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10445', 'solomonyw', '45809b7557849b0e746dd88e388b7c44', 'ShockTurbo', 'nohead.png', '', '1428291775', '182352812@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10446', 'helloworld', 'c336f3c1268accdbd4595f172179551b', 'sunshine', 'nohead.png', '', '1428291846', 'myhappycool2007@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10447', 'zpswsw', 'fa8927f275ece0e2badfe9c4ea697fb4', '嬷姬', 'nohead.png', '', '1428292237', '504808158@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10448', 'Guyuepoxiao', '1a0ec12e169ab20ac737db95f8a818e3', '古月の破晓', 'nohead.png', '', '1428292344', '1483062259@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10449', 'smkt1998', 'abdc5d6d5e2e9ebcd5a31c002b44326c', 'SakuraManKeTsu', 'hed_10449.jpg', '啊啊啊啊！！！御姐光线！！！', '1428292396', '476335320@qq.com', '0', null, '1', '114.240.199.93', '0', '0', '1439567387', null, '1');
INSERT INTO `user_mad` VALUES ('10450', 'crazyac1', 'bd1e7c5eed89cb64a0aec52f68a03fd2', '二阶堂白', 'slt_crazyac1.jpg', '', '1428292627', '2871644342@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10451', 'a1763023604', '2053c62bed16e927c368845a5c162e91', '渣空白', 'nohead.png', '', '1428292737', '2508183307@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10452', 'papermoon', 'fec2fb64debd94e42f1ba72889d415f4', '纸月', 'nohead.png', '', '1428292828', 'kingtmdwls@outlook.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10453', 'zhupao', 'c336f3c1268accdbd4595f172179551b', 'zhupao', 'nohead.png', '', '1428293068', '270240051@163.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10454', 'gay的天堂', 'd262af40a3f2e1f2fc265d2bf2e9bc72', '王泽荣', 'nohead.png', '', '1428293192', '1342857909@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10455', 'AtomPlanck', 'ab5d4312646fe2e23a8a160ebaa6e395', '圆盘', 'nohead.png', '', '1428293256', '573165693@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10456', '112267', 'c0cad5c918a2bf1b3aeeb4cf20706536', '他山之石', 'nohead.png', '', '1428293285', '2535025638@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10457', 'xcl428102', 'dd4350de504566b26ea5b534706b7bc0', '散落的辰吝', 'slt_xcl428102.png', '一枚只会纯剪的渣渣渣……', '1428293394', '2947094086@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10458', '857989306', '3aa85dded4cf943a3aa8dc5ca68319c1', '王炳智', 'nohead.png', '', '1428293596', 'www.b857989306@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10459', 'cabbage_01', 'e6183310757ec7efc68cede71e6d975f', 'Azzzl', 'nohead.png', '', '1428293639', '780278780@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10460', '19161113', '0a63fdf2ab788f79faafa0bdb819ee0d', '钙加锌', 'slt_19161113.jpg', '', '1428293804', '1825178093@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10461', 'mangoguimo', 'dfaf0d6662469a3f0493ca0c3f2a81c3', '诡墨酱', 'nohead.png', '', '1428293831', 'wingsmuoluo@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10462', '1428106367', 'e3d47c78794a82ef88ab24c942f31790', '九十九狗尾', 'nohead.png', '', '1428294166', '1428106367@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10463', 'q1627743028', 'cd69cfdb0267bc29c7dfb628320b8c12', 'remember丶君', 'nohead.png', '', '1428294184', '1378402121@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10464', '1010699931', '452506947b2d9b189be24645f0804acf', '贝尔', 'nohead.png', '', '1428294377', '1010699931@QQ.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10465', 'wjj945509690', 'b743838f5bd1666c7e3a68b3dc7d47f2', '久居丶他城', 'nohead.png', '', '1428294426', '664839571@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10466', '603245498@qq.com', '28f2a9039f385e1f3b2f4d401bd41b68', '遇见之预见', 'nohead.png', '', '1428295043', '603245498@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10467', 'wenzi不吸血', 'eb6f0bd26d249c6c27e0aabf75613003', '蚊子不吸血', 'nohead.png', '', '1428295323', '2394490715@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10468', 'Yuriy233', '460ca0e0cd956a8496aa30e7ffcb34c1', '余笙Yuriy', 'nohead.png', '', '1428295532', '2223785160@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10469', '528292903', 'bc5b98cabaa78fe01b06022c74217e7a', '花言葉丶', 'nohead.png', '', '1428295710', '528292903@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10470', 'wuyichao71', '5240b6fb376b5d33edfff7d721582b03', '真红若梦', 'hed_10470.jpg', '', '1428295806', 'wuyichao71@126.com', '0', null, '1', '202.119.44.17', '0', '0', '1440643400', null, '1');
INSERT INTO `user_mad` VALUES ('10471', 'zotaku', 'a604d98792e38bc1140e17b859b95d77', 'Zryinv', 'nohead.png', '', '1428295858', 'zotaku@live.cn', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10472', 'Riviera', '571909e9542fec3dd69df98787639906', '起起', 'nohead.png', '', '1428296012', '329766503@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10473', 'fiolyn', 'a1405918c468376a93ffa9553f0874db', 'fiolyn', 'nohead.png', '', '1428296146', '435776720@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10474', 'neutrino', '3fb9a9e214619df701c800ebfe5407bf', 'Neutrino', 'nohead.png', '', '1428296421', '363224022@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10475', '1061246917', '0868be85d9777420c078f76c873a566a', '臭虫', 'slt_1061246917.png', '', '1428296561', '1061246917@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10476', 'Darnell', 'e44f8cf63970db5c2df0a18153bcdf49', 'Darnell', 'nohead.png', '', '1428296804', '414521174@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10477', 'zhl46216', '195d91be1e3ba6f1c857d46f24c5a454', 'Fanc', 'nohead.png', '', '1428296854', '332771784@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10478', 'onepchan6', '5e3c25396da3256964fca9b4081587eb', 'one-虾', 'slt_onepchan6.jpg', '这里是虾的种植场和西瓜的养殖场(((x', '1428297699', 'bobby_emdgs@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10479', '13016800896', '10e999ce8cc3f5f2db7a3174a20f9994', 'Leafer', 'nohead.png', '', '1428297848', '276672830@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10480', 'LankaL', 'ad696b973ed5358421ba59f47e822043', 'lankaNik', 'nohead.png', '', '1428298455', '2499807078@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10481', 'mr521600', 'c5ae2a625cc9a0c9ac449636d135cf02', '麒麟臂', 'nohead.png', '', '1428298534', '909446062@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10482', 'justiceal', '9345b4e983973212313e4c809b94f75d', 'justiceal', 'nohead.png', '', '1428298618', 'justiceal@126.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10483', 'Dylansan', '088b2174192d91d24c71f438b23eadc8', '想你3600天', 'nohead.png', '', '1428298638', '464801471@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10484', 'Ecysg1314', 'a134b08c5e11421b983f4fbcf2069273', '请叫我叶哥', 'nohead.png', '', '1428298845', '18912888336m@sina.cn', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10485', 'c120564339', '1d3f27e761092f57104ce3314793a03a', 'V.V.', 'nohead.png', '', '1428298914', '120564339@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10486', 'lj0123123', '743b325b0c9c8110edd8b9ca094ae334', '十年后', 'slt_lj0123123.png', '', '1428299072', '501176672@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10487', ' kazyi', '660b2c31b08c6b4fbc253c1002e15508', ' kazyi', 'nohead.png', '', '1428299560', 'mansonca@163.com', '0', null, '1', '61.173.55.110', '0', '0', '1439829281', null, '1');
INSERT INTO `user_mad` VALUES ('10488', 'qq508255214', '046c5a856a0c47ecf9cd664cb2a182e0', '星雨丶', 'nohead.png', '', '1428299604', '508255214@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10489', '912654521', '752919877a6794e3f299a7de02503d39', '萝莉爱叠紙飞機', 'nohead.png', '', '1428300135', 'akb.lu@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10490', '690001660', 'c70b350ea0ae6128c7b03610ca06dacb', '丶苏柒', 'hed_10490.jpg', '', '1428301034', '690001660@qq.com', '0', null, '1', '36.22.43.12', '0', '0', '1439870764', null, '1');
INSERT INTO `user_mad` VALUES ('10491', 'yzpqqqq', '1b6c638aa3a08834de1018e8e6198235', '七花', 'nohead.png', '', '1428301082', '100686828@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10492', 'sonyky001', '41944e35019d3ee417a7e80adc86815e', 'team无名', 'slt_sonyky001.jpeg', '', '1428301349', '1248089944@qq.com', '0', null, '1', '123.88.165.116', '0', '0', '1437998314', null, '1');
INSERT INTO `user_mad` VALUES ('10493', 'Nishino_KI', 'cd14ee1df6a288f59b80ada908ba493f', 'Nishino_KI', 'nohead.png', '', '1428302076', 'nishinokisss@gmail.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10494', 'noeigu', '27a82f20e33d8290e9bd23ef5515b5c3', 'noeigu', 'nohead.png', '', '1428302100', 'shoulderfire@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10495', 'freedom', '16df4a7290930805439663d23537a52d', '甘甘静', 'nohead.png', '', '1428302727', '354935014@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10496', 'ranjuan', 'adc3863d8577ad9ad778c0aa55c2b807', '然卷桑', 'nohead.png', '', '1428303216', '24600990@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10497', 'Rice·Spiritless', 'a23fad4602052d637b3468f6cdbf2d0c', 'Rice·Spiritless', 'hed_Rice·Spiritless.jpg', '', '1428303571', '593100203@qq.com', '0', null, '2', '113.13.119.14', '0', '0', '1439989939', null, '1');
INSERT INTO `user_mad` VALUES ('10498', 'Sherlock', '335e4c7844868c8bb3f539b3794c0374', '卷猫Sherlock', 'nohead.png', '', '1428303732', 'wairenmingbi@126.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10499', 'devilbyl', '155fbe1fcf7a624d696f87bfd857b12f', '天之翼', 'slt_devilbyl.jpg', '', '1428303940', '1392628679@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10500', 'evangelionone', '6960df9c28c2734902986546bf693d4c', '中二补完', 'nohead.png', '', '1428304753', 'evangelionone@gmail.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10501', 'cqbygzy', '69473302ec3457ce59ab3234c24e20c2', '魂丹の小顾', 'nohead.png', '', '1428304756', '465214552@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10502', '326943475', 'd2d9fdd3317fe7d7f6ea04f62de72af4', 'RIKKA', 'nohead.png', '', '1428305434', '326943475@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10503', '18084622054', 'd81f2e7d7eb387b10335b80a67ca4184', '小小丶核弹', 'nohead.png', '', '1428305529', '1253388917@qq.com', '0', null, '1', '124.225.111.134', '0', '0', '1438789232', null, '1');
INSERT INTO `user_mad` VALUES ('10504', '511756059', '7cab6a8ca50006bf38fac36716f81910', '世界', 'nohead.png', '', '1428305824', '511756059@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10505', 'GFWind', 'efa8196ef46f5f3ee11324c405ad4372', 'GFWind', 'nohead.png', '', '1428305975', '332859240@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10506', 'li5486320', 'b64e169253d94da02ede5ef2d92fcca2', '永恒2333', 'slt_li5486320.JPG', '', '1428306570', 'www.li5486320@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10507', '453966525', '462db240e02dccd801b6215c95bd92c5', '京子', 'nohead.png', '', '1428306865', '453966525@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10508', 'anqixia', '89de8cadda20a6f35bc28053d8c11f1c', '安琪夏', 'slt_anqixia.jpg', '一直在努力的摸索', '1428306900', '1274958838@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10509', '灼眼的中二病', '1db6f2c6300151fc2da7e1b93a3ca065', '灼眼', 'slt_灼眼的中二病.gif', '雪风是不会沉的', '1428307407', 'zhuoyan2015@outlook.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10510', 'y873360158', 'aa1b737657063256f6bd186031a19db5', '包子SAMA丶', 'nohead.png', '', '1428309020', '873360158@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10511', 'a747131834', 'b8f05b289a0c16de991659fb46965af0', '迷失の倒影', 'nohead.png', '', '1428309586', '747131834@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10512', 'raitolan', 'e025dfb42c31da0d1fd9cb7080179f7e', 'raito', 'slt_raitolan.jpg', '', '1428309612', 'raito921209@sina.com', '0', null, '1', '180.155.125.67', '0', '0', '1436452585', null, '1');
INSERT INTO `user_mad` VALUES ('10513', '598579960@QQ.COM', 'b5cef4f3ab3f5a123782047ea8ce08d3', '谎言', 'nohead.png', '', '1428309643', '598579960@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10514', 'Evagelion', 'f5bbf6cc94f387cdc7d89d51f3706058', 'Nick_EVA', 'slt_Evagelion.jpg', '', '1428310481', '15068510089@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10515', '10232934444', 'c4e70e9f4b207ffe0cdd4c8d6277c647', '赫萝の苹果', 'nohead.png', '', '1428310760', '1023293444@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10516', '945350643', 'c9cc05c785875efa8c01d3df8cf37a79', 'dream chaser', 'nohead.png', '', '1428310849', '945350643@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10517', '729121938', 'a84e7436d53d54aa24028288af37ba28', '一笔蛮殇', 'nohead.png', '', '1428311086', '729121938@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10518', '23897822', '4e46a26863b778d687c197cb9e4403f5', '再见青山', 'nohead.png', '', '1428311218', '974766374@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10519', '1563925898', 'c11c67c23f3abfe4aef4711f662f7188', '天使王冠', 'nohead.png', '', '1428311449', '1563925898@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10520', 'gudan22168', '205c4da4f479df02d3acd03f4369f1d4', '清闲茶叶', 'nohead.png', '', '1428311520', '2558034524@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10521', 'ganmeboyzbw@sina.com', 'd30e1e898f177e601633291d1a8c2b41', '教官零', 'slt_ganmeboyzbw@sina.com.jpg', '', '1428311559', 'gameboyzbw@sina.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10522', 'silver417', '939a23a12c51aa3a4316e45961010381', '狼魔殿下', 'nohead.png', '', '1428312165', '284392677@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10523', 'k1nman', '6d1ce7aa0a1d988dc96a2abcd187b45a', 'k1nman', 'nohead.png', '', '1428312256', '13189431077@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10524', 'yfjing', '597a65e164a978869b7ba31ec99a4434', '靖影青风零', 'nohead.png', '', '1428312447', '2032144021@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10525', '1394581651', 'ca4b14e05d6d6c2922f6da7f0d2f3a0a', '黒沢拓海', 'nohead.png', '', '1428313339', '1394581651@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10526', '1458730976', '215ab9e938a43d6fe26dd1f58b4bd766', '秋子', 'nohead.png', '', '1428314173', '1458730976@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10527', 'jiawo4252639', '9fbee5410232342e204cc3740e1f6e54', '汐冰', 'nohead.png', '', '1428314236', '674705863@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10528', 'llw1834881951', 'a95a7f6e06f74bedc712587b99c075b4', '说说', 'nohead.png', '', '1428314940', '1834881951@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10529', '1005624140@qq.com', 'c6468667c245873eb21bb7b3cc6ea753', 'HunterTJ', 'nohead.png', '', '1428314991', '1005624140@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10530', 'ct1231578946', 'f82ed52b29eff582d9ab7b8c7432b72d', '我是hentai', 'nohead.png', '', '1428316160', '578645901@qq.com', '0', null, '1', '125.116.211.245', '0', '0', '1435056418', null, '1');
INSERT INTO `user_mad` VALUES ('10531', 'zjzjzj', 'a791c90161d541460534f44daf3e7841', '逝水三生', 'nohead.png', '', '1428316693', 'zjzjzj4500@126.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10532', 'feizhijian', '55afcdb516f1b504cba617815b08a960', '翡之剑', 'nohead.png', '', '1428317382', 'www.340639684@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10533', 'wang1990', 'b2cad495473572b6bfb77ff570fedb56', '簪星师', 'nohead.png', '', '1428317552', '340639684@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10534', 'amtxdefault', '7ead3907510e15231b8aa756d1ee867a', '4mtx', 'hed_10534.png', '', '1428317631', '914619924@qq.com', '0', null, '1', '112.228.26.189', '0', '0', '1438852452', null, '1');
INSERT INTO `user_mad` VALUES ('10535', '841019150', '00dc185dd31ba29cac0d67f64a73bd84', '枪哥', 'nohead.png', '', '1428317849', '841019150@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10536', '20120704', '21218cca77804d2ba1922c33e0151105', 'haha', 'nohead.png', '', '1428318472', '3142871591@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10537', 'x行骗艺术家', 'f2fda3c7a12a33cd46eddfd0abf73834', 'buzhimiao_小片', 'nohead.png', '', '1428318642', '925801651@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10538', 'gao0159123', '237f4fbc4fd24243bba433403dd71ebe', '布丁炒豆腐脑', 'slt_gao0159123.jpg', '填坑抠图什么的真是太棒了~\\(≧▽≦)/~（雾）', '1428319028', 'gao0159123@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10539', 'Mrs.中二', 'b0cad1045d96910d6226b11548ff5e5a', 'Mrs.中二', 'nohead.png', '', '1428319236', '207306634@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10540', 'chaizhiyuan', '4c07199cbdbffa70fd8b730d0336d89b', '呆萌鼠', 'slt_chaizhiyuan.jpg', '', '1428319526', '1587513438@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10541', 'juelong3', '80c482b31fa7b365aaacb27a2ec6d7ee', 'Nique', 'nohead.png', '', '1428319573', '370901784@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10542', 'crosswp', 'defc6bb7180f2d64f388c8e43bc51181', 'crosswp', 'nohead.png', '', '1428320677', '847666056@qq.com', '0', null, '1', '117.80.180.157', '0', '0', '1438138627', null, '1');
INSERT INTO `user_mad` VALUES ('10543', 'lc199377', '0a2cb03c4dc29cfc0d56afa46ae8fd2e', '请叫我大葱头', 'nohead.png', '', '1428320799', '550721886@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10544', 'qq1031805738', '2cdc095896685ed6dd860ff510b0926d', '真红', 'nohead.png', '', '1428321573', '1031805738@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10545', ' 774225029', '73867169dc1a01b14a970288d68fa75e', '要温和', 'nohead.png', '', '1428323565', '774225029@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10546', 'kaiSmile', '19657cbaf83b063261ca00e3071110b9', '夜Smile', 'nohead.png', '', '1428323924', '103556329@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10547', 'Bromum', '466d6dd7e0a885c47ee502dd8a543ae4', 'Bromum', 'nohead.png', '', '1428325448', '275313517@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10548', 'u5458955', '05334be8b088ade8debeeb39944e1c85', 'jiaziyang', 'nohead.png', '', '1428326564', '597061425@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10549', 'Jack chocolate', '7a77ffd91d6daf36c53687ade6baa544', '陈泽枫', 'nohead.png', '', '1428326816', '1223932908@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10550', 'Yakamoz', 'b13cc4d6a62a31f00d047fdf8eadbd9e', 'conan', 'hed_10550.jpeg', '', '1428327138', '326562748@qq.com', '0', null, '1', '218.5.187.6', '0', '0', '1439647551', null, '1');
INSERT INTO `user_mad` VALUES ('10551', '2512884391', 'e1b60b2fa96b50a7d1c427fe5c56db3f', 'Krishna', 'nohead.png', '', '1428327560', '2512884391@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10552', '306390590', '57e7f7646ca8a39ef6d9762dbf9adef7', '制帽匠', 'nohead.png', '', '1428327623', '306390590@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10553', 'kuching', '6f9b9339533bc1beb32673903cefb31a', '四月一日猫碳', 'nohead.png', '', '1428328039', 'kuchingwzq@163.com', '0', null, '1', '112.94.245.48', '0', '0', '1435988995', null, '1');
INSERT INTO `user_mad` VALUES ('10554', '1315621346', 'c9f48c1bdda17efd9162e8fd711c9376', '无聊就看动漫', 'nohead.png', '', '1428328259', '1315621346@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10555', 'hainuomi', 'b34c385642a9b924510c0260a0eabca1', '胡桃夹子', 'nohead.png', '', '1428329606', 'zhangkaimengm@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10556', 'feixiong', '3a48376ae7887d4f50e844b7431d7436', '风疾星陨', 'slt_feixiong.jpg', '', '1428329828', 'wfeixiongmiao@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10557', '1069723864', 'c9eb1cdfda8a9878612d6ac9c7f7e02a', '青春休止符', 'nohead.png', '', '1428329959', '1069723864@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10558', 'paperman', '9025d5850400fdf9a709e5238f9d72b4', '纸片人', 'slt_paperman.jpg', '对着我头像张嘴', '1428330180', '1003843259@qq.com', '0', '管理员', '2', '101.81.55.206', '0', '0', '1441165468', null, '1');
INSERT INTO `user_mad` VALUES ('10559', 't19942008', 'a74b5688a3fce2a55feb7cb4593deb93', '拿破仑思密达', 'nohead.png', '', '1428330597', 't19942008@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10560', 'inthefuture', '54a9ba597a4b0eac71a06a72bfe9015c', '星宿之名', 'nohead.png', '', '1428330983', 'mzh663958861@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10561', 'zhushisheng12', 'd91a53eafac0edfb4ca45c6fdba4193e', '沉睡在那1020下', 'nohead.png', '', '1428331057', '578512336@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10562', 'shqqqqqqqq', '33fae2e2471af3bb5bcb4e99b8d28fc8', '丶Myth', 'nohead.png', '', '1428331713', '627521060@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10563', 'SweetRailgun', '18a8e5e200fedb5340914f0455ef9466', 'HighSchoolYE', 'nohead.png', '', '1428332242', '1445988210@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10564', '红Декабристы', 'b1f472d4c6db3eeaab63c1d007406cc0', '红Декабристы', 'hed_10564.png', '', '1428337967', '979679764@qq.com', '0', null, '3', '182.150.147.119', '0', '0', '1440777114', null, '1');
INSERT INTO `user_mad` VALUES ('10565', 'sasitomiya', 'd12c663f951f8c3072fd717f92fc12f9', '贝卢卡斯', 'nohead.png', '', '1428338072', 'ohaolewoaini@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10566', 'Mio酱的蓝白', 'eb492f4b43a6ad1095b68690047c0819', 'Mio酱的蓝白', 'nohead.png', '', '1428340042', '1070988369@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10567', 'anyaqm', 'ec5421f925a242986a22f7f46a069266', '黑眠', 'nohead.png', '', '1428345682', '806390610@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10568', 'Tonyui', '3143e03e506513adb302f8c5c3bd9641', 'Tonyui', 'nohead.png', '', '1428348873', 'zhuty.sh.cn@gmail.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10569', '412568633', 'ef9b3764968a8b894a761af6c801a432', '白色的本子', 'nohead.png', '', '1428361785', '412568633@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10570', '752840444@qq.com', 'c470e8eeb6a2b2f8d2259dddc7c086a2', '水鱼007', 'nohead.png', '', '1428365791', '752840444@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10571', 'DRMADsn', '04134d420443e187271b151ac0a26ad9', 'sity', 'nohead.png', '', '1428369828', 'jqans@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10572', 'city23187', '31caabd0c2d3540cca5cc851c2582155', '易卜生', 'nohead.png', '', '1428376336', 'IbsenE@outloook.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10573', '947676482', '1f462a90356707c6164e0f351c8c1604', '⑨は君の嘘', 'nohead.png', '', '1428377138', '947676482@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10574', 'MOUS_X', '17c498e51811babec8ddf58bccdd709f', '某星', 'nohead.png', '', '1428380575', '623851270@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10575', 'Shinyu', 'b7dd14e4647c40f6ae331a2ca53cfd11', 'Shinyu', 'slt_Shinyu.jpg', '', '1428380667', '1298076636@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10576', '123456', '3d17a1d2ecc02a4a47e6ea4051817f12', 'lenrinfvck', 'nohead.png', 'LittleBusters赛高', '1428381037', 'li084636028@qq.com', '0', '管理员', '2', '171.221.137.153', '0', '0', '1437317732', null, '1');
INSERT INTO `user_mad` VALUES ('10577', 'Resuscitated', '1d04c2c2291f08522aa405adb13c2797', '刘昶', 'nohead.png', '', '1428381883', '403058331@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10578', 'zhaixiaonan', '1d1b81616e22a3e64a631fdad8a0ada4', '一只宅小南', 'nohead.png', '', '1428382035', '1016861617@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10579', '海哥online', '600274134d4bbb706026c8f3ebf54f60', '海哥啊', 'nohead.png', '', '1428382941', 'zyh744900819@126.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10580', '1012736590', '9c6d3dfa0201f74d5c73f62b490cbf18', 'hoki', 'nohead.png', '', '1428385609', '1012736590@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10581', 'sionsion', '9795f14c5f2d0904d53f1bd8ab1281c1', '西碳', 'nohead.png', '', '1428387946', 'yrfz35@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10582', 'wang8285518', 'cc617421375bccb46e427e7930b69e69', '刚好发热体', 'nohead.png', '', '1428391204', '295328948@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10583', 'OTAKU_CHAN', '2eab79f48c51a63f728c932d2ad5ab46', 'CYH', 'nohead.png', '', '1428392540', '273296281@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10584', 'ysl456', 'a0a56f6dcf22b7d994090ea8d0262a89', '思亮菌', 'slt_ysl456.png', '', '1428396986', '597540070@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10585', 'clintop', '28d03ea087ed27387c9af13967da5405', 'clint', 'nohead.png', '', '1428398221', 'clintlyj@gmail.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10586', '770584959', '6bd634c7b87658e0bf7a1fdaff2e1eb7', '哦可', 'nohead.png', '', '1428399689', '770584959@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10587', 'swksll', 'cb136697b191f7df63a8d9a7a6b4bc6d', '孙阳', 'nohead.png', '', '1428399846', 'swksll@sina.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10588', '1028839474', '374c75d512023abd0ada0433c84af81a', '青椒君', 'nohead.png', '', '1428400873', '1028839474@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10589', '140120326', 'bb775c22247f12b3855118e88d0f82f5', '世界线观测者', 'nohead.png', '', '1428401281', '1922828608@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10590', '1034514627', '5416d7cd6ef195a0f7622a9c56b55e84', '灬夏目酱', 'nohead.png', '', '1428401480', '1034514627@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10591', 'NELLLN', '6b96e12a0221276baf9f44a0fde484f2', '女尼纟氏', 'nohead.png', '', '1428402191', '582608846@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10592', 'onepchan5', '5e3c25396da3256964fca9b4081587eb', '微菌少年', 'nohead.png', '', '1428402399', '947150862@qq.com', '0', null, '1', '112.94.245.216', '0', '0', '1435432963', null, '1');
INSERT INTO `user_mad` VALUES ('10593', 'xl714737083', '70513111c2b2a7e688909723b4499fd8', 'Sanakey', 'nohead.png', '', '1428402592', '714737083@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10594', 'iceffxx', 'a27a9f7d5424c2c51f4b3030254543e8', 'JokerGin', 'nohead.png', '', '1428402724', 'waz.antonio@gmail.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10595', '喝可乐的爵士', '93696437dc099e69774ed6c17257222f', '喝可乐的爵士', 'nohead.png', '', '1428403164', '805817926@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10597', 'momojun', 'ed4dd8c3c6d83dea3a1ef706d4ca9e25', '莫莫君', 'nohead.png', '', '1428403724', '568787237@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10598', 'yqxcjun', 'aa67d4dc428b68f8055318d0a3d25d5a', '意气消沉', 'nohead.png', '', '1428403940', '1047868012@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10599', 'w116525023', '3d2319ab06e279be53cb1d260bd46bdc', 'オルゴール', 'nohead.png', '', '1428415549', 'jinyuetuan@126.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10600', 'w116525024', '814f72ae2e091aabcad8cffb2b4c7019', 'musicool', 'nohead.png', '', '1428415739', 'w116525023@126.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10601', 'cirnoc', '7f91398fc40559bb7e43568516a72690', 'cirno', 'slt_cirnoc.jpg', '老王的老婆', '1428416066', 'cirnoc@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10602', 'zxcvbnm1239q', '4216ec5e70bfd05279bed8b3ae12238c', '五渊', 'nohead.png', '', '1428421483', '451952140@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10603', 'AEVANET', '0edc26e0692caa56f122e1e9d0cbda22', 'AEVANET', 'nohead.png', '', '1428456544', '1006136931@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10604', 'tianli201106', 'd48369c1e7e028a4c1684a9ee7e4dd87', 'chachamaru', 'nohead.png', '', '1428459527', 'qinjr4124846@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10605', 'zx3325864', '5b414f0e8611e557906ec8a03bd71c62', '之忧丶知忧', 'nohead.png', '', '1428463864', 'www.632528391@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10606', '起个名累一身汗', 'a05a599e94d1196c47ecd4fcd9dd3fd9', 'maddd', 'nohead.png', '', '1428465670', 'radiov@sina.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10607', 'Radio147', '5ac97d4b3c72233dc2ac495f487a382a', 'Radio147', 'nohead.png', '', '1428465849', 'radio147@sina.cn', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10608', 'King_doll', '1fb4b2945721810521e8110fe541c171', 'King_doll', 'slt_King_doll.jpeg', '你一直想去看海，最后却奔向了草原。人生就是这样吧，曾经你为了某个理想所做的一切努力，最终却带你领略了另一处风景。', '1428472301', '1014600764@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10609', 'GrowingNOOB', '4b9ce4cc0aa2826af1a8ede5289a2eeb', '蛋蛋姐姐', 'hed_GrowingNOOB.jpg', '', '1428491594', 'growingnoob@amver.im', '0', '管理员', '2', '114.94.3.31', '0', '0', '1437494397', null, '1');
INSERT INTO `user_mad` VALUES ('10610', 'zjjxdyy1995', 'f1b3d800817bdc78f3c546311d74fdb5', '夏蝶幽影', 'slt_zjjxdyy1995.jpg', '', '1428492012', '928235769@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10611', 'D调hourglass', 'c47d6fff40b746322295942e2808d2cd', 'D调hourglass', 'slt_D调hourglass.jpg', '由于该用户使用了非法内容，此内容已被屏蔽', '1428500210', 'dhourglass@qq.com', '0', '管理员', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10612', 'VoIceQ', '0c978dade77af37dc5ca17610d4b8c39', 'VoIceQ', 'hed_10612.jpg', '', '1428513184', '497772165@qq.com', '0', '管理员', '2', '221.13.140.222', '0', '0', '1440652539', null, '1');
INSERT INTO `user_mad` VALUES ('10613', 'luckamvs', 'b24331b1a138cde62aa1f679164fc62f', 'luck', 'hed_luckamvs.png', '才不是笨蛋呢！', '1428523503', '402169737@qq.com', '0', null, '2', '119.131.218.143', '0', '0', '1437495743', null, '1');
INSERT INTO `user_mad` VALUES ('10614', 'nana172', 'f8b4283489371f2d5cb1bc1e41bf52be', 'NANA', 'nohead.png', '', '1428544069', '17256311@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10615', 'pklala12', '1a4a0873b72281f73a85dc04182eecfd', '峰岛由宇', 'nohead.png', '', '1428561419', 'saber_cm@sina.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10616', 'dh39430', 'a7e0a58ae8ed2bf1b9dbbdc5a8f7319a', '爱必天风', 'nohead.png', '', '1428572703', '407508208@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10617', 'zipering', '8209106089b390cbda16b5d780dfbe12', 'ziper君', 'slt_zipering.jpg', '', '1428590161', '1540101@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10618', 'Shiina丶白丶', '4bd5782b93b70275af9bc9013160220e', '椎名の决胜胖次', 'nohead.png', '', '1428595083', '791827133@qq.com', '0', '管理员', '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10619', 'mengxiao', 'e4956fb23e689c42f50a33d628106054', '梦晓', 'hed_mengxiao.jpg', '', '1428645642', '815697959@qq.com', '0', null, '2', '183.159.85.50', '0', '0', '1440608306', null, '1');
INSERT INTO `user_mad` VALUES ('10620', 'zxdashali', 'f0757f3072b2a9cd7fb8eb373a8755a3', '白菜', 'nohead.png', '', '1428647492', '420222711@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10621', 'ruanluyu', 'ef4914c5dcff20c97595c20006aa93d3', '中梓星音', 'slt_ruanluyu.jpg', 'ZzStarSound', '1428676246', 'rly_pxx_123@sina.com', '0', 'GM001', '1', '182.38.110.115', '0', '0', '1439608073', null, '1');
INSERT INTO `user_mad` VALUES ('10622', 'stonycat', '700c920be4ad0666885690c963914e5a', '不笑猫', 'hed_10622.jpg', '', '1428745521', '1019949403@qq.com', '0', null, '2', '113.120.174.59', '0', '0', '1440088946', null, '1');
INSERT INTO `user_mad` VALUES ('10623', '635473805', 'e971c4cb3ac76868347b4801c72d7c6c', '丶依了个然', 'nohead.png', '', '1428772286', '635473805@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10624', 'zldust', '4820396592393e950300e8dfcfa486c5', 'ゼロ剪尘', 'slt_zldust.jpg', '渣新一只，还请多多指教_(:з」∠)_', '1428830636', '841009257@qq.com', '0', null, '2', '183.46.184.121', '0', '0', '1441001259', null, '1');
INSERT INTO `user_mad` VALUES ('10625', 'leo950409', '6b87b12b2c856469b1ff5a11014f4aa9', 'AS挚雪', 'nohead.png', '', '1428841593', '411192818@qq.com', '0', null, '1', '182.202.13.51', '0', '0', '1440390284', null, '1');
INSERT INTO `user_mad` VALUES ('10626', 'Misak1026', '1dc658b68bc2e6ce84df7f37aa2d8ad8', 'Misak酱酱', 'slt_Misak1026.jpg', '', '1428868725', '2567723114@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10627', 'qimengyl', '5ea122fa49517aae91c1f8954ea7b37c', '绮梦幽蓝', 'slt_qimengyl.jpg', '', '1428925675', '469554925@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10628', 'Moewolf', '404652bb689b2891e643d1d2be4cd4cc', 'Moewolf', 'nohead.png', '', '1428933286', '794193829@qq.com', '0', '团子', '2', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10629', 'YuanMiao', '9594f9e513a3f5f8e9cb45cbad4e5e81', '缘喵酱', 'hed_10629.jpg', '', '1428935204', '804724151@qq.com', '0', null, '1', '14.19.155.15', '0', '0', '1439832886', null, '1');
INSERT INTO `user_mad` VALUES ('10630', 'Fy.Duck', '2bfefce19a4e94ec6e181614a4e7c9dd', 'Fy.Duck', 'nohead.png', '', '1429648375', 'doorxp2003@sina.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10631', 'amorin', 'ae85e8dbc09751b59a888a604cca387b', '因果业夜', 'nohead.png', '', '1429787223', '2605830674@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10632', 'BakaKaede', 'c7bfc7baada0da7a40f598f17db3e44c', '总在偷懒的傻枫酱', 'nohead.png', '', '1429869474', '1093559095@qq.com', '0', null, '1', '221.2.243.2', '0', '0', '1439970253', null, '1');
INSERT INTO `user_mad` VALUES ('10633', 'Lolali', 'f343eae841c76eb224020f53fbd09275', 'Lolali', 'nohead.png', '', '1430048954', '1178184849@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10634', 'hzetion', '39df3c512e2f7432c5c5e41aa0e41ef9', '海岸离鱼', 'nohead.png', '', '1430057163', '583600702@qq.com', '0', null, '1', '221.237.118.245', '0', '0', '1439846025', null, '1');
INSERT INTO `user_mad` VALUES ('10635', '2690665776@qq.com', 'ebd3f387a419c18cb2b5121011e12520', 'Sawashiro', 'slt_2690665776@qq.com.jpg', '沢城みゆき大好き', '1430235293', '2690665776@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10636', '756316845', 'fc18f6623f2756edb5a838fcfa85a7ff', '涅普涅普', 'hed_756316845.jpg', '', '1430243420', '756316845@qq.com', '0', null, '1', '183.6.39.48', '0', '0', '1436598670', null, '1');
INSERT INTO `user_mad` VALUES ('10637', 's6610328', 'daad7eef690301aa9990b0d0c721899f', '森仔', 'slt_s6610328.jpg', '', '1430265176', 's6610328@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10638', 'sorakasugano', '59fe4d924896de4cc45ca946daae6ff7', '爱衣酱', 'nohead.png', '', '1430268819', '673319756@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10639', 'chen895094868', 'b8593680430155866e0041e55535ca23', '陈雨晨nice', 'nohead.png', '', '1430272031', '895094868@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10640', '475012518@qq.com', '28003f39468197a4c71541224704c0c6', '沁涔汐', 'nohead.png', '', '1430279701', '475012518@qq.com', '0', '管理员', '1', '221.237.20.54', '0', '0', '1439623719', null, '1');
INSERT INTO `user_mad` VALUES ('10641', 'Chromer', '92931e3cf321fc8df3523c97fc4a0d85', 'Chromer', 'nohead.png', '', '1431098856', '846952346@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10642', 'QL70937916', '468acb6afd7ff74f9d5d920336f58437', '廿廿廿', 'nohead.png', '', '1431322424', 'ats9958@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10643', 'Final Universal Love', 'cb6474b4e2f29b95654296bda17da524', '夜未央', 'nohead.png', '', '1431330236', '419955732@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10644', 'cnpeng', 'f5265544277f140d8f6bb7f6f88ea2bc', '流光', 'nohead.png', '', '1431580129', 'ldp159@163.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10645', 'wpj111', 'd940a78c848191ebe72814a1a04b5fb6', 'a11', 'slt_wpj111.jpg', '你甩了我！你居然敢甩我！！', '1431681515', 'wangpengjie369@126.com', '0', '管理员', '2', '122.81.145.143', '0', '0', '1439388182', null, '1');
INSERT INTO `user_mad` VALUES ('10646', 'wu826574558', '34be6ba6c25ef1f90178e49a36639847', '小弑', 'nohead.png', '', '1432136178', '826574558@qq.com', '0', null, '1', '211.162.34.146', '0', '0', '1440886338', null, '1');
INSERT INTO `user_mad` VALUES ('10647', 'cola141', 'ee138727df01a02cdc475406caec8ef3', 'cola', 'nohead.png', '', '1432308404', '455613609@qq.com', '0', null, '1', '218.11.69.216', '0', '0', '1439577813', null, '1');
INSERT INTO `user_mad` VALUES ('10649', '415679570', 'babfb12731db50e802f21b84af85aaa9', '御坂妹妹10052', 'nohead.png', '', '1433009834', '2193702950@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10650', 'zombie', '859a1c35b8cb85cd4d02f5494947ce0a', 'zombie', 'nohead.png', '', '1433057769', '1305496512@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10652', 'cc1055097025', '0b6858c05e8522cc150acc47ad17db2f', 'lancer', 'slt_cc1055097025.gif', '', '1433168283', '1055097025@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10653', 'pl5679899', 'bb239abdff10e6e3c98cf7584d97562f', '上條雲', 'slt_pl5679899.jpg', '', '1433336438', '402056169@qq.com', '0', null, '1', '218.11.179.216', '0', '0', '1439570324', null, '1');
INSERT INTO `user_mad` VALUES ('10654', 'lfk1212', 'e42e95b1c03799bb28914dc08ce961c1', '南方盛开的殇之花', 'nohead.png', '', '1433343685', '941738771@qq.com', '0', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10655', 'MisakaMikoto00', '2b92dcb348ce6f547a3fa40da5083709', '双氧水', 'slt_MisakaMikoto00.JPG', 'ｱｯｰｱｯｰ↑おねぇさま♥↓激しすぎますｱｯｰ↑', '1433345135', '1064737282@qq.com', '0', null, '1', '218.22.4.34', '0', '0', '1439361235', null, '1');
INSERT INTO `user_mad` VALUES ('10656', '1078580223', '58d02ba23b57221cde99a5e231fe816b', '为伱du战天下', 'nohead.png', '', '1433495335', '1078580223@qq.com', '0', null, '1', '219.159.217.238', '0', '0', '1435145771', null, '1');
INSERT INTO `user_mad` VALUES ('10657', '756635176', '8c64ab8f570791238346eec1e4b0669c', '路人甲', 'hed_10657.jpg', '', '1433577449', '756635176@qq.com', '0', null, '1', '117.91.205.152', '0', '0', '1440172443', null, '1');
INSERT INTO `user_mad` VALUES ('10658', 'APassbyDreg', 'b7833f52e51b9eed6ef30adf3ae0a799', 'APassbyDreg', 'nohead.png', '', '1433611680', 'APassbyDreg@outlook.com', '1', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10659', '18785687006', 'c9019205be24c8a277ed8069b49ca2b0', '桂丶KuN', 'nohead.png', '', '1433647609', '1875687006@qq.com', '1', null, '1', null, '0', '0', null, null, '1');
INSERT INTO `user_mad` VALUES ('10663', '729926576', 'd876fac0c791e2cf4c343ded8f88409f', '5cm/s', 'nohead.png', '', '1433754981', '729926576@qq.com', '1', null, '1', '221.180.192.20', '0', '0', '1433755038', '221.180.192.20', '1');
INSERT INTO `user_mad` VALUES ('10664', 'hobend', 'a5205f40143a311fb431fa6f928ef10b', 'happyend', 'nohead.png', '', '1433932169', 'badend@sina.cn', '1', null, '1', '120.197.43.161', '0', '0', '1433932169', '120.197.43.161', '1');
INSERT INTO `user_mad` VALUES ('10665', '156589934@qq.com', '7457ba1e975fa8d9a9fb0c75acb8c3e4', 'SweetCoffee', 'userHead_156589934@qq.com.png', '', '1434092565', '156589934@qq.com', '1', null, '1', '171.221.70.33', '0', '0', '1434115640', '171.221.70.33', '1');
INSERT INTO `user_mad` VALUES ('10666', 'ws1049325044', '9c03fd08f3cffe48e2b285ce94d6452c', 'kokokonata', 'nohead.png', '', '1434150766', '1049325044@qq.com', '1', null, '1', '175.168.249.91', '0', '0', '1434150766', '175.168.249.91', '1');
INSERT INTO `user_mad` VALUES ('10667', 'az4325899', '485638eb7d148ae40cc17831b9225767', '41', 'nohead.png', '', '1434341116', '541438403@qq.com', '1', null, '1', '124.228.179.213', '0', '0', '1434341116', '124.228.179.213', '1');
INSERT INTO `user_mad` VALUES ('10668', '1024678619', '60a36e9a648e45daf7763253e185292b', 'ゆこうひ', 'nohead.png', '', '1434362442', '1024678619@qq.com', '1', null, '1', '114.219.198.209', '0', '0', '1434362442', '114.219.198.209', '1');
INSERT INTO `user_mad` VALUES ('10669', 'a429587016', '1edbb59f0f7b30ccf11a8fef90446600', 'maderの鱿鱼', 'nohead.png', '', '1434442575', '429587016@qq.com', '1', null, '1', '183.64.62.165', '0', '0', '1434442638', '183.64.62.165', '1');
INSERT INTO `user_mad` VALUES ('10670', '', '5f4dcc3b5aa765d61d8327deb882cf99', '', 'nohead.png', '', '1434775037', '435850161@qq.com', '1', null, '1', '14.152.94.24', '0', '0', '1435112406', '121.12.109.104', '1');
INSERT INTO `user_mad` VALUES ('10671', '', '96ec6fd59ca533f8f14bd8a02d5720e7', '', 'nohead.png', '', '1434787572', 'lsh19991112@126.com', '1', null, '1', '61.170.170.101', '0', '0', '1434787572', '61.170.170.101', '1');
INSERT INTO `user_mad` VALUES ('10672', '', 'be015fd80df03dadef92a21ab9f7f1a1', '', 'nohead.png', '', '1434789334', '1771249242@qq.com', '1', null, '1', '218.201.123.235', '0', '0', '1434789334', '218.201.123.235', '1');
INSERT INTO `user_mad` VALUES ('10673', '', 'baf302650b230525037ee5257a455f35', '', 'nohead.png', '', '1434805029', '156240786@QQ.com', '1', null, '1', '119.181.73.58', '0', '0', '1434807010', '119.181.73.58', '1');
INSERT INTO `user_mad` VALUES ('10674', '', 'c60a67160aeaa051c6c43fa8395743d7', '', 'nohead.png', '', '1434809328', '809677602@qq.com', '1', null, '1', '111.140.63.70', '0', '0', '1434809328', '111.140.63.70', '1');
INSERT INTO `user_mad` VALUES ('10675', '', 'f3c0ea8fd47441211ef90302c9e76b9e', '', 'hed_10675.png', '', '1434812217', '414125902@qq.com', '1', null, '1', '115.220.84.17', '0', '0', '1439198849', '115.214.247.112', '1');
INSERT INTO `user_mad` VALUES ('10676', '', '9d279ec8dadff908e61347ce60a5a4cc', '', 'nohead.png', '', '1434817520', '717948932@qq.com', '1', null, '1', '118.72.31.160', '0', '0', '1434817539', '118.72.31.160', '1');
INSERT INTO `user_mad` VALUES ('10677', '', '44c719f37d3321aaa71562047d2fe154', '', 'nohead.png', '', '1434978967', '1377877421@qq.com', '1', null, '1', '114.95.36.14', '0', '0', '1434979397', '114.95.36.14', '1');
INSERT INTO `user_mad` VALUES ('10678', '', '8d420e7ca4bbc51f2f7a5faeb0b487d6', '', 'nohead.png', '', '1435074625', '1009429867@qq.com', '1', null, '1', '180.102.111.30', '0', '0', '1440669257', '180.102.110.209', '1');
INSERT INTO `user_mad` VALUES ('10679', '', '375196a580e99e7cb731db9296042232', '', 'nohead.png', '', '1435079839', '475199914@qq.com', '1', null, '1', '61.164.211.211', '0', '0', '1440692568', '114.111.166.41', '1');
INSERT INTO `user_mad` VALUES ('10680', '', '7a57c8ba1339f67e7be20253e4026f32', '', 'hed_10680.png', 'Aru', '1435080043', '1440494868@qq.com', '1', null, '2', '111.197.217.232', '0', '0', '1440595829', '221.218.90.183', '1');
INSERT INTO `user_mad` VALUES ('10681', 'zhttty', 'aefd2bccc1838af0b22bae2085fb5c7a', '7745774577', 'nohead.png', '', '1435404312', '845175263@qq.com', '1', null, '1', '221.198.52.59', '0', '0', '1435404409', '221.198.52.59', '1');
INSERT INTO `user_mad` VALUES ('10682', 'jidikun', 'b19390250be08c903051623539525c06', 'jidikun', 'nohead.png', '', '1435424508', '446496803@qq.com', '1', null, '1', '114.111.166.43', '0', '0', '1435510897', '114.111.166.43', '1');
INSERT INTO `user_mad` VALUES ('10683', '624853229@qq.com', '6371ee2de2c27f89da2f517714e308e1', '神痕', 'hed_61e97d3fc2.jpg', '', '1435841480', '624853229@qq.com', '1', null, '2', '27.152.218.78', '0', '0', '1440821272', '27.152.217.137', '1');
INSERT INTO `user_mad` VALUES ('10684', '915390128', '9fb3211313d79bc90416d1f6d7542cb8', '萌萌喵和傻傻饭', 'nohead.png', '', '1435912803', '915390128@qq.com', '1', null, '1', '110.20.46.32', '0', '0', '1436377683', '110.20.46.32', '1');
INSERT INTO `user_mad` VALUES ('10685', '458592577@qq.com', '6a74eda3a95af3b1103846d3f1010bd9', '寂寞的足迹', 'nohead.png', '', '1435991780', '458592577@qq.com', '1', null, '2', '113.200.58.67', '0', '0', '1440614085', '113.200.58.73', '1');
INSERT INTO `user_mad` VALUES ('10686', '990280100@qq.com', '13aad81a1dba9108e791598e99957012', 'kuishu1234', 'nohead.png', '葵鼠的重生', '1435992025', '990280100@qq.com', '1', null, '2', '113.200.58.74', '0', '0', '1439533367', '106.185.25.56', '1');
INSERT INTO `user_mad` VALUES ('10687', 'qinqian327', '950946f51923ee46d3b74e5a9fe506b6', 'haseo囧', 'nohead.png', '', '1436014615', 'qinqian327@163.com', '1', null, '2', '116.3.95.142', '0', '0', '1440171692', '116.3.80.161', '1');
INSERT INTO `user_mad` VALUES ('10688', '872056351@qq.com', 'b22382b024cf76b4d5c7823ad73a94a7', '梦酱永遠', 'hed_10688.jpg', '', '1436015191', '872056351@qq.com', '1', null, '2', '115.210.43.33', '0', '0', '1439831171', '115.210.54.36', '1');
INSERT INTO `user_mad` VALUES ('10689', '472622185', 'b73fc3016d96f6937f8f6935e5ec5618', 'Lvshakugan', 'hed_10689.jpg', '', '1436015244', '472622185@qq.com', '1', null, '2', '171.95.225.147', '0', '0', '1439570268', '171.91.178.47', '1');
INSERT INTO `user_mad` VALUES ('10690', 'minagilasty@gmail.co', '36e1a5072c78359066ed7715f5ff3da8', '拉蒂司', 'hed_10690.png', '泷沉琉璃七大不可思议之一：风尘没脱稿', '1436016190', 'minagilasty@gmail.com', '1', null, '2', '119.254.227.156', '0', '0', '1440642974', '114.253.89.4', '1');
INSERT INTO `user_mad` VALUES ('10691', '821214765@qq.com', 'a21c1a7f4fdaffa08b4295633bb3f46a', '零度', 'nohead.png', '', '1436016651', '821214765@qq.com', '1', null, '2', '180.115.131.18', '0', '0', '1440349276', '121.231.198.192', '1');
INSERT INTO `user_mad` VALUES ('10692', '1415701982@qq.com', '8989b5f5756104eeeb0383667bfa9fc3', 'X丶X丶Y', 'nohead.png', '- ( ゜- ゜)つロ 乾杯~ -', '1436017882', '1415701982@qq.com', '1', null, '2', '114.249.31.88', '0', '0', '1440958502', '221.221.223.235', '1');
INSERT INTO `user_mad` VALUES ('10693', 'SAIL', '36b74011656ca260cf012f42a719b991', 'SAIL', 'nohead.png', '', '1436018030', '304365786@qq.com', '1', null, '1', '183.147.8.34', '0', '0', '1440763880', '183.147.227.139', '1');
INSERT INTO `user_mad` VALUES ('10694', '1025188244@qq.com', 'bb367c5193f73c93e33682f54b2bb357', '  拓海双炽', 'nohead.png', '', '1436019928', '1025188244@qq.com', '1', null, '2', '183.131.105.173', '0', '0', '1440219784', '58.23.36.247', '1');
INSERT INTO `user_mad` VALUES ('10695', 'xcyhero', '93a9e5bb1d598a453606e890f72bd393', '悲伤的小夏', 'nohead.png', '', '1436023387', '294928302@qq.com', '1', null, '2', '120.2.122.26', '0', '0', '1436023433', '120.2.122.26', '1');
INSERT INTO `user_mad` VALUES ('10696', ' wp419375036', 'e5e055f36b46380137b9e8363294270a', '风间古明地', 'hed_ wp419375036.jpg', 'M@der初心者 | 是mader不是UP | 已然成舰狗 | 贫R赛高 | 小学生真是太棒了 | SC2黄金鸡 | 偏爱裸足你打我呀 | 是绅士不是hentai |', '1436025458', 'e419375036@163.com', '1', null, '2', '121.204.112.231', '0', '0', '1440605127', '111.78.104.225', '1');
INSERT INTO `user_mad` VALUES ('10697', '12454262772@qq.com', '35be7c07364e7e76650bf124defbc1d1', '火海GK', 'nohead.png', '', '1436052834', '1245426277@qq.com', '1', null, '2', '112.85.66.141', '0', '0', '1436052946', '112.85.66.141', '1');
INSERT INTO `user_mad` VALUES ('10698', '915013406@qq.com', 'cf5a23926edb64d40b6adaa4ab65fc49', 'watersky', 'hed_10698.png', '站在人生的十字路口，不知道自己何去何从', '1436085218', '915013406@qq.com', '1', null, '2', '202.101.138.130', '0', '0', '1440940118', '218.85.36.129', '1');
INSERT INTO `user_mad` VALUES ('10700', '', '28bca917fb96eaf88ccc0a0c3b8ca06b', '', 'nohead.png', '', '1436094074', '76494415@qq.com', '0', null, '1', '218.2.113.98', '0', '0', '1436094074', '218.2.113.98', '1');
INSERT INTO `user_mad` VALUES ('10701', 'wangyih1996', '28bca917fb96eaf88ccc0a0c3b8ca06b', '一笑悬命', 'hed_10701.png', '', '1436094122', '764944105@qq.com', '1', null, '1', '114.218.64.91', '0', '0', '1439950672', '218.2.113.98', '1');
INSERT INTO `user_mad` VALUES ('10702', '1390066314', '3b9f76a29aa7c454bedc286a1a1c236b', '夕弦@提不起劲', 'nohead.png', '', '1436096640', '1390066314@qq.com', '1', null, '1', '183.213.56.171', '0', '0', '1436096723', '183.213.56.171', '1');
INSERT INTO `user_mad` VALUES ('10703', '402078245@qq.com', '9905d2302127be84a1267a3a26f5af2e', '音稻', 'hed_10703.jpg', '', '1436099819', '402078245@qq.com', '1', null, '2', '116.19.104.248', '0', '0', '1439572226', '61.143.46.109', '1');
INSERT INTO `user_mad` VALUES ('10704', 'mikatsuki_T', '30ec9fd8bf0027b239da39b61c321347', 'Mikatsukoの小T', 'nohead.png', '', '1436118232', 'ifeelthegalaxy@gmail.com', '1', null, '1', '153.177.39.118', '0', '0', '1436118392', '153.177.39.118', '1');
INSERT INTO `user_mad` VALUES ('10705', '232056756@qq.com', '6e123030e19ce5e48e4a2bcb400dfe64', 'NiseSa', 'nohead.png', '', '1436119170', '232056756@qq.com', '1', null, '1', '61.183.73.146', '0', '0', '1436119315', '61.183.73.146', '1');
INSERT INTO `user_mad` VALUES ('10706', 'a1309742987', '89d9acff84dc8d15c4f1fbb1c8cbb75e', '白痴堂', 'nohead.png', '', '1436146281', '1309742987@qq.com', '1', null, '1', '139.201.147.4', '0', '0', '1436146542', '139.201.147.4', '1');
INSERT INTO `user_mad` VALUES ('10707', '88888888', 'dd9d21e22391090ddce7c6ed58c6412d', '快要坏掉的BD', 'nohead.png', '', '1436172109', '447928277@qq.com', '1', null, '1', '125.122.91.4', '0', '0', '1436461278', '183.158.11.162', '1');
INSERT INTO `user_mad` VALUES ('10708', 'KEYbasara', 'bd4b2968cf49d116abec71b706a2e6fb', 'KEY', 'hed_KEYbasara.png', '', '1436203148', '2456274095@qq.com', '1', null, '1', '60.166.169.44', '0', '0', '1440312438', '139.226.130.90', '1');
INSERT INTO `user_mad` VALUES ('10709', '', '96132ecbd1c445e2e2d0a2a59e80b20b', '', 'nohead.png', '', '1436322841', '376952828@qq.com', '0', null, '1', '183.6.39.19', '0', '0', '1436322866', '183.6.39.19', '1');
INSERT INTO `user_mad` VALUES ('10710', 'piano77777@qq.com', '3ade3fd6e8eef84f2ea91f6474be10d9', '7c', 'hed_piano77777@qq.com.png', '7c', '1436335751', '993987250@qq.com', '1', null, '2', '106.117.121.11', '0', '0', '1440047578', '106.117.122.53', '1');
INSERT INTO `user_mad` VALUES ('10711', 'marshall_fun', 'fb06720f020127f7c94625d02076a46f', 'Marshall_fun', 'hed_marshall_fun.png', '', '1436336308', 'marshall-fun@amver.im', '1', null, '2', '112.65.46.134', '0', '0', '1440740625', '112.65.46.134', '1');
INSERT INTO `user_mad` VALUES ('10712', '413966801@qq.com', '96e79218965eb72c92a549dd5a330112', '东风谷⑨香', 'nohead.png', '', '1436406904', '413966801@qq.com', '1', null, '2', '113.200.58.69', '0', '0', '1436407114', '113.200.58.69', '1');
INSERT INTO `user_mad` VALUES ('10713', '', '', '', 'nohead.png', '', '1436412365', '846486783@qq.com', '0', null, '1', '116.230.71.158', '0', '0', '1436412365', '116.230.71.158', '1');
INSERT INTO `user_mad` VALUES ('10714', '843486783', 'e0daff58a17554a8ac91237fda9add15', '风傲独翔', 'nohead.png', '', '1436412453', '843486783@qq.com', '1', null, '2', '180.154.31.223', '0', '0', '1440833397', '116.230.71.158', '1');
INSERT INTO `user_mad` VALUES ('10715', '', '', '', 'nohead.png', '', '1436452347', 'raito921209@163.com', '0', null, '1', '180.155.125.67', '0', '0', '1436452347', '180.155.125.67', '1');
INSERT INTO `user_mad` VALUES ('10716', '1204575805@qq.com', 'e025dfb42c31da0d1fd9cb7080179f7e', 'Raito_喵君', 'nohead.png', '', '1436452497', '1204575805@qq.com', '1', null, '1', '116.226.67.171', '0', '0', '1436504663', '180.155.125.67', '1');
INSERT INTO `user_mad` VALUES ('10717', '1130233811@qq.com', '47747d18182fd047064e3d42e0595399', '天蓝梦境', 'nohead.png', '', '1436520877', '1130233811@qq.com', '1', null, '2', '182.150.140.12', '0', '0', '1436520980', '182.150.140.12', '1');
INSERT INTO `user_mad` VALUES ('10718', 'ALTCKY', '9a856c6ccd2f657bb3a357c20cd559e6', '才人君', 'hed_ALTCKY.gif', '50%绅士,30%魔法，20%不明液体', '1436616267', '905294759@qq.com', '1', null, '2', '111.43.134.47', '0', '0', '1440941586', '175.164.230.69', '1');
INSERT INTO `user_mad` VALUES ('10719', 'Sankarea', '1023b8333723fef2ed1c78563d1f021a', 'Sankarea', 'hed_Sankarea.jpg', '', '1436688411', '1102235300@qq.com', '1', null, '1', '115.228.65.121', '0', '0', '1440294251', '122.232.42.1', '1');
INSERT INTO `user_mad` VALUES ('10720', 'johnnybright', '740848852b0e24c655924d83811d52f2', 'johnnybright', 'hed_10720.jpg', '', '1436716024', '277928611@qq.com', '1', null, '2', '120.71.11.179', '0', '0', '1440432954', '120.71.94.162', '1');
INSERT INTO `user_mad` VALUES ('10721', '1450489498', '6d6feb4c1e9de3ae28069d8620ca0cbc', 'tadey', 'nohead.png', '', '1436806643', 'gikenyuu@icloud.com', '1', null, '1', '126.227.237.91', '0', '0', '1436806748', '126.227.237.91', '1');
INSERT INTO `user_mad` VALUES ('10722', '', 'a1b668efc21a9d35409ebbc3748d9138', '', 'nohead.png', '零之幽\n', '1436880652', '552509387@qq.com', '0', null, '1', '114.111.167.8', '0', '0', '1437963571', '60.191.30.25', '1');
INSERT INTO `user_mad` VALUES ('10723', 'sifengyuan', '76c9662d62728b46afa8ccadb0160e4f', '四枫院', 'nohead.png', '', '1436919948', '1248640348@qq.com', '1', null, '1', '14.28.49.195', '0', '0', '1436920137', '14.28.49.195', '1');
INSERT INTO `user_mad` VALUES ('10724', 'yyh123ddf', '0a6db2ecf7a30e4774b02b45172a7f9c', 'Seine', 'hed_yyh123ddf.jpg', '', '1437141699', '872757952@qq.com', '1', null, '1', '1.204.182.85', '0', '0', '1437487680', '117.135.212.22', '1');
INSERT INTO `user_mad` VALUES ('10725', '617573244@qq.com', 'fe4b46dd2ef782dde3c17b72521f3908', 'lopo', 'hed_617573244@qq.com.jpg', '', '1437200325', '617573244@qq.com', '1', null, '1', '113.88.115.190', '0', '0', '1437200536', '113.88.115.190', '1');
INSERT INTO `user_mad` VALUES ('10726', '515514053@qq.com', '4aadec3dfbc4aeb7b8a2cd268627eac7', '一氧化二氘', 'nohead.png', '', '1437293198', '515514053@qq.com', '1', null, '1', '27.46.137.94', '0', '0', '1437293318', '27.46.137.94', '1');
INSERT INTO `user_mad` VALUES ('10727', '863831149', '6a117abd704284762c3f74e95af7d848', 'ziwei', 'nohead.png', '', '1437317389', '863831149@qq.com', '1', null, '1', '123.151.21.24', '0', '0', '1437317389', '123.151.21.24', '1');
INSERT INTO `user_mad` VALUES ('10728', '', 'fc1b5936f4c80b57c2935808837486e7', '', 'nohead.png', '', '1437366207', '1554105027@qq.com', '0', null, '1', '1.58.248.49', '0', '0', '1437366338', '1.58.248.49', '1');
INSERT INTO `user_mad` VALUES ('10729', '', '', '', 'nohead.png', '', '1437398944', 'wongyattung@hotmail.com', '0', null, '1', '113.254.152.185', '0', '0', '1437398944', '113.254.152.185', '1');
INSERT INTO `user_mad` VALUES ('10730', '', '', '', 'nohead.png', '', '1437399926', 'yattung@connect.hku.hk', '0', null, '1', '113.254.152.185', '0', '0', '1437399926', '113.254.152.185', '1');
INSERT INTO `user_mad` VALUES ('10731', 's200614223', 'a469abd6454766a03187d8b12a0b0e6b', '平澤憂', 'hed_s200614223.jpg', '', '1437399948', '258357@gmail.com', '1', null, '1', '113.254.152.185', '0', '0', '1437400138', '113.254.152.185', '1');
INSERT INTO `user_mad` VALUES ('10732', 'mikumiki', 'be09fe28fc2f07da20666c48d76b60aa', '阿樊', 'hed_mikumiki.jpg', 'weibo@阿樊cc', '1437400185', 'mikumiki@sina.com', '1', null, '1', '114.231.188.221', '0', '0', '1437400258', '114.231.188.221', '1');
INSERT INTO `user_mad` VALUES ('10733', 'heyuan123', '75b8ea7d70fb7d1beacb01957fef82a6', '曼吱咊', 'hed_heyuan123.png', '', '1437495677', '473777732@qq.com', '1', null, '2', '1.58.178.145', '0', '0', '1437495849', '1.58.178.145', '1');
INSERT INTO `user_mad` VALUES ('10734', 'dmcnero', 'c86dd023adc52122ea1cfe9b2e33af5b', '懒懒懒蛋蛋子', 'nohead.png', '', '1437496099', 'dmcnero@163.com', '1', null, '2', '117.172.24.154', '0', '0', '1437496192', '117.172.24.154', '1');
INSERT INTO `user_mad` VALUES ('10735', 'zaturama007', 'cac7dcad95d3cb7f5d72381e0475590d', 'zaturama007', 'nohead.png', '', '1437597297', 'zaturama007@gmail.com', '1', null, '1', '70.199.112.52', '0', '0', '1437597440', '70.199.112.52', '1');
INSERT INTO `user_mad` VALUES ('10736', '3054762103@qq.com', '6fd90b2a9f4149681795679d5df0ac2e', '小豆丁', 'hed_10736.gif', '', '1437629699', '3054762103@qq.com', '1', null, '1', '117.143.164.123', '0', '0', '1441175497', '117.143.31.93', '1');
INSERT INTO `user_mad` VALUES ('10737', '919291420', 'c182ea12ca07004800bb404d4213993f', '小葱饼干', 'hed_919291420.jpg', '', '1437665881', '919291420@qq.com', '1', null, '1', '220.197.210.160', '0', '0', '1438010393', '220.197.211.138', '1');
INSERT INTO `user_mad` VALUES ('10738', '', '', '', 'nohead.png', '', '1437665928', '654060186@qq.com', '0', null, '1', '220.197.211.138', '0', '0', '1437665928', '220.197.211.138', '1');
INSERT INTO `user_mad` VALUES ('10739', '', '', '', 'nohead.png', '', '1437730218', '565948830@qq.com', '0', null, '1', '115.156.193.40', '0', '0', '1437730218', '115.156.193.40', '1');
INSERT INTO `user_mad` VALUES ('10740', '642977467', 'bf078bf425debc40858e7e8867c94d8d', '长门长门长', 'nohead.png', '', '1437829811', '642977467@qq.com', '1', null, '1', '180.159.57.196', '0', '0', '1437830201', '180.159.57.196', '1');
INSERT INTO `user_mad` VALUES ('10741', '', '65a337cce952e5d2a1d7e3daaf96f51a', '', 'hed_.png', '', '1437875673', '963552825@qq.com', '0', null, '1', '114.54.2.68', '0', '0', '1438062518', '182.18.100.183', '1');
INSERT INTO `user_mad` VALUES ('10742', 'reAct木子', '7f3511946d6737b058a3bbc34b450244', 'reAct木子', 'nohead.png', '', '1437962119', '1030260902@qq.com', '1', null, '1', '222.125.46.15', '0', '0', '1437962326', '222.125.46.15', '1');
INSERT INTO `user_mad` VALUES ('10743', '1461261625@qq.com', '91f86466794d73aeeb4bc6ea30d9c787', '水也木又', 'nohead.png', '', '1438084499', '1461261625@qq.com', '1', null, '1', '171.107.25.128', '0', '0', '1438084559', '171.107.25.128', '1');
INSERT INTO `user_mad` VALUES ('10744', 'wxxpjd', '185047043d79d3dd5f119e50d98e5170', '潇霄apj', 'hed_wxxpjd.jpg', '灭べ～！リア充ともめ', '1438136466', '1486963474@qq.com', '1', null, '2', '116.1.83.227', '0', '0', '1439651319', '116.1.89.72', '1');
INSERT INTO `user_mad` VALUES ('10745', 'tsubasano', 'cae33a0264ead2ddfbc3ea113da66790', 'tsubasano', 'nohead.png', '', '1438143301', 'tsubasano@gmail.com', '1', null, '1', '58.246.91.198', '0', '0', '1438143954', '58.246.91.198', '1');
INSERT INTO `user_mad` VALUES ('10746', 'dereisk', '5ab5e151b2512d682c50fcf9af30b01f', '西格@西格蒙德', 'nohead.png', '', '1438154905', 'dereisk@126.com', '1', null, '1', '122.230.126.255', '0', '0', '1438155101', '122.230.126.255', '1');
INSERT INTO `user_mad` VALUES ('10747', 'terry2177', '251d0283b594899ed418b5c1573266f3', 'reiki', 'nohead.png', '', '1438176600', '664302427@qq.com', '1', null, '2', '113.200.58.75', '0', '0', '1440229864', '120.37.53.174', '1');
INSERT INTO `user_mad` VALUES ('10748', 'wuliao2', 'fcea920f7412b5da7be0cf42b8c93759', '无聊2', 'nohead.png', '', '1438181957', '774220196@qq.com', '1', null, '1', '183.131.105.171', '0', '0', '1438182247', '183.131.105.171', '1');
INSERT INTO `user_mad` VALUES ('10749', '', '', '', 'nohead.png', '', '1438190294', 'a_popoo@outlook.com', '0', null, '1', '121.205.37.236', '0', '0', '1438190294', '121.205.37.236', '1');
INSERT INTO `user_mad` VALUES ('10750', 'whicancoo', 'f545051b46cef42a56e53fd56e42c96d', '丿灬雾赤辰', 'hed_10750.jpg', '', '1438191574', '313367304@qq.com', '1', null, '1', '117.24.196.178', '0', '0', '1438249697', '121.205.37.236', '1');
INSERT INTO `user_mad` VALUES ('10751', 'aiwass', '331fa94daffa8da1f4a2ce6aacfa3800', '老仓育', 'nohead.png', '', '1438224642', 'aiwass@126.com', '1', null, '1', '180.154.31.157', '0', '0', '1438224800', '180.154.31.157', '1');
INSERT INTO `user_mad` VALUES ('10752', '447818958', '9b8d10cd9edc3c049b81e59f7ee77dba', 'CityBE', 'hed_10752.jpg', '', '1438240297', '447818958@qq.com', '1', null, '1', '111.222.236.254', '0', '0', '1439574625', '111.222.236.254', '1');
INSERT INTO `user_mad` VALUES ('10753', 'xuyunfeikirito', 'c9841a4b7beca2e5013797d7f4d15d58', '云飞', 'nohead.png', '', '1438245172', '410957222@QQ.COM', '1', null, '1', '60.168.166.165', '0', '0', '1438245304', '60.168.166.165', '1');
INSERT INTO `user_mad` VALUES ('10754', 'YLXQ007', 'b3957233dd5294cbf47d95fb3f584239', '309534958@qq.com', 'nohead.png', '', '1438245507', 'wsdlpu12@163.com', '1', null, '1', '118.253.110.83', '0', '0', '1438245621', '118.253.110.83', '1');
INSERT INTO `user_mad` VALUES ('10755', '404527961', '6a0936e32c7fe1a8b105668acc283615', '守护风矢', 'nohead.png', '', '1438259819', '404527961@qq.com', '1', null, '1', '124.231.126.34', '0', '0', '1438260136', '124.231.126.34', '1');
INSERT INTO `user_mad` VALUES ('10756', 'xiaoyangxj2015', 'caef6e9bdef7cd8b34bbc15b97bb70a8', '寂寞风尘', 'nohead.png', '', '1438266466', '83121198@qq.com', '1', null, '2', '113.200.58.69', '0', '0', '1440409876', '218.11.179.216', '1');
INSERT INTO `user_mad` VALUES ('10757', 'geassgeass', '8386a288be02a0d8d10e1219664d0577', '蘑菇', 'nohead.png', '', '1438268701', '584334927@qq.com', '1', null, '2', '121.231.230.159', '0', '0', '1440410748', '180.102.110.187', '1');
INSERT INTO `user_mad` VALUES ('10758', '1215828663', '3dd062d4bde0f58397be98c0a2ccbea7', 'KAquarius', 'hed_10758.JPG', '', '1438341063', '1215828663@qq.com', '1', null, '1', '115.237.237.114', '0', '0', '1438504956', '183.144.203.192', '1');
INSERT INTO `user_mad` VALUES ('10759', 'zssama', 'a6771384cd657af48a40380b48954dec', '我和妹妹结婚了', 'hed_10759.jpg', '666', '1438415348', '1521648103@qq.com', '1', null, '1', '14.216.105.231', '0', '0', '1438415409', '14.216.105.231', '1');
INSERT INTO `user_mad` VALUES ('10760', 'Solatang', '8a1148a74ba479fcaca5e34f5de73d45', 'Solatang', 'hed_10760.jpg', '', '1438422407', '398978220@qq.com', '1', null, '2', '183.53.34.146', '0', '0', '1440608084', '49.113.130.233', '1');
INSERT INTO `user_mad` VALUES ('10761', '泷沉琉璃MAD组', '6a74eda3a95af3b1103846d3f1010bd9', '泷沉琉璃MAD组', 'nohead.png', '', '1438423283', 'chengyj@stu.xjtu.edu.cn', '1', null, '2', '113.200.58.75', '0', '0', '1439213545', '113.200.58.72', '1');
INSERT INTO `user_mad` VALUES ('10762', 'RL_ENDING', '6a74eda3a95af3b1103846d3f1010bd9', 'RL_ENDING', 'nohead.png', '', '1438424042', '570981650@qq.com', '1', null, '2', '113.200.58.72', '0', '0', '1440270088', '113.200.58.72', '1');
INSERT INTO `user_mad` VALUES ('10763', '', '', '', 'nohead.png', '', '1438426314', 'a304365786@163.cpm', '0', null, '1', '183.146.115.240', '0', '0', '1438426314', '183.146.115.240', '1');
INSERT INTO `user_mad` VALUES ('10764', 'SAIL-FAN', '36b74011656ca260cf012f42a719b991', 'SAIL-FAN', 'nohead.png', '', '1438426568', 'a304365786@163.com', '1', null, '2', '183.147.246.246', '0', '0', '1440605139', '183.146.115.240', '1');
INSERT INTO `user_mad` VALUES ('10765', 'orangelight', 'd1946a17b4475b2c43ccbc20d5fd704f', 'DarkVi', 'nohead.png', '', '1438426687', '495176663@qq.com', '1', null, '1', '101.86.152.198', '0', '0', '1438426893', '101.86.152.198', '1');
INSERT INTO `user_mad` VALUES ('10766', '162221663', '1bcb6f1a7203ff379da387e835710a3e', 'Sao丿year', 'nohead.png', '', '1438601490', '162221663@qq.com', '1', null, '1', '42.91.241.182', '0', '0', '1440057540', '42.91.29.118', '1');
INSERT INTO `user_mad` VALUES ('10767', '736379137@qq.com', '26e1235be1c85c4b79662b80bda67abb', 'VcaDM', 'hed_10767.JPG', '', '1438618798', '736379137@qq.com', '1', null, '2', '106.118.32.192', '0', '0', '1440781057', '27.189.232.119', '1');
INSERT INTO `user_mad` VALUES ('10768', 'cheeseharry', '0ad862078a72cefa0e6b6ae7783b70db', 'cheeseharry', 'hed_10768.jpg', '', '1438682710', '393954278@qq.com', '1', null, '1', '183.64.115.213', '0', '0', '1438682772', '183.64.115.213', '1');
INSERT INTO `user_mad` VALUES ('10769', '', '', '', 'nohead.png', '', '1438827663', '2379374691@qq.com', '0', null, '1', '114.217.4.183', '0', '0', '1438827663', '114.217.4.183', '1');
INSERT INTO `user_mad` VALUES ('10770', '503924052', '9fbee5410232342e204cc3740e1f6e54', 'Zera', 'hed_10770.jpg', '', '1438827816', '503924052@qq.com', '1', null, '1', '171.106.194.56', '0', '0', '1439954210', '116.9.39.244', '1');
INSERT INTO `user_mad` VALUES ('10771', '873244656', '6b9b8c636fa8ca9bc8f6410947e689e7', '温馨提示', 'nohead.png', '', '1438871755', '873244656@qq.com', '1', null, '1', '218.18.49.9', '0', '0', '1438871890', '218.18.49.9', '1');
INSERT INTO `user_mad` VALUES ('10772', 'ihaoshuai37', 'dc77ca7ba0b7d002e7284e90b66d06cd', '脑浆炸裂的Ah丶', 'nohead.png', '', '1438947311', '2294744278@qq.com', '1', null, '1', '115.211.33.208', '0', '0', '1440818160', '115.210.30.76', '1');
INSERT INTO `user_mad` VALUES ('10773', '896595751', '210b9e208b48639665691141bbd87cf9', 'SugarMiku', 'hed_10773.jpg', '', '1439006720', '896595751@qq.com', '1', null, '2', '220.173.140.151', '0', '0', '1440032279', '117.140.238.22', '1');
INSERT INTO `user_mad` VALUES ('10774', 'conceptangel', 'dfae1013912e001b959fb7d32e2b3906', '概念の天使', 'hed_10774.gif', '', '1439044157', '2251359831@qq.com', '1', null, '2', '171.113.93.234', '0', '0', '1439741504', '171.113.98.234', '1');
INSERT INTO `user_mad` VALUES ('10775', 'm15173492957', '183e898747f9f4d16b53da72bff24f02', '月夜相思', 'nohead.png', '', '1439117711', '1170426674@qq.com', '1', null, '1', '27.38.0.106', '0', '0', '1439856644', '27.38.0.77', '1');
INSERT INTO `user_mad` VALUES ('10776', 'SungHsu', 'b50eef74baf316832eae664b4a36ce18', 'ヤマト風', 'hed_10776.png', '', '1439363920', 'sunghsu@foxmail.com', '1', null, '1', '218.8.150.196', '0', '0', '1440075468', '60.11.212.48', '1');
INSERT INTO `user_mad` VALUES ('10777', 'graypoint', 'efc8ff683236eb4e2b515f37e843f4f3', '灰.', 'nohead.png', '', '1439397714', 'graypoint@163.com', '1', null, '1', '183.21.22.24', '0', '0', '1439397806', '183.21.22.24', '1');
INSERT INTO `user_mad` VALUES ('10778', 'NekoYuuka', '2664b614e1a11aa5bbecbe559d4331e9', '猫耳幽香', 'hed_10778.jpg', '', '1439489647', 'nekoyuuka@qq.com', '1', null, '1', '180.158.113.35', '0', '0', '1439489709', '180.158.113.35', '1');
INSERT INTO `user_mad` VALUES ('10779', '980640513', 'd6abd2de8d8b02a41fceac4faab97cfd', '初生小麦', 'hed_10779.png', '', '1439492819', '980640513@qq.com', '1', null, '2', '114.243.128.79', '0', '0', '1440487014', '111.194.93.62', '1');
INSERT INTO `user_mad` VALUES ('10780', 'RailGunXios', '7c481369229594eabe504abb6a515a9b', '包邮sama', 'hed_10780.jpg', '', '1439531004', '756645977@qq.com', '1', null, '1', '139.205.71.205', '0', '0', '1440087025', '125.68.20.59', '1');
INSERT INTO `user_mad` VALUES ('10781', '986818924', '4e781b2458c4df4183ee08acb4d2d782', '空白', 'nohead.png', '', '1439536837', '986818924@qq.com', '1', null, '1', '27.42.98.4', '0', '0', '1439537184', '27.42.98.4', '1');
INSERT INTO `user_mad` VALUES ('10782', '957851968', '36ae00c2c9afff878c52c6391429b1a4', '伊藤浾', 'nohead.png', '', '1439543097', '957851968@qq.com', '1', null, '1', '139.205.35.99', '0', '0', '1439543190', '139.205.35.99', '1');
INSERT INTO `user_mad` VALUES ('10783', '925531934', '70c294c9006f78f10357e932e43d9c00', '蓝羽天梦', 'hed_10783.png', '', '1439561563', '925531934@qq.com', '1', null, '1', '113.89.106.52', '0', '0', '1439561749', '113.89.106.52', '1');
INSERT INTO `user_mad` VALUES ('10784', '', '', '', 'nohead.png', '', '1439569848', '1440496868@qq.com', '0', null, '1', '61.149.99.242', '0', '0', '1439569848', '61.149.99.242', '1');
INSERT INTO `user_mad` VALUES ('10785', '', '', '', 'nohead.png', '', '1439569888', '1463882848@qq.com', '0', null, '1', '223.73.245.168', '0', '0', '1439569888', '223.73.245.168', '1');
INSERT INTO `user_mad` VALUES ('10786', '747491614', 'e55e83822d5171b510d3cc20ce98ab7c', '卖萌的板鞋', 'hed_10786.jpg', '', '1439570159', '747491614@qq.com', '1', null, '1', '180.212.200.191', '0', '0', '1439828332', '42.122.195.25', '1');
INSERT INTO `user_mad` VALUES ('10787', '2940995570@qq.com', '7457ba1e975fa8d9a9fb0c75acb8c3e4', 'My Dearest', 'hed_10787.jpg', '', '1439570294', '2940995570@qq.com', '1', null, '1', '182.139.161.106', '0', '0', '1440088922', '171.221.70.157', '1');
INSERT INTO `user_mad` VALUES ('10788', '枫叶大大大大', 'b730243955dc1bd7352eecbed59b7b46', '枫叶大大', 'hed_10788.png', '', '1439570320', 'soulofchao@yahoo.com', '1', null, '2', '60.49.120.157', '0', '0', '1440010037', '175.144.28.209', '1');
INSERT INTO `user_mad` VALUES ('10789', 'simen1123', 'bfbe04c28f819d2fa626d886a2bb1597', '虫丰丰丰', 'nohead.png', '', '1439570697', '1476293392@qq.com', '1', null, '1', '60.25.238.160', '0', '0', '1439570697', '60.25.238.160', '1');
INSERT INTO `user_mad` VALUES ('10790', 'xE21996', '3bac9bfad2d89b8bef12217df39b6aea', 'xE2', 'nohead.png', '', '1439571434', 'xe21996@gmail.com', '1', null, '1', '114.167.242.148', '0', '0', '1440779768', '114.167.242.148', '1');
INSERT INTO `user_mad` VALUES ('10791', '1007869046', 'a1d88e24c6a6c2b49dafdc517c6977af', '无情的飓风', 'nohead.png', '', '1439571494', 'a100786946@qq.com', '1', null, '1', '121.32.149.206', '0', '0', '1439905016', '183.62.3.37', '1');
INSERT INTO `user_mad` VALUES ('10792', '安吉control', '0733392ca8e37a955bbbe16570b3a583', '安吉control', 'hed_10792.jpg', '', '1439571704', '896988545@qq.com', '1', null, '2', '221.5.49.207', '0', '0', '1440223958', '60.223.221.5', '1');
INSERT INTO `user_mad` VALUES ('10793', '576232752', 'd97aff36bd04aa9c2edeac6ca79f2c76', '偏执', 'nohead.png', '', '1439571752', '576232752@qq.com', '1', null, '1', '117.169.6.55', '0', '0', '1440154665', '117.169.6.46', '1');
INSERT INTO `user_mad` VALUES ('10794', '936602751', 'b920f8390d893b4472765b69e58af848', '雅儿贝德', 'nohead.png', '', '1439572941', '936602751@qq.com', '1', null, '1', '183.39.247.45', '0', '0', '1439710817', '59.40.157.203', '1');
INSERT INTO `user_mad` VALUES ('10795', '770944398@qq.com', '7090df90c09bb773709c5f13c616bb39', '不会唱歌の胖次', 'hed_10795.jpg', '', '1439577859', '770944398@qq.com', '1', null, '1', '223.73.106.181', '0', '0', '1440593620', '120.84.9.224', '1');
INSERT INTO `user_mad` VALUES ('10796', '476228656', 'd76a8fcb42a4bdaec220becedf42f1c2', '杰浩', 'hed_10796.jpg', '', '1439590971', '476228656@qq.com', '1', null, '1', '116.235.39.167', '0', '0', '1440203358', '116.234.103.103', '1');
INSERT INTO `user_mad` VALUES ('10797', '1005828716', '0c00dd2ba412794c1f340a1124ccac96', 'XredfireAMV', 'hed_10797.JPG', '', '1439591526', '1005828716@qq.com', '1', null, '1', '183.213.56.148', '0', '0', '1440211467', '183.213.56.124', '1');
INSERT INTO `user_mad` VALUES ('10798', '', 'e10adc3949ba59abbe56e057f20f883e', '', 'hed_10798.jpg', '', '1439601093', '2574151347@qq.com', '0', null, '1', '218.81.9.136', '0', '0', '1439601263', '218.81.9.136', '1');
INSERT INTO `user_mad` VALUES ('10799', '1552462577', '334276a414dcdd77850fbcc58b87c6b9', '散人方', 'nohead.png', '', '1439601221', '1552462577@qq.com', '1', null, '1', '120.210.174.73', '0', '0', '1439601221', '120.210.174.73', '1');
INSERT INTO `user_mad` VALUES ('10800', 'AkiKevin', '5b22cb6d8aac39a88f6f3d78734e146e', 'AkiKevin', 'hed_10800.png', '', '1439602295', 'kevinchan00@126.com', '1', null, '1', '222.20.53.200', '0', '0', '1440637882', '113.246.211.186', '1');
INSERT INTO `user_mad` VALUES ('10801', '916125704', '8f4a79e13573f04766bceb653b31a43a', 'Desert', 'hed_10801.png', '', '1439604716', '916125704@qq.com', '1', null, '1', '113.66.190.50', '0', '0', '1440644963', '113.66.189.150', '1');
INSERT INTO `user_mad` VALUES ('10802', 'yuexiaqiqi', '378c0ff6833277c7baca394769a110d0', '月下柒柒', 'hed_10802.jpg', '', '1439610269', '318894998@qq.com', '1', null, '1', '121.35.43.136', '0', '0', '1439610269', '121.35.43.136', '1');
INSERT INTO `user_mad` VALUES ('10803', '', '', '', 'nohead.png', '', '1439614020', 'lurenkt@gmail.com', '0', null, '1', '153.212.208.132', '0', '0', '1439614020', '153.212.208.132', '1');
INSERT INTO `user_mad` VALUES ('10804', 'kartwangtong', 'efd224e4ef04ceb44e4d8a457c876ced', '路人KT', 'hed_10804.jpg', '', '1439614115', 'lurenkt@foxmail.com', '1', null, '2', '153.212.208.132', '0', '0', '1439677120', '153.212.208.132', '1');
INSERT INTO `user_mad` VALUES ('10805', 'qww1635', '2acaec62f995f7d361b8b414638c97f3', '小shin', 'nohead.png', '', '1439617334', '16241@163.com', '1', null, '1', '42.81.46.37', '0', '0', '1439617394', '42.81.46.37', '1');
INSERT INTO `user_mad` VALUES ('10806', 'radmac', '83626cf8f763554a8eae7bcb4e120506', 'radmac', 'nohead.png', '', '1439618143', '358157826@qq.com', '1', null, '1', '115.44.176.146', '0', '0', '1439618231', '115.44.176.146', '1');
INSERT INTO `user_mad` VALUES ('10807', '', '', '', 'nohead.png', '', '1439625644', '574877815@qq.com', '0', null, '1', '220.169.255.36', '0', '0', '1439625644', '220.169.255.36', '1');
INSERT INTO `user_mad` VALUES ('10808', '178463732', 'c5ba65ec51db1e8e9fd1f41012b4c056', '晓雯SunshiNe', 'nohead.png', '(๑•ั็ω•็ั๑)', '1439634408', '178463732@qq.com', '1', null, '1', '119.130.186.38', '0', '0', '1439634408', '119.130.186.38', '1');
INSERT INTO `user_mad` VALUES ('10809', '377846772', '01806c061e1642f712d1a3dc8a784b0e', '守岸人--Woke', 'nohead.png', '', '1439638921', '377846772@qq.com', '1', null, '1', '125.126.199.163', '0', '0', '1439638921', '125.126.199.163', '1');
INSERT INTO `user_mad` VALUES ('10810', 'Hondy_Futayo', '042406b005c8fff90ab37cd39fccefb9', '二代二代', 'nohead.png', '', '1439639618', '466439940@QQ.com', '1', null, '1', '219.132.30.136', '0', '0', '1439639618', '219.132.30.136', '1');
INSERT INTO `user_mad` VALUES ('10811', '384003684@qq.com', '9391b74eff863de72ece6078015b8e33', '酱香排骨', 'nohead.png', '', '1439639637', '384003684@qq.com', '1', null, '1', '171.111.43.234', '0', '0', '1439639698', '171.111.43.234', '1');
INSERT INTO `user_mad` VALUES ('10812', 'plm9516931', '063555311b2ac7f54769362d56ff9798', '此方', 'hed_10812.jpg', '', '1439641571', '1206845581@qq.com', '1', null, '1', '175.4.103.227', '0', '0', '1439968323', '113.245.118.208', '1');
INSERT INTO `user_mad` VALUES ('10813', '', '5640fbdab97369736017ab98c7065457', '', 'hed_10813.jpg', '红绫', '1439653221', 'empzyliming@163.com', '0', null, '1', '58.61.210.134', '0', '0', '1440135227', '219.137.89.35', '1');
INSERT INTO `user_mad` VALUES ('10814', 'Nemo202-13', '2d79492ef5edfe7dddfcf477593b519a', 'Nemo202-13', 'hed_10814.jpg', '', '1439656087', '38534622@qq.com', '1', null, '1', '27.227.181.91', '0', '0', '1439921793', '27.227.160.236', '1');
INSERT INTO `user_mad` VALUES ('10815', 'TLSTHO', 'fa46fad3f6c92bc9e63d6a1804834ddc', '天蓝色童话', 'hed_10815.jpeg', '', '1439656245', '969951058@qq.com', '1', null, '1', '222.161.249.56', '0', '0', '1439693877', '222.161.205.28', '1');
INSERT INTO `user_mad` VALUES ('10816', 'namazu', 'bd24cea2840b24c8043886167414c01e', 'namazu', 'nohead.png', '', '1439657606', 'namazu@ariari.biz', '1', null, '1', '114.185.221.207', '0', '0', '1439741068', '114.185.221.207', '1');
INSERT INTO `user_mad` VALUES ('10817', '', '', '', 'nohead.png', '', '1439657627', 'maamu.nico25@gmail.com', '0', null, '1', '120.51.101.71', '0', '0', '1439657627', '120.51.101.71', '1');
INSERT INTO `user_mad` VALUES ('10818', '', '', '', 'nohead.png', '', '1439657772', 'masahiromirai@gmail.com', '0', null, '1', '114.185.221.207', '0', '0', '1439657772', '114.185.221.207', '1');
INSERT INTO `user_mad` VALUES ('10819', 'niwatori9', '45a452f10062b380b0cd87f726a0173c', 'nwia9', 'hed_10819.jpg', '', '1439664888', 'jukkjukk@gmail.com', '1', null, '1', '60.41.39.224', '0', '0', '1440854051', '58.93.53.236', '1');
INSERT INTO `user_mad` VALUES ('10820', 'tetoteto', '7ef74fc4079fb731aca03cba725885ac', 'tomato', 'nohead.png', '', '1439669319', 'madsyokuninda@yahoo.co.jp', '1', null, '1', '101.1.162.53', '0', '0', '1440674008', '101.1.162.53', '1');
INSERT INTO `user_mad` VALUES ('10821', '', '', '', 'nohead.png', '', '1439669498', 'madsyokuninda9@yahoo.co.jp', '0', null, '1', '101.1.162.53', '0', '0', '1439669498', '101.1.162.53', '1');
INSERT INTO `user_mad` VALUES ('10822', '', '', '', 'nohead.png', '', '1439669759', 'madsyokuninda6@yahoo.co.jp', '0', null, '1', '101.1.162.53', '0', '0', '1439669759', '101.1.162.53', '1');
INSERT INTO `user_mad` VALUES ('10823', '1607586198', '5b6c4ee5b7e9e023890a63a5f703f5cb', '绮丽的月光', 'hed_10823.jpg', '', '1439679241', '1607586198@qq.com', '1', null, '1', '121.207.196.226', '0', '0', '1439703932', '121.207.196.226', '1');
INSERT INTO `user_mad` VALUES ('10824', 'thomas16200', 'f49c001027edc1e93c8622fc7c07bf31', 'cnocoiate_', 'hed_10824.jpg', '总有刁民想害朕', '1439687190', 'thomas16200@163.com', '1', null, '2', '67.186.6.119', '0', '0', '1440735234', '216.4.56.139', '1');
INSERT INTO `user_mad` VALUES ('10825', '你看见我的id了', 'b10964e26329bbd16c5909cb5bb7283d', '你看见我的id了', 'hed_10825.png', '', '1439690138', 'lzmx@foxmail.com', '1', null, '1', '125.46.83.34', '0', '0', '1439808743', '111.20.20.75', '1');
INSERT INTO `user_mad` VALUES ('10826', '444124362', 'f1de40c46e103523934b580d2a4d26d6', 'Nero~Da☆ze！', 'nohead.png', '', '1439690611', '444124362@qq.com', '1', null, '1', '61.184.85.8', '0', '0', '1439690808', '61.184.85.8', '1');
INSERT INTO `user_mad` VALUES ('10827', '122102500', '9da52d20500003996baab0909b4d12b5', '雨華', 'hed_10827.jpg', '', '1439714262', '122102500@qq.com', '1', null, '1', '183.151.227.244', '0', '0', '1439714332', '183.151.227.244', '1');
INSERT INTO `user_mad` VALUES ('10828', 'wangzx0511', '08fddf5d14e7875f64ec492844c3c481', '彩菌', 'hed_10828.JPG', '', '1439719657', '739938619@qq.com', '1', null, '1', '117.45.233.186', '0', '0', '1439719711', '117.45.233.186', '1');
INSERT INTO `user_mad` VALUES ('10829', 'bmlook15@yahoo.co.jp', 'b6490f4a39f576843bbf40278d3099b2', 'BM', 'hed_10829.png', '', '1439721868', 'bmlook15@yahoo.co.jp', '1', null, '1', '219.16.142.131', '0', '0', '1440761037', '219.16.142.131', '1');
INSERT INTO `user_mad` VALUES ('10830', 'mizuiroake', '0eceeb45861f9585dd7a97a3e36f85c6', '浅蓝昕', 'hed_10830.jpg', '不类多面手', '1439727654', '786868488@qq.com', '1', null, '2', '113.83.198.162', '0', '0', '1439727884', '113.83.198.162', '1');
INSERT INTO `user_mad` VALUES ('10831', 'wujunchen01', '11981051d75dbfc31b040752bc210982', '暧昧无力', 'hed_10831.jpg', '', '1439732795', '348680570@qq.com', '1', null, '1', '118.251.94.112', '0', '0', '1439773318', '118.251.94.112', '1');
INSERT INTO `user_mad` VALUES ('10832', 'chounin', 'da40d73f1647ed41397a32293a9bbdf1', 'chounin', 'hed_10832.jpg', '', '1439734413', 'queenwaltz@hotmail.com', '1', null, '1', '202.105.90.93', '0', '0', '1439734539', '202.105.90.93', '1');
INSERT INTO `user_mad` VALUES ('10833', '501358303@qq.com', 'aef4a40e4ad04ab6a7bf87531ee72140', 'Ajay殿下', 'hed_10833.jpg', '', '1439740620', '501358303@qq.com', '1', null, '1', '125.86.74.206', '0', '0', '1439740674', '125.86.74.206', '1');
INSERT INTO `user_mad` VALUES ('10834', '', '', '', 'nohead.png', '', '1439770617', 'steyrstyle@gmail.com', '0', null, '1', '119.90.208.14', '0', '0', '1439770617', '119.90.208.14', '1');
INSERT INTO `user_mad` VALUES ('10835', '', '', '', 'nohead.png', '', '1439774326', 'ruimin.chen@hotmail.com', '0', null, '1', '117.21.165.64', '0', '0', '1439774326', '117.21.165.64', '1');
INSERT INTO `user_mad` VALUES ('10836', '690968921', 'd9b4ead7267403716a6236d07daf6081', '方丈大法好', 'nohead.png', '', '1439775040', '690968921@qq.com', '1', null, '1', '183.131.22.63', '0', '0', '1439806751', '117.21.165.64', '1');
INSERT INTO `user_mad` VALUES ('10837', 'lukun700', 'd1d8a34c672163e1bb22a898a561edd7', '小夜追枫', 'nohead.png', '', '1439778723', '258797920@qq.com', '1', null, '1', '106.2.165.182', '0', '0', '1439778808', '106.2.165.182', '1');
INSERT INTO `user_mad` VALUES ('10838', 'rj258789123', '8bb9d58e134280d0895dfc6836ad6a22', '浆糊丶', 'nohead.png', '', '1439791197', '1006912116@qq.com', '1', null, '1', '222.186.194.101', '0', '0', '1439791290', '222.186.194.101', '1');
INSERT INTO `user_mad` VALUES ('10839', '', '', '', 'nohead.png', '', '1439800430', 'ddssaa8688@163.com', '0', null, '1', '111.193.212.52', '0', '0', '1439800430', '111.193.212.52', '1');
INSERT INTO `user_mad` VALUES ('10840', '', '9d649305e4b602c8e9f7f2d245b7190d', '', 'hed_10840.jpg', '黯淡神殇', '1439810791', 'saberycr@foxmail.com', '0', null, '2', '183.95.135.186', '0', '0', '1440669136', '183.95.135.186', '1');
INSERT INTO `user_mad` VALUES ('10841', '1039564636', '2ffa5e8ad2dcbfa2441fe67717690906', 'SDsWORLD', 'nohead.png', '', '1439813434', '1039564636@qq.com', '1', null, '1', '119.129.245.106', '0', '0', '1440131580', '14.147.119.45', '1');
INSERT INTO `user_mad` VALUES ('10842', 'z961564618', '52e7b7d002dd6b8e17a453e256c7d7cd', '黑洞里的光', 'nohead.png', '', '1439813613', '961564618@qq.com', '1', null, '1', '124.225.185.64', '0', '0', '1439813613', '124.225.185.64', '1');
INSERT INTO `user_mad` VALUES ('10843', '1234567', 'd4f549d9c4f8209f753f8276d18ec6da', '喵斯碳', 'hed_10843.jpg', '', '1439822731', '1668505685@qq.com', '1', null, '1', '117.83.158.14', '0', '0', '1440515724', '49.84.189.167', '1');
INSERT INTO `user_mad` VALUES ('10844', '111111', 'd4f549d9c4f8209f753f8276d18ec6da', '喵仔', 'hed_10844.jpg', '', '1439822847', 'K11235468@163.com', '1', null, '1', '49.84.189.167', '0', '0', '1439823201', '49.84.189.167', '1');
INSERT INTO `user_mad` VALUES ('10845', 'Azima丶', '873169ab210279072350043455f2f8c0', '独鱼', 'nohead.png', '', '1439826217', '1776775763@qq.com', '1', null, '1', '223.73.121.12', '0', '0', '1439826569', '223.73.121.12', '1');
INSERT INTO `user_mad` VALUES ('10846', 'AngelDeath', '7ab6684faaf74beeccb73263c7030935', '幻想礼赞', 'nohead.png', '', '1439828738', '741011281@qq.com', '1', null, '1', '222.71.48.241', '0', '0', '1439829009', '222.71.48.241', '1');
INSERT INTO `user_mad` VALUES ('10847', 'hc1003829204', 'd16eacf0e12c94cbfd62bf2704224a3f', '赤木茂', 'hed_10847.jpg', '', '1439841073', '1003829204@qq.com', '1', null, '1', '60.170.236.206', '0', '0', '1439871499', '60.170.236.203', '1');
INSERT INTO `user_mad` VALUES ('10848', '627680384', '06d01ed3714f662edf6c39826f8b62ea', 'Tuski', 'nohead.png', '', '1439877212', '627680384@qq.com', '1', null, '1', '59.41.39.138', '0', '0', '1439877442', '59.41.39.138', '1');
INSERT INTO `user_mad` VALUES ('10849', 'sstyan', '8a4db382591384f66cbff0f9bdcefd56', 'SS', 'nohead.png', '', '1439897741', 'shootingstar1996003@yahoo.co.jp', '1', null, '1', '126.88.187.53', '0', '0', '1440806167', '126.88.187.53', '1');
INSERT INTO `user_mad` VALUES ('10850', '', '', '', 'nohead.png', '', '1439898698', 'orettizusi@gmail.com', '0', null, '1', '110.233.124.116', '0', '0', '1439898698', '110.233.124.116', '1');
INSERT INTO `user_mad` VALUES ('10851', 'orettizusi', '1dd1547c85316adf90f08a04aafaa031', 'OSC', 'nohead.png', '', '1439899064', 'orettizusi@yahoo.co.jp', '1', null, '1', '119.242.92.92', '0', '0', '1440778461', '110.233.124.116', '1');
INSERT INTO `user_mad` VALUES ('10852', '', '', '', 'nohead.png', '', '1439900645', 'altera@hotmail.co.jp', '0', null, '1', '118.154.192.207', '0', '0', '1439900645', '118.154.192.207', '1');
INSERT INTO `user_mad` VALUES ('10853', '18295190941', '38e0e5c77e3bc33453a4f9d23af4ab67', '曹八百', 'hed_10853.jpg', '', '1439901864', '18295190941@163.com', '1', null, '1', '113.241.176.44', '0', '0', '1440431572', '58.44.186.249', '1');
INSERT INTO `user_mad` VALUES ('10854', 'mmmmmmmmmm7998', '0869606636b53d61eee4379b33478942', '伊东鹿玖太郎', 'nohead.png', '', '1439903797', '944579609@qq.com', '1', null, '1', '183.228.165.53', '0', '0', '1439903797', '183.228.165.53', '1');
INSERT INTO `user_mad` VALUES ('10855', '', '', '', 'nohead.png', '', '1439912772', '1248915750@qq.com', '0', null, '1', '183.128.32.71', '0', '0', '1439912772', '183.128.32.71', '1');
INSERT INTO `user_mad` VALUES ('10856', 'goldwing', '07c32415a5443d0b2dcf89049bf8029e', 'goldwing', 'nohead.png', '', '1439940409', 'goldwing@hokuyou-auto.com', '1', null, '1', '118.154.192.207', '0', '0', '1440714172', '118.154.192.207', '1');
INSERT INTO `user_mad` VALUES ('10857', '四月五日阳君', 'fafbf909322c0b279614135e30fbd4b6', '四月五日阳君', 'nohead.png', '', '1439950156', '932986998@qq.com', '1', null, '1', '121.30.111.152', '0', '0', '1439950261', '121.30.111.152', '1');
INSERT INTO `user_mad` VALUES ('10858', 'a343279978', '927240613a51ef6ae4617969d17cd3ce', 'Misaki丶', 'nohead.png', '', '1439957139', '343279978@qq.com', '1', null, '1', '60.24.84.83', '0', '0', '1439957245', '60.24.84.83', '1');
INSERT INTO `user_mad` VALUES ('10859', 'ye0616', '9fa08654bd7a5d42bc094a8e5048bd20', '繁华', 'nohead.png', '', '1439959423', '1154322629@qq.com', '1', null, '1', '113.14.152.42', '0', '0', '1439959615', '113.14.152.42', '1');
INSERT INTO `user_mad` VALUES ('10860', '', '', '', 'nohead.png', '', '1439969204', '739244707@qq.com', '0', null, '1', '222.50.73.218', '0', '0', '1439969204', '222.50.73.218', '1');
INSERT INTO `user_mad` VALUES ('10861', 'yaminekonya', 'dcd59ccd643d1cbf40626f74bf9904fd', 'mubineko', 'nohead.png', '', '1439970448', 'nayunayu@15jam.jp', '1', null, '1', '133.137.74.115', '0', '0', '1441075790', '133.236.100.142', '1');
INSERT INTO `user_mad` VALUES ('10862', '532498955', 'b8b39bb86fda7fd811f1daea2b0b98de', '凉宫空宇', 'nohead.png', '', '1439974884', 'ky_532498955@126.com', '1', null, '1', '114.223.204.16', '0', '0', '1439974884', '114.223.204.16', '1');
INSERT INTO `user_mad` VALUES ('10863', 'sakura8683', 'dc752f8882d18754f228204f220aa44e', '绘梨衣赛高', 'nohead.png', '', '1439976491', 'hj2wqr995898683@qq.com', '1', null, '1', '219.141.168.201', '0', '0', '1440039050', '219.141.168.201', '1');
INSERT INTO `user_mad` VALUES ('10864', '', '', '', 'nohead.png', '', '1440005992', 'tiandaogong@126.com', '0', null, '1', '27.151.35.195', '0', '0', '1440005992', '27.151.35.195', '1');
INSERT INTO `user_mad` VALUES ('10865', '', '', '', 'nohead.png', '', '1440006021', 'left4dead9@126.com', '0', null, '1', '27.151.35.195', '0', '0', '1440006021', '27.151.35.195', '1');
INSERT INTO `user_mad` VALUES ('10866', '', '', '', 'nohead.png', '', '1440014189', '804828582@qq.com', '0', null, '1', '222.94.247.253', '0', '0', '1440014189', '222.94.247.253', '1');
INSERT INTO `user_mad` VALUES ('10867', '', '', '', 'nohead.png', '', '1440034264', '90326729@qq.com', '0', null, '1', '39.188.55.63', '0', '0', '1440034264', '39.188.55.63', '1');
INSERT INTO `user_mad` VALUES ('10868', 'cy903269729', '2b36a1b0e96559160c1a00f1dbf41280', '不知云', 'hed_10868.png', '', '1440034365', '1758650490@qq.com', '1', null, '1', '39.188.55.63', '0', '0', '1440035730', '39.188.55.63', '1');
INSERT INTO `user_mad` VALUES ('10869', 'sqimxiaofan', 'd16d114403881f33cd6e32734b09e0b2', 'bring', 'nohead.png', '', '1440037976', 'imxiaofan@vip.qq.com', '1', null, '1', '218.93.253.62', '0', '0', '1440037976', '218.93.253.62', '1');
INSERT INTO `user_mad` VALUES ('10870', '1790962425', 'f09e2a16f97b83d3efe1703bf7ef41c2', '牧濑丶紅莉栖', 'hed_10870.jpg', '', '1440038791', '1790962425@qq.com', '1', null, '1', '111.181.183.26', '0', '0', '1440047191', '111.181.183.26', '1');
INSERT INTO `user_mad` VALUES ('10871', 'qc3398qc', '01f21fb015110e16be9bae8e03007ae7', '为了敌人冲啊', 'nohead.png', '', '1440045369', '874732682@qq.com', '1', null, '1', '115.199.50.141', '0', '0', '1440114642', '115.197.213.145', '1');
INSERT INTO `user_mad` VALUES ('18008', '666666', 'a5a2b8bd489833f75b5aa008795eba39', '小の森', 'slt_666666.jpg', '', '2147483647', 'zsslol@163.com', '0', null, '2', '120.192.179.104', '0', '0', '1435128320', null, '1');
INSERT INTO `user_mad` VALUES ('18009', '', '', '', 'nohead.png', '', '1440063606', '842724975@qq.com', '0', null, '1', '111.224.31.30', '0', '0', '1440063606', '111.224.31.30', '1');
INSERT INTO `user_mad` VALUES ('18010', '215772754@qq.com', '6624a4bbb417b6387a938c4b03a9a73a', 'Servant', 'hed_18010.jpg', '', '1440066075', '215772754@qq.com', '1', null, '1', '124.152.183.183', '0', '0', '1440069141', '124.152.183.183', '1');
INSERT INTO `user_mad` VALUES ('18011', '785148237', '765da77bf85d6b774cb9e54cd49d2155', 'meizi加微信', 'nohead.png', '', '1440088591', '785148237@qq.com', '1', null, '1', '175.42.226.170', '0', '0', '1440088674', '175.42.226.170', '1');
INSERT INTO `user_mad` VALUES ('18012', '', '', '', 'nohead.png', '', '1440088600', '421209336@qq.com', '0', null, '1', '119.233.138.112', '0', '0', '1440088600', '119.233.138.112', '1');
INSERT INTO `user_mad` VALUES ('18013', '937591402', 'fe19cb4db7e6e12bdc067bc49bd5eedf', '祈妹子一生推', 'hed_18013.jpg', '', '1440094993', '937591402@qq.com', '1', null, '1', '113.84.29.76', '0', '0', '1440526103', '113.84.31.22', '1');
INSERT INTO `user_mad` VALUES ('18014', '634912039@qq.com', '824b63f4312e21685b2196ae67f0d27c', 'EienEul', 'nohead.png', '', '1440120228', '634912039@qq.com', '1', null, '1', '114.254.102.114', '0', '0', '1440774599', '114.254.100.110', '1');
INSERT INTO `user_mad` VALUES ('18015', '626136347', '9d8ee7e0b538b299ddc1edc880a2ed29', '火柴人01', 'nohead.png', '', '1440122693', '626136347@qq.com', '1', null, '1', '222.171.7.77', '0', '0', '1440809641', '221.212.116.30', '1');
INSERT INTO `user_mad` VALUES ('18016', 's517900952', '8acd1c968377b39c8a9707c55c607afe', '小鱼鱼', 'nohead.png', '', '1440124360', 's517900952@qq.com', '1', null, '1', '36.33.27.201', '0', '0', '1440124406', '36.33.27.201', '1');
INSERT INTO `user_mad` VALUES ('18017', 'etfan_s', 'a5a8406954e3a560bf6c38c690fad5ed', '萧季', 'hed_18017.jpg', '', '1440127727', 'yaliyapresident@gmail.com', '1', null, '1', '42.236.128.5', '0', '0', '1441103341', '42.236.132.147', '1');
INSERT INTO `user_mad` VALUES ('18018', 'shuuwau', '23c3dc54830b1ac3fdcec040e7523654', 'shuuwau', 'hed_18018.jpg', '', '1440128788', '510367891@qq.com', '1', null, '1', '110.6.68.15', '0', '0', '1440645734', '110.6.68.223', '1');
INSERT INTO `user_mad` VALUES ('18019', '18250055259', 'd1df9eea239f1e92a346a29d04460684', '进击的墨墨', 'hed_18019.JPG', '', '1440149867', '854974221@qq.com', '1', null, '1', '222.47.208.18', '0', '0', '1440149971', '222.47.208.18', '1');
INSERT INTO `user_mad` VALUES ('18020', '417253641', '04399227891cb4d1d561b31f2f3499ed', 'Maple丶Overture', 'nohead.png', '', '1440170590', '417253641@qq.com', '1', null, '1', '59.62.26.245', '0', '0', '1440170657', '59.62.26.245', '1');
INSERT INTO `user_mad` VALUES ('18021', '13699974776', '740848852b0e24c655924d83811d52f2', 'Iori', 'nohead.png', '', '1440176435', 'cutex_cn@sina.com', '1', null, '1', '49.113.134.233', '0', '0', '1440176683', '49.113.134.233', '1');
INSERT INTO `user_mad` VALUES ('18022', '', '', '', 'nohead.png', '', '1440179674', 'xulei321@live.cn', '0', null, '1', '211.100.31.148', '0', '0', '1440179674', '211.100.31.148', '1');
INSERT INTO `user_mad` VALUES ('18023', '1340090156@qq.com', '3bb7a72f44599b0ae50efca7cb31249c', 'live321', 'hed_18023.jpg', '', '1440209670', '1340090156@qq.com', '1', null, '1', '211.100.31.148', '0', '0', '1440226572', '211.100.31.148', '1');
INSERT INTO `user_mad` VALUES ('18024', '944026506@qq.com', '5f9744292b263dfa2f28adb176edbc45', '魔法の字典君', 'hed_18024.jpg', '', '1440211995', '944026506@qq.com', '1', null, '1', '119.97.196.55', '0', '0', '1440762337', '119.97.196.162', '1');
INSERT INTO `user_mad` VALUES ('18025', 'hjw2959@163.com', 'e1b90c0596a103fee5e37497adf83a3b', '某 君', 'nohead.png', '', '1440229638', 'hjw2959@163.com', '1', null, '1', '59.40.13.55', '0', '0', '1440229895', '59.40.13.55', '1');
INSERT INTO `user_mad` VALUES ('18026', '', '9bb61372cd5ea11136b4ee444eb59382', '', 'hed_18026.jpg', 'Pluvia', '1440230080', '2560243041@qq.com', '0', null, '2', '120.84.131.248', '0', '0', '1440230317', '120.84.131.248', '1');
INSERT INTO `user_mad` VALUES ('18027', '85378339', '7f4783342ac9123a4b4f7f4d9d27b11d', '冶炼之声', 'nohead.png', '', '1440236627', '970635287@qq.com', '1', null, '1', '117.69.174.250', '0', '0', '1440236627', '117.69.174.250', '1');
INSERT INTO `user_mad` VALUES ('18028', '', '', '', 'nohead.png', '', '1440245144', '7545457@qq.cm', '0', null, '1', '219.82.76.147', '0', '0', '1440245144', '219.82.76.147', '1');
INSERT INTO `user_mad` VALUES ('18029', 'xjzxhuyan', 'db1a6648b72d0ecdb54a6973a10b6fd1', '水水', 'nohead.png', '', '1440245148', '7545457@qq.com', '1', null, '1', '219.82.76.147', '0', '0', '1440305585', '219.82.76.147', '1');
INSERT INTO `user_mad` VALUES ('18030', 'mankeyang', 'a51b994881ab080e7f19a80f63fdd4f5', 'Grace', 'hed_18030.jpg', '', '1440258529', '1455265433@qq.com', '1', null, '2', '61.185.127.239', '0', '0', '1440947354', '219.144.34.120', '1');
INSERT INTO `user_mad` VALUES ('18031', '', '', '', 'nohead.png', '', '1440262496', '457892379@qq.com', '0', null, '1', '182.150.150.176', '0', '0', '1440262496', '182.150.150.176', '1');
INSERT INTO `user_mad` VALUES ('18032', 'bobekun', 'dca593072cc48ab48c53950d894a5b42', 'bobe', 'hed_18032.jpg', '', '1440265489', 'bobeking@qq.com', '1', null, '1', '120.84.10.193', '0', '0', '1441015630', '120.84.10.193', '1');
INSERT INTO `user_mad` VALUES ('18033', 'tgbhy7', 'ba35306d851d4a13a5338336e3cbee20', 'AnnoSatori', 'hed_18033.png', '', '1440296601', 'annosatori@gmail.com', '1', null, '1', '130.245.194.62', '0', '0', '1440566447', '130.245.206.157', '1');
INSERT INTO `user_mad` VALUES ('18034', '', '', '', 'nohead.png', '', '1440300849', 'wenrenshangqinglou@qq.com', '0', null, '1', '223.151.13.235', '0', '0', '1440300849', '223.151.13.235', '1');
INSERT INTO `user_mad` VALUES ('18035', 'TheLiteratiOnBrothel', '83db53abb3c4b2eafb9aa439b9e981a5', 'TheLiteratiOnBrothel', 'hed_18035.jpg', '', '1440301294', 'wenrenshangqinglou@outlook.com', '1', null, '1', '223.151.13.235', '0', '0', '1440432427', '223.151.13.235', '1');
INSERT INTO `user_mad` VALUES ('18036', '', '', '', 'nohead.png', '', '1440347978', 'kagami233@live.cn', '0', null, '1', '219.137.198.113', '0', '0', '1440347978', '219.137.198.113', '1');
INSERT INTO `user_mad` VALUES ('18037', 'nanodesu', 'eb111ea03087df5301ec21e06a17b219', 'ling_', 'nohead.png', '', '1440349757', '1139915380@qq.com', '1', null, '1', '74.72.0.104', '0', '0', '1440350042', '74.72.0.104', '1');
INSERT INTO `user_mad` VALUES ('18038', 'waterwalker', 'e22b37e6e48e72141f1df1671f6f00bf', '漂来漂去', 'nohead.png', '', '1440410085', '380909814@qq.com', '1', null, '1', '222.134.187.17', '0', '0', '1440410176', '222.134.187.17', '1');
INSERT INTO `user_mad` VALUES ('18039', '', '', '', 'nohead.png', '', '1440437413', '2564640162@qq.com', '0', null, '1', '171.12.17.105', '0', '0', '1440437413', '171.12.17.105', '1');
INSERT INTO `user_mad` VALUES ('18040', '15670631420', '396173967ef22e88ed1f89e3a830e7c5', 'Curtainの落幕', 'hed_18040.png', '', '1440437480', '543723342@qq.com', '1', null, '2', '171.12.17.105', '0', '0', '1440584014', '171.12.17.105', '1');
INSERT INTO `user_mad` VALUES ('18041', 'misaka', '43d7f69e2ec2a3f8c60b3eca8a6f5cea', 'misaka', 'nohead.png', '', '1440482934', 'wukai234@126.com', '1', null, '1', '118.186.147.21', '0', '0', '1440483035', '118.186.147.21', '1');
INSERT INTO `user_mad` VALUES ('18042', 'qingbing', 'eeed8ea6031f40f3a50e760bc57e8130', '倾冰', 'hed_18042.jpg', '', '1440515347', '994837998@qq.com', '1', null, '1', '58.255.230.147', '0', '0', '1440515474', '58.255.230.147', '1');
INSERT INTO `user_mad` VALUES ('18043', 'sundion', '412ffb58d45eb58157cb7a41f70511bd', 'sms43', 'hed_18043.jpeg', '', '1440520970', '214816257@qq.com', '1', null, '1', '106.117.233.235', '0', '0', '1440521076', '106.117.233.235', '1');
INSERT INTO `user_mad` VALUES ('18044', 'malthus@126.com', 'fb06720f020127f7c94625d02076a46f', '朝奈', 'nohead.png', '', '1440552984', 'malthus@126.com', '1', null, '2', '112.65.46.134', '0', '0', '1440776961', '61.164.211.213', '1');
INSERT INTO `user_mad` VALUES ('18045', 'HHikari', '83eda8e8271ca69701db307cd5a0da87', 'HHikari', 'nohead.png', '', '1440555454', '313222875@qq.com', '1', null, '1', '180.173.171.192', '0', '0', '1440555454', '180.173.171.192', '1');
INSERT INTO `user_mad` VALUES ('18046', '', '', '', 'nohead.png', '', '1440556361', 'aeiou10000@outlook.com', '0', null, '1', '116.26.118.192', '0', '0', '1440556361', '116.26.118.192', '1');
INSERT INTO `user_mad` VALUES ('18047', '963729237', '27286da220a234a980f0b253429387a4', '雪安好', 'nohead.png', '', '1440557945', '963729237@qq.com', '1', null, '1', '171.37.37.40', '0', '0', '1440558125', '171.37.37.40', '1');
INSERT INTO `user_mad` VALUES ('18048', '1051172868', '974204a3e17b38056079f681ddb34bbc', '芥川美羽', 'nohead.png', '', '1440568767', '1051172868@qq.com', '1', null, '1', '116.21.194.48', '0', '0', '1440732519', '116.21.192.43', '1');
INSERT INTO `user_mad` VALUES ('18049', 'fax419', 'a6c674204c36eef8643c642e08de8635', 'echove', 'hed_18049.jpg', '', '1440641965', 'fly419@126.com', '1', null, '1', '128.211.254.54', '0', '0', '1440898247', '128.211.254.54', '1');
INSERT INTO `user_mad` VALUES ('18050', 'TLDream', '7a965ef0cbb89bfde51e9e0a233ca412', '白夜梦', 'nohead.png', '', '1440642266', 'zhoudongyu0225@sina.com', '1', null, '1', '106.39.135.81', '0', '0', '1440642585', '106.39.135.81', '1');
INSERT INTO `user_mad` VALUES ('18051', '', '', '', 'nohead.png', '', '1440652346', 'seven.feifei@163.com', '0', null, '1', '221.13.140.222', '0', '0', '1440652346', '221.13.140.222', '1');
INSERT INTO `user_mad` VALUES ('18052', 'czq39czq', 'bf69745321a210b157e729c2d5bab6fc', 'Nid霍格', 'nohead.png', '', '1440664902', '429232082@qq.com', '1', null, '1', '220.189.119.144', '0', '0', '1440665664', '220.189.119.144', '1');
INSERT INTO `user_mad` VALUES ('18053', 'mihashi', '2a77c78fb39cf5a8e5906c482f313d0b', 'mihashi', 'nohead.png', '', '1440667361', 'mihashi@126.com', '1', null, '1', '219.136.146.191', '0', '0', '1440667689', '219.136.146.191', '1');
INSERT INTO `user_mad` VALUES ('18054', '1282606104', '1211e59e5e514882a6d44e684117b4c8', '漆黑的小丧', 'nohead.png', '', '1440674114', '1282606104@qq.com', '1', null, '1', '14.214.171.81', '0', '0', '1441169711', '14.214.175.130', '1');
INSERT INTO `user_mad` VALUES ('18055', 'irisjxy', '8d160339bdb0b1a2ccb15436e562d4c9', '辛子', 'nohead.png', '', '1440680391', 'irisjxy@163.com', '1', null, '1', '180.159.205.23', '0', '0', '1440680893', '180.159.205.23', '1');
INSERT INTO `user_mad` VALUES ('18056', '2551859272', '6e971602ff625512134adcbeb80c0b1e', '十动然拒', 'nohead.png', '', '1440681435', '2551859272@qq.com', '1', null, '1', '223.73.42.118', '0', '0', '1440681647', '223.73.42.118', '1');
INSERT INTO `user_mad` VALUES ('18057', '', '', '', 'nohead.png', '', '1440692610', 'malthus188@126.com', '0', null, '1', '36.16.66.28', '0', '0', '1440692610', '36.16.66.28', '1');
INSERT INTO `user_mad` VALUES ('18058', 'sahsx_sora', 'b785c1ff12e01a330d91ee40dbdd3b32', 'sora', 'nohead.png', '', '1440747602', '605260097@qq.com', '1', null, '1', '222.140.145.10', '0', '0', '1440747711', '222.140.145.10', '1');
INSERT INTO `user_mad` VALUES ('18059', '2846501928', 'ca9f32b6f77785fff81ebed70930bb23', 'ShiiNa君', 'hed_18059.jpg', '', '1440749483', '2846501928@qq.com', '1', null, '1', '61.186.164.46', '0', '0', '1440751450', '61.186.164.46', '1');
INSERT INTO `user_mad` VALUES ('18060', 'hoshinosuna', 'bae6d9cc634a12af9b88a2eb3de10331', '星野砂', 'hed_18060.jpeg', '', '1440821862', 'luciferv5@qq.com', '1', null, '1', '110.204.27.106', '0', '0', '1440822085', '110.204.27.106', '1');
INSERT INTO `user_mad` VALUES ('18061', '244441', 'e22e8977dfb52cb4ab18f211059e32e1', 'にししししー', 'nohead.png', '', '1440831397', 'happysheep2010@qq.com', '1', null, '1', '119.130.3.60', '0', '0', '1440831784', '119.130.3.60', '1');
INSERT INTO `user_mad` VALUES ('18062', 'shenqidexiangxiang', 'd11fc2ef68e209e1494ea95023549eb7', '香香', 'nohead.png', '', '1440835173', '369991783@qq.com', '1', null, '1', '125.114.146.142', '0', '0', '1440835290', '125.114.146.142', '1');
INSERT INTO `user_mad` VALUES ('18063', '', '', '', 'nohead.png', '', '1440936352', '784425772@qq.com', '0', null, '1', '120.210.164.47', '0', '0', '1440936352', '120.210.164.47', '1');
INSERT INTO `user_mad` VALUES ('18064', 'aifyui', 'eafdc2cac7d437446508798b434fd7b1', 'SpicyRappit', 'nohead.png', '', '1440947926', '442505628@qq.com', '1', null, '1', '139.205.179.118', '0', '0', '1440948025', '139.205.179.118', '1');
INSERT INTO `user_mad` VALUES ('18065', 'sehiroth', '3d45d3861a1ae729cb19aa73d6d5fd35', 'cain', 'hed_18065.jpg', '', '1441113529', 'cs002cs002@163.com', '1', null, '1', '119.182.255.114', '0', '0', '1441113648', '119.182.255.114', '1');
INSERT INTO `user_mad` VALUES ('18066', 'A99999', 'e44f8cf63970db5c2df0a18153bcdf49', 'A9', 'hed_18066.PNG', '', '1441125415', '515734689@qq.com', '1', null, '1', '113.97.187.1', '0', '0', '1441125553', '113.97.187.1', '1');
INSERT INTO `user_mad` VALUES ('18067', 'hanabi', 'd62830a310dc6b5281606dd3a01434c1', '御久', 'hed_18067.jpg', '', '1441182292', 'inutakata@yahoo.co.jp', '1', null, '1', '171.217.177.30', '0', '0', '1441182650', '171.217.177.30', '1');

-- ----------------------------
-- Table structure for user_notice
-- ----------------------------
DROP TABLE IF EXISTS `user_notice`;
CREATE TABLE `user_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `state` int(2) DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `type` int(2) DEFAULT NULL COMMENT '1私信2回复3通知',
  `is_del` int(2) DEFAULT '0' COMMENT '1删除',
  `read_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_notice
-- ----------------------------
INSERT INTO `user_notice` VALUES ('7', '1', '10651', '1', '2015-07-02 18:10:38', '3', '1', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('8', '2', '10651', '1', '2015-07-02 18:10:38', '3', '1', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('9', '5', '10651', '1', '2015-07-02 18:10:38', '3', '1', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('10', '6', '10651', '1', '2015-07-02 18:40:18', '3', '1', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('11', '7', '10651', '1', '2015-07-02 19:11:43', '3', '1', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('16', '8', '10651', '1', '2015-07-05 19:10:58', '4', '1', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('17', '9', '10651', '1', '2015-07-05 20:05:03', '4', '1', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('19', '10', '10651', '1', '2015-07-05 20:10:17', '4', '0', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('20', '11', '10651', '1', '2015-07-05 23:49:36', '4', '0', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('21', '12', '10651', '1', '2015-07-05 23:49:36', '4', '0', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('22', '13', '10651', '1', '2015-07-05 23:49:36', '4', '0', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('23', '14', '10651', '1', '2015-07-05 23:49:36', '4', '0', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('24', '15', '10651', '1', '2015-07-06 11:03:04', '4', '0', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('25', '16', '10651', '1', '2015-07-08 18:59:57', '3', '0', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('26', '16', '10712', '1', '2015-07-08 19:47:53', '3', '0', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('27', '16', '1000', '1', '2015-07-08 19:48:02', '3', '0', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('28', '16', '5000', '1', '2015-07-09 10:02:58', '3', '0', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('29', '17', '5000', '1', '2015-07-27 19:02:49', '3', '0', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('30', '18', '5000', '1', '2015-08-16 12:37:41', '4', '0', '2015-08-25 15:27:48');
INSERT INTO `user_notice` VALUES ('31', '16', '233', '0', '2015-09-06 18:08:35', '3', '0', null);
INSERT INTO `user_notice` VALUES ('32', '17', '233', '0', '2015-09-06 18:08:35', '3', '0', null);
INSERT INTO `user_notice` VALUES ('33', '19', '233', '0', '2015-09-06 18:11:17', '4', '0', null);

-- ----------------------------
-- Table structure for user_role_group
-- ----------------------------
DROP TABLE IF EXISTS `user_role_group`;
CREATE TABLE `user_role_group` (
  `role_group_id` varchar(10) DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `group_id` (`role_group_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role_group
-- ----------------------------
INSERT INTO `user_role_group` VALUES ('1,3', '10014', '3');
INSERT INTO `user_role_group` VALUES ('1', '8008', '4');
INSERT INTO `user_role_group` VALUES ('1,2', '10008', '5');

-- ----------------------------
-- Table structure for user_send_email
-- ----------------------------
DROP TABLE IF EXISTS `user_send_email`;
CREATE TABLE `user_send_email` (
  `user_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `add_time` int(12) DEFAULT NULL,
  `main` varchar(1000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_activate` int(1) NOT NULL DEFAULT '0',
  `type` int(10) NOT NULL DEFAULT '0' COMMENT '0为注册1为修改密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_send_email
-- ----------------------------
INSERT INTO `user_send_email` VALUES ('65', 'da1e092e9c6de407c4ec70457514ef9d', null, null, '1427341080', null, '1', '0', '0');
INSERT INTO `user_send_email` VALUES ('68', 'a15481ea087675be4c31421fe4f59e88', null, null, '1427351561', null, '2', '0', '0');
INSERT INTO `user_send_email` VALUES ('69', '92f1dd442eb5504e2cbac99577aec240', null, null, '1427351639', null, '3', '0', '0');
INSERT INTO `user_send_email` VALUES ('70', '886a6597390112f5326b396892d4c4eb', null, null, '1427351764', null, '4', '0', '0');
INSERT INTO `user_send_email` VALUES ('71', 'f2921dfff33a630e3891d749910a416b', null, null, '1427351850', null, '5', '0', '0');
INSERT INTO `user_send_email` VALUES ('90', 'b6b2a6785b7e3a020049b7733a736be6', null, null, '1427772161', null, '6', '0', '0');
INSERT INTO `user_send_email` VALUES ('91', '1b32ea422ff467dea087afa787528ba0', null, null, '1427772236', null, '7', '0', '0');
INSERT INTO `user_send_email` VALUES ('92', '42999dc56c91c283bdf8d8489616766d', null, null, '1427772330', null, '8', '0', '0');
INSERT INTO `user_send_email` VALUES ('93', '19a59b922376c51876d6c68f256372fe', null, null, '1427789695', null, '9', '0', '0');
INSERT INTO `user_send_email` VALUES ('94', '52d736be79c69167d93dd6b83bbd9ecc', null, null, '1427789818', null, '10', '0', '0');
INSERT INTO `user_send_email` VALUES ('95', '112mad6745a5f125b065ed9f122c32b', null, null, '1427789945', null, '11', '0', '0');
INSERT INTO `user_send_email` VALUES ('96', 'da0a4415f999a7498ece4ab068b05042', null, null, '1427790054', null, '12', '0', '0');
INSERT INTO `user_send_email` VALUES ('0', 'd41d8cd98f00b204e9800998ecf8427e', null, null, '1428280817', null, '13', '0', '0');
INSERT INTO `user_send_email` VALUES ('10597', 'b315ad5cbfe7c1a3653c58fbe3562bfb', null, null, '1428403724', null, '14', '0', '0');
INSERT INTO `user_send_email` VALUES ('10605', 'c6be58e92cdc20923246d48a9b0df1ac', null, null, '1428463864', null, '15', '0', '0');
INSERT INTO `user_send_email` VALUES ('10618', 'd7f062ab51326aff721a6a5fef0c89b9', null, null, '1428595083', null, '16', '0', '0');
INSERT INTO `user_send_email` VALUES ('10619', '6cf75fe4958be91f0da2d7a2bf832380', null, null, '1428645642', null, '17', '0', '0');
INSERT INTO `user_send_email` VALUES ('10622', 'a00eaed88e9fc0e2daecd7297227a7bc', null, null, '1428745521', null, '18', '0', '0');
INSERT INTO `user_send_email` VALUES ('10628', 'e52462d6555910434e1df74c22fd94c3', null, null, '1428933286', null, '19', '0', '0');
INSERT INTO `user_send_email` VALUES ('10640', '1352594fad24da0860d59e238404ecb4', null, null, '1430279701', null, '20', '0', '0');
INSERT INTO `user_send_email` VALUES ('10655', '5c4e2b8b9b078d42bebc8289ab16a74e', '12541096991@qq.com', '14e1b600b1fd579f4743', null, '欢迎成为DrawMAD的一员！请点击下面的链接完成邮箱验证：http://localhost/index.php/regist/activate?code=5c4e2b8b9b078d42bebc8289ab16a74e&10655\r\n			如果验证后仍然不能正常登录，请发邮件至drawmad@163.com说明你的情况（你的账号以及登录时的报错提示）\r\n				这里是为MADer们量身打造的专属平台，虽然我们现在才蹒跚起步，但我们会事事都努力做到最好！\r\n			', '21', '0', '0');
INSERT INTO `user_send_email` VALUES ('10656', '319e926f6e54883238679c39e2404d93', '1254109699@qq.com', '14e1b600b1fd579f4743', null, '欢迎成为DrawMAD的一员！请点击下面的链接完成邮箱验证：http://localhost/index.php/regist/activate?code=319e926f6e54883238679c39e2404d93&10656\r\n			如果验证后仍然不能正常登录，请发邮件至drawmad@163.com说明你的情况（你的账号以及登录时的报错提示）\r\n				这里是为MADer们量身打造的专属平台，虽然我们现在才蹒跚起步，但我们会事事都努力做到最好！\r\n			', '22', '0', '0');
INSERT INTO `user_send_email` VALUES ('10659', '94ab55875793db1776c650c7c5005085', '1254109699@qq.com', '14e1b600b1fd579f4743', '1433213564', '欢迎成为DrawMAD的一员！请点击下面的链接完成邮箱验证：http://localhost/index.php/regist/activate?code=94ab55875793db1776c650c7c5005085&userId=10659\r\n			如果验证后仍然不能正常登录，请发邮件至drawmad@163.com说明你的情况（你的账号以及登录时的报错提示）\r\n				这里是为MADer们量身打造的专属平台，虽然我们现在才蹒跚起步，但我们会事事都努力做到最好！\r\n			', '23', '1', '0');
INSERT INTO `user_send_email` VALUES ('10662', '94ab55875793db1776c650c7c5005085', '1254109699@qq.com', '14e1b600b1fd579f4743', '1433213677', '欢迎成为DrawMAD的一员！请点击下面的链接完成邮箱验证：http://localhost/index.php/regist/activate?code=0b8f3d556460703176ee5da48aa1d893&userId=10662\r\n			如果验证后仍然不能正常登录，请发邮件至drawmad@163.com说明你的情况（你的账号以及登录时的报错提示）\r\n				这里是为MADer们量身打造的专属平台，虽然我们现在才蹒跚起步，但我们会事事都努力做到最好！\r\n			', '24', '1', '0');
INSERT INTO `user_send_email` VALUES ('10651', '5f5d2634147a1153dd4c5d07bb6beaf6', '774220196@qq.com', null, '1434598459', '请点击网址进入修改您的密码http://localhost/index.php/BackPassword/date?yzm=5f5d2634147a1153dd4c5d07bb6beaf6&id=10651', '26', '1', '1');
INSERT INTO `user_send_email` VALUES ('10670', '4bd9415c92824e9f9fdebfe99a5024f3', '1254109699@qq.com', '14e1b600b1fd579f4743', '1435139005', '欢迎成为DrawMAD的一员！请点击下面的链接完成邮箱验证：http://localhost/index.php/Regist/activate?code=4bd9415c92824e9f9fdebfe99a5024f3&userId=10670\r\n			如果验证后仍然不能正常登录，请发邮件至drawmad@163.com说明你的情况（你的账号以及登录时的报错提示）\r\n				这里是为MADer们量身打造的专属平台，虽然我们现在才蹒跚起步，但我们会事事都努力做到最好！\r\n			', '27', '1', '0');
INSERT INTO `user_send_email` VALUES ('10671', '48916991e4d667c39905c2f6d8a99989', '1254109699@qq.com', '14e1b600b1fd579f4743', '1436085952', '欢迎成为DrawMAD的一员！请点击下面的链接完成邮箱验证：http://localhost/index.php/Regist/activate?code=48916991e4d667c39905c2f6d8a99989&userId=10671\r\n			如果验证后仍然不能正常登录，请发邮件至drawmad@163.com说明你的情况（你的账号以及登录时的报错提示）\r\n				这里是为MADer们量身打造的专属平台，虽然我们现在才蹒跚起步，但我们会事事都努力做到最好！\r\n			', '28', '0', '0');
INSERT INTO `user_send_email` VALUES ('10712', 'd836a7f8e6afa9fe33d864a3cfe57a06', '774220196@qq.com', 'd41d8cd98f00b204e980', '1436355538', '欢迎成为DrawMAD的一员！请点击下面的链接完成邮箱验证：http://localhost/index.php/Regist/activate?code=d836a7f8e6afa9fe33d864a3cfe57a06&userId=10712\r\n			如果验证后仍然不能正常登录，请发邮件至drawmad@163.com说明你的情况（你的账号以及登录时的报错提示）\r\n				这里是为MADer们量身打造的专属平台，虽然我们现在才蹒跚起步，但我们会事事都努力做到最好！\r\n			', '29', '1', '0');

-- ----------------------------
-- Table structure for user_state
-- ----------------------------
DROP TABLE IF EXISTS `user_state`;
CREATE TABLE `user_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_state
-- ----------------------------
INSERT INTO `user_state` VALUES ('1', '正常');
INSERT INTO `user_state` VALUES ('2', '封禁');

-- ----------------------------
-- Table structure for user_state_log
-- ----------------------------
DROP TABLE IF EXISTS `user_state_log`;
CREATE TABLE `user_state_log` (
  `id` int(11) NOT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '操作理由',
  `type` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_state_log
-- ----------------------------

-- ----------------------------
-- Table structure for user_type
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_type
-- ----------------------------
INSERT INTO `user_type` VALUES ('1', '见习会员');
INSERT INTO `user_type` VALUES ('2', '正式会员');
INSERT INTO `user_type` VALUES ('3', '认证会员');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zuozhe` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pingfen` int(255) DEFAULT '0' COMMENT '视频的评分',
  `BGM` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `beizhu` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `jieshao` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `biaoqian` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fengmian` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `xiazai` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `xiazaipass` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `state` tinyint(1) DEFAULT '0',
  `video_path` varchar(255) COLLATE utf8_bin DEFAULT '',
  `malv` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `is_original` tinyint(1) DEFAULT '1',
  `wg_time` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `click` int(10) NOT NULL DEFAULT '0' COMMENT '点击',
  `is_del` int(1) NOT NULL DEFAULT '0' COMMENT '0没有删除1删除',
  `down_purview` int(1) NOT NULL DEFAULT '0' COMMENT '0所有人可下载1会员可下载',
  `video_type_ids` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10117 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('10006', '10051', '只属于妖精尾巴的故事', null, '复仇女王', '42', 'unity-shinedown', null, '我是真的想要永远跟你们在一起。可是…如果那样会成为你们的绊脚石的话，让我们变的更坚强。任谁都一样，每个人都有那种力量。坚强地向前走吧！我也会坚强地继续走下去。 只要不忘记这一天，我们就会再见面。保重了！7年后再见，FAIRY TAIL！', '2015-04-05 22:25:51', '2015-04-05 22:25:51', '原创　/　静止系　/　漫画　/　燃系', 'slt_FuryCal_1428243951_675656088.jpg', 'http://pan.baidu.com/s/1eQ3h3hw', '', '算第一个比较完整的作品 希望能做出完整版', '1', 'FuryCal_1428243951_675656088.flv', '0.00', '1', '2000-1-1', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10007', '10010', '东方独孤月', null, 'littledango', '38', 'senya——孤独月', null, 'SKM第七届白色情人基作品', '2015-04-05 22:52:32', '2015-04-05 22:52:32', '原创　/　静止系　/　燃系　/　唯美系', 'slt_littledango_1428245552_264547234.jpg', '', '', '静止画', '1', 'littledango_1428245552_264547234.flv', '0.14', '1', '2000-1-1', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10008', '10259', '大声ダイヤモンド-这份感情必将传达于你', null, 'V.R.', '48', '大声ダイヤモンド(AKB48)', null, 'test', '2015-04-05 23:02:29', '2015-04-05 23:02:29', '原创　/　舞曲　/　情感', 'slt_yxj007_1428246149_17442195.jpg', 'http://pan.baidu.com/s/1i3iiNhr', 'vy5b', 'test', '1', 'yxj007_1428246149_17442195.flv', '0.11', '1', '2000-1-1', '0', '0', '0', '1');
INSERT INTO `video` VALUES ('10009', '10014', '甜蜜的死亡', null, '桥西', '56', 'mine-Aimer ', null, 'GMC第三次合作 顺便测试一下网站', '2015-04-05 23:30:19', '2015-04-05 23:30:19', '原创　/　情感　/　合作', 'slt_yun2he_1428247819_608426462.jpg', '', '', 'girls mad club', '1', 'yun2he_1428247819_608426462.flv', '0.09', '1', '2000-1-1', '0', '0', '0', '1');
INSERT INTO `video` VALUES ('10010', '10154', 'A.I.N.Y  school days', null, '猪宝宝', '30', 'A.I.N.Y-G.E.M', null, '一刀一刀又一刀，插在人渣的肾上。', '2015-04-05 23:32:27', '2015-04-05 23:32:27', '原创　/　动作　/　喜剧　/　浪漫　/　情感', 'slt_zhusama_1428247946_488626610.jpg', '', '', '真是好看。', '1', 'zhusama_1428247946_488626610.flv', '0.13', '1', '2000-1-1', '0', '0', '0', '1');
INSERT INTO `video` VALUES ('10011', '10316', '我的妹妹们不可能那么危险', null, '要命菌', '32', 'Before You Exit - Dangerous ', null, '多多指教。最近不知道为什么很怀念俺妹于是把动画一口气全看了一遍，于是就去做了这个MAD。以后有空还会去做些欧美音乐配动漫的MAD应该。。。。 对了黑猫和香菜都是我的，不要争了。 ', '2015-04-05 23:48:32', '2015-04-05 23:48:32', '原创　/　动画系　/　小说　/　燃系', 'slt_lym1218_1428248912_357639116.png', '', '', '新人纯女作', '2', 'lym1218_1428248912_357639116.flv', '0.06', '1', '2000-1-1', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10012', '10154', 'Glowworm', null, '猪宝宝', '40', '萤火虫之舞', null, '并没有简介。', '2015-04-05 23:52:00', '2015-04-05 23:52:00', '原创　/　静止系　/　唯美系', 'slt_zhusama_1428249120_90930597.jpg', '', '', 'o', '1', 'zhusama_1428249120_90930597.flv', '0.13', '1', '2000-1-1', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10013', '10015', '摆脱一切/SHAKE IT OFF', null, '魅影', '29', 'Shake It Off--Taylor Swift', null, '2015haru兰组作品', '2015-04-05 23:55:49', '2015-04-05 23:55:49', '原创　/　舞曲', 'slt_364486142@qq.com_1428249349_439462054.jpg', 'http://pan.baidu.com/s/1o6vAU06', '', '', '1', '364486142@qq.com_1428249349_439462054.mp4', '0.00', '1', '2000-1-1', '36', '0', '0', '1');
INSERT INTO `video` VALUES ('10014', '10266', '一拳超人!', null, '番外篇', '25', 'ROOKiEZ is PUNK\'D - DROP', null, '第一只漫画系', '2015-04-06 02:11:49', '2015-04-06 02:11:49', '原创　/　静止系　/　漫画　/　燃系', 'slt_brs1515233_1428257509_750536060.png', '', '', '', '1', 'brs1515233_1428257509_750536060.flv', '0.07', '1', '2000-1-1', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10015', '10266', '欢迎来到池袋', null, '番外篇', '35', 'One ok rock - Crazy Botch', null, 'AK2014', '2015-04-06 02:20:27', '2015-04-06 02:20:27', '原创　/　动作', 'slt_brs1515233_1428258026_607841888.png', '', '', '', '1', 'brs1515233_1428258026_607841888.flv', '0.08', '1', '2000-1-1', '0', '0', '0', '1');
INSERT INTO `video` VALUES ('10018', '10385', '7 -seven- 七大罪', null, 'TsukiBito牛牛', '25', 'ROOKiEZ is PUNK\'D - コンプリケイション', null, '第七届白色情人基参战', '2015-04-06 09:00:14', '2015-04-06 09:00:14', '原创　/　动作　/　情感　/　故事', 'slt_649539460_1428282014_518343563.jpg', '', '', '这个人好懒，什么说明都有', '1', '649539460_1428282014_518343563.mp4', '0.00', '1', '2000-1-1', '0', '0', '0', '1');
INSERT INTO `video` VALUES ('10019', '10033', '蝉鸣之刻', null, '歼灭小天使', '30', 'fripside closet love', null, '第7届情人祭day4。恭喜mad网站建立，支持fun帅工作~咪啪~', '2015-04-06 10:07:39', '2015-04-06 10:07:39', '原创　/　静止系　/　GalGame', 'slt_605918279_1428286059_2602533.png', '', '', '', '1', '605918279_1428286059_2602533.flv', '0.12', '1', '2000-1-1', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10022', '10016', 'ParalyZed', null, 'MK菌丶', '24', 'paralyzed-big time rush', null, 'haru 2015 一个人做的mep。。', '2015-04-06 10:57:38', '2015-04-06 10:57:38', '原创　/　合作', 'slt_413310822_1428289058_343498168.JPG', 'http://pan.baidu.com/s/1bntp7pd', '', '', '1', '413310822_1428289058_343498168.mp4', '0.00', '1', '2000-1-1', '0', '0', '0', '1');
INSERT INTO `video` VALUES ('10023', '10399', '夜神月', null, 'zy10112029', '17', 'Skillet - Awake And Alive', null, '死亡笔记', '2015-04-06 11:39:48', '2015-04-06 11:39:48', '原创　/　静止系　/　漫画', 'slt_zy10112029_1428291588_802877964.jpg', 'http://dwz.cn/5U4HY', '', '萌萌的第一作', '1', 'zy10112029_1428291588_802877964.flv', '0.10', '1', '2000-1-1', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10024', '10435', '五彩缤纷的恋爱颜色', null, '琳酱喵', '20', 'Coulorful claris', null, ' hope送喵头作品', '2015-04-06 11:45:05', '2015-04-06 11:45:05', '原创　/　浪漫', 'slt_LMTljm_1428291904_638365387.png', '', '', '一把锁和三把钥匙的故事，恋爱的七彩光芒', '1', 'LMTljm_1428291904_638365387.mp4', '0.00', '1', '2000-1-1', '0', '0', '0', '3');
INSERT INTO `video` VALUES ('10025', '10055', '静止系MAD 心之雨 缘之空', null, 'Sung Hsu', '23', '周杰伦 心雨', null, '头一回使用华语BGM，这回也不想用太多手法特效加上去，只是想用几个简单的画面来搭配这首歌，找回一下画面应有的那种感觉。', '2015-04-06 11:49:09', '2015-04-06 11:49:09', '原创　/　静止系　/　GalGame', 'slt_Sung Hsu_1428292149_82244560.jpg', 'http://pan.baidu.com/s/1sj8ulkh', '没密码', '黄金祭垫底作', '1', 'Sung Hsu_1428292149_82244560.flv', '0.11', '1', '2000-1-1', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10027', '10113', '致比世界更重要的你', null, '金闪闪', '28', 'planetes-egoist', null, 'haru祭作品', '2015-04-06 12:25:48', '2015-04-06 12:25:48', '原创　/　静止系　/　GalGame　/　唯美系', 'slt_hnscby6_1428294348_557405952.png', '', '', '', '1', 'hnscby6_1428294348_557405952.mp4', '0.00', '1', '2000-1-1', '1', '0', '0', '2');
INSERT INTO `video` VALUES ('10028', '10356', '鹫尾须美是勇者', null, '恋の镇魂曲', '23', '雨が降る', null, '结城友奈是勇者前传，鹫尾须美等三人的物语', '2015-04-06 12:43:05', '2015-04-06 12:43:05', '原创　/　静止系　/　漫画　/　小说', 'slt_guoxin9001_1428295385_123476402.png', '', '', '白色情人祭参加作品', '1', 'guoxin9001_1428295385_123476402.flv', '0.12', '1', '2000-1-1', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10029', '10035', 'The last shot', null, 'Mell', '25', ' [リマイソド]ROOKiEZ is PUNK\'D', null, '技术不足，没脑洞下的产制物品', '2015-04-06 12:54:25', '2015-04-06 12:54:25', '原创　/　静止系　/　漫画', 'slt_527451241@qq.com_1428296065_747147444.png', '', '', '灌篮高手', '1', '527451241@qq.com_1428296065_747147444.flv', '0.13', '1', '2000-1-1', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10030', '10399', '食梦者·启程', null, 'zy10112029', '13', 'ボクらの冒険', null, '13年新人战作品', '2015-04-06 13:01:15', '2015-04-06 13:01:15', '原创　/　静止系　/　漫画', 'slt_zy10112029_1428296475_539394030.png', 'http://pan.baidu.com/share/link?shareid=4114580718&uk=68396097', 'psla', '新人战', '1', 'zy10112029_1428296475_539394030.flv', '0.13', '1', '2000-1-1', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10035', '10356', '结城友奈是勇者', null, '恋の镇魂曲', '36', '红凰优楼', null, '结城友奈是勇者动画相关MAD', '2015-04-06 15:11:04', '2015-04-06 15:11:04', '原创　/　混合系', 'slt_guoxin9001_1428304264_278354615.png', '', '', '白色情人祭参加作品', '1', 'guoxin9001_1428304264_278354615.flv', '0.12', '1', '2000-1-1', '0', '0', '0', '1');
INSERT INTO `video` VALUES ('10037', '10314', '勇敢者即为生还者', null, '黏贵妃', '5', '生还者-TANK', null, '', '2015-04-06 16:20:49', '2015-04-06 16:20:49', '原创　/　动作', 'slt_abby0731_1428308449_113256143.png', '', '', '《纳米核心》', '1', 'abby0731_1428308449_113256143.flv', '0.08', '1', '2000-1-1', '0', '0', '0', '1');
INSERT INTO `video` VALUES ('10042', '10031', '堀与宫村', null, '远子酱', '28', 'パラダイム', null, '渣作', '2015-04-06 21:44:54', '2015-04-06 21:44:54', '原创　/　静止系', 'slt_924442791_1428327894_860014717.jpg', '', '', '', '1', '924442791_1428327894_860014717.flv', '0.12', '1', '2000-1-1', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10043', '10280', '少女与花的物语', null, '小伤', '13', 'rurutia - アラベスク', null, '素材是源君物语 这个漫画的背景是源氏物语 制作的时候大量使用了三次元素材 ', '2015-04-06 23:41:07', '2015-04-06 23:41:07', '原创　/　静止系　/　漫画　/　唯美系', 'slt_114805438_1428334867_567334612.jpg', 'http://pan.baidu.com/s/1ycHkE', '', '第七届情人祭的作品 本人第一只单素材静止漫画系作品', '1', '114805438_1428334867_567334612.flv', '0.15', '1', '2000-1-1', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10044', '10072', '英灵与主人的故事', null, '八坂琴里', '15', 'Everybody Wants To Rule The World - Lorde', null, 'TIM2014的参赛作品', '2015-04-07 00:18:35', '2015-04-07 00:18:35', '原创　/　惊悚　/　情感　/　故事　/　预告', 'slt_1254170587_1428337115_578647970.jpg', '', '', '英灵与主人的故事', '1', '1254170587_1428337115_578647970.mp4', '0.00', '1', '2000-1-1', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10045', '10053', 'Sweet & Sweet CHERRY', null, 'Nishikino_Nico', '11', '崛江由衣-SweetSweet&CHERRY', null, 'LOVELIVE MAD', '2015-04-07 10:38:47', '2015-04-07 10:38:47', '原创　/　静止系', 'slt_NICOMAKI_1428374327_544758329.jpg', '', '', '', '1', 'NICOMAKI_1428374327_544758329.mp4', '0.00', '1', '2000-1-1', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10046', '10056', '存在的目的是消亡', null, '一识', '27', 'ライア-まじ娘-ねこぼーろ', null, '主要的内容是小说的前日谈部分（i）~', '2015-04-07 13:42:02', '2015-04-07 13:42:02', '原创　/　M@D　/　', 'slt_hiroshidan_1428385322_41377525.png', 'http://pan.baidu.com/s/1sjMA8P3', '', '说谎的男孩和坏掉的女孩', '1', 'hiroshidan_1428385322_41377525.flv', '0.10', '1', '2014-1-10', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10057', '10439', '那年今日，逝去的你', null, '请叫我团长sama', '13', 'mirror night', null, '对四月谎言这个故事的浓缩诠释，技术上欠缺许多，希望能通过剪辑和剧情来弥补这部ASMV的不足', '2015-04-08 09:59:40', '2015-04-08 09:59:40', '原创　/　AWV　/　人物　/　浪漫　/　故事', 'slt_claris_1428458379_812100929.png', 'http://pan.baidu.com/s/1hqpIHV2', '7jkq', '治愈asmv（致郁）', '1', 'claris_1428458379_812100929.flv', '0.10', '1', '2015-4-2', '0', '0', '0', '1');
INSERT INTO `video` VALUES ('10058', '10025', 'Trance Meets Time-lapse ', null, 'Musicool', '12', 'BT-City Life Feat.Bada', null, '这家伙很懒，只会拖稿', '2015-04-08 11:50:55', '2015-04-08 11:50:55', '原创　/　MV　/　', 'slt_w116525022_1428465055_439654609.jpg', '', '', '60fps注意', '1', 'w116525022_1428465055_439654609.flv', '0.14', '1', '2015-2-27', '0', '0', '0', '3');
INSERT INTO `video` VALUES ('10059', '10059', 'Fairy Tale', null, '风吟Winsper', '13', 'fairytale--kalafina', null, '新人渣作、、', '2015-04-08 14:27:40', '2015-04-08 14:27:40', '原创　/　M@D　/　静止系　/　漫画', 'slt_Winsper_1428474459_536713170.jpg', '', '', '', '1', 'Winsper_1428474459_536713170.flv', '0.12', '1', '2015-4-4', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10060', '10344', '一起去看团长的演唱会', null, '小小kun', '6', 'no thank you', null, 'HARU渣作，，，', '2015-04-08 19:23:14', '2015-04-08 19:23:14', '原创　/　AWV　/　喜剧　/　故事', 'slt_851348214_1428492194_707496911.JPG', '', '', '', '1', '851348214_1428492194_707496911.flv', '0.08', '1', '2015-01-25', '0', '0', '0', '1');
INSERT INTO `video` VALUES ('10061', '10028', 'Burning out', null, 'jojoanna', '12', 'Burning out - Tata', null, '测试。', '2015-04-08 20:59:01', '2015-04-08 20:59:01', '原创　/　MV　/　', 'slt_jojoanns_1428497941_877691973.jpg', '', '', '听说要投稿才能评分..  _(:з」∠)_', '2', 'jojoanns_1428497941_877691973.flv', '0.08', '1', '2014.7.6', '0', '0', '0', '3');
INSERT INTO `video` VALUES ('10062', '10028', 'Level Up 2014 - FATE/ZERO', null, 'Editor：PЯIDE，PRO：Centurione', '15', 'Florence + The Machine - Seven Devils', null, 'amvnews.ru Level Up 2014 人类究竟为何而生，为何而死，为何而战？很棒的剧情向多素材AMV', '2015-04-08 21:21:50', '2015-04-08 21:21:50', '搬运　/　AWV　/　故事', 'slt_jojoanns_1428499310_476038079.jpg', '', '', 'amvnews.ru Level Up 2014', '2', 'jojoanns_1428499310_476038079.flv', '0.07', '2', '', '0', '0', '0', '1');
INSERT INTO `video` VALUES ('10066', '10613', 'Breathe', null, 'luck', '21', 'Tut Tut Child - Breathe ft. Dankya Nadeau', null, '投个初稿', '2015-04-09 04:26:14', '2015-04-09 04:26:14', '原创　/　AWV　/　动作　/　情感', 'slt_luckamvs_1428524774_863542021.jpg', '', '', 'AMV', '2', 'luckamvs_1428524774_863542021.flv', '0.10', '1', '2015-02-01', '0', '0', '0', '1');
INSERT INTO `video` VALUES ('10067', '10407', '致十年后的我', null, '方晴晴', '12', 'Letter song', null, '十年韶华漏出手心的沙 风雨同路不悔只活在当下', '2015-04-09 04:47:06', '2015-04-09 04:47:06', '原创　/　M@D　/　混合系', 'slt_Gintoki_JF_1428526026_620967973.jpg', '', '', '秒速五厘米', '2', 'Gintoki_JF_1428526026_620967973.flv', '0.11', '1', '2015-03-30', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10072', '10280', '偽物の終末と神様の「恋」', null, 'pluvia', '10', '不详', null, '目前pluvia大湿最碉堡的一个作品 原作是galgame 五彩斑斓的世界 ', '2015-04-10 13:23:23', '2015-04-10 13:23:23', '搬运　/　M@D　/　静止系　/　GalGame　/　唯美系', 'slt_114805438_1428643403_650772192.jpg', '', '', '', '2', '114805438_1428643403_650772192.flv', '0.05', '2', '', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10073', '10280', ' Little Busters! モルヒネ——伽藍堂天晴', null, '伽蓝堂天晴', '10', 'Must be dreaming - Frou Frou', null, '这个作品是伽蓝堂天晴的作品里面本人最喜欢的一只 而且也是10年大赏的第二名 非常之吊 第一名是军魔的23333 ', '2015-04-10 13:26:00', '2015-04-10 13:26:00', '搬运　/　M@D　/　静止系　/　GalGame　/　唯美系', 'slt_114805438_1428643560_139923613.png', '', '', '11区顶尖大湿伽蓝堂天晴的作品 2010年静止系大赏第二', '2', '114805438_1428643560_139923613.flv', '0.08', '2', '', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10075', '10280', '羊之方舟-世界の終わりと殉教者の方舟', null, 'pluvia', '10', 'ひかりのサーカス——天野月子', null, '', '2015-04-10 13:41:27', '2015-04-10 13:41:27', '搬运　/　M@D　/　静止系　/　GalGame　/　唯美系', 'slt_114805438_1428644487_247199021.jpg', '', '', 'pluvia大湿的作品 个人相当喜欢的一个', '2', '114805438_1428644487_247199021.flv', '0.05', '2', '', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10076', '10280', '交響樂之雨-雨降り街と嘘つきの唄', null, 'pluvia', '10', '不详', null, 'pluvia大湿中窝很喜欢的一只 那种氛围非常喜欢 非常有节奏的钢琴曲 画面也随之飞舞 很多一闪而过的画面窝都想暂停下来仔细看看 高潮那段特别有味道', '2015-04-10 13:56:47', '2015-04-10 13:56:47', '搬运　/　M@D　/　静止系　/　GalGame　/　唯美系', 'slt_114805438_1428645407_981235544.jpg', '', '', 'pluvia的作品 氛围很喜欢', '2', '114805438_1428645407_981235544.flv', '0.07', '2', '', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10077', '10280', '水星領航員系列-Cat Wonder Episode', null, 'pluvia', '10', 'puzzle——茶太', null, 'pluvia大湿的漫画系作品 原作是《水星领航员》 比较久远  也有动画 共三季 第一季是2005年的 也是有点复古', '2015-04-10 14:22:17', '2015-04-10 14:22:17', '搬运　/　M@D　/　静止系　/　漫画　/　唯美系', 'slt_114805438_1428646937_174390240.jpg', '', '', '', '2', '114805438_1428646937_174390240.flv', '0.11', '2', '', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10081', '10280', '青空灯台と涙雨の少女', null, 'pluvia', '9', '泣いて——蓝坊主', null, 'pluvia大湿好喜欢这个gal 窝觉得有好多这个gal的作品 貌似一个活动做了4.5个？（雾 某大鸟说的）', '2015-04-10 23:47:21', '2015-04-10 23:47:21', '搬运　/　M@D　/　静止系　/　GalGame　/　唯美系', 'slt_114805438_1428680841_725010957.jpg', '', '', 'pluvia大湿喜欢的五彩斑斓的世界', '2', '114805438_1428680841_725010957.flv', '0.16', '2', '', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10082', '10280', 'Epilogue', null, 'pluvia', '13', 'ラストシーン', null, '还是五彩斑斓的世界 还是二阶堂真红2333333333', '2015-04-10 23:58:05', '2015-04-10 23:58:05', '搬运　/　M@D　/　静止系　/　GalGame　/　唯美系', 'slt_114805438_1428681484_156710487.jpg', '', '', 'pluvia大湿喜欢的五彩斑斓的世界', '2', '114805438_1428681484_156710487.flv', '0.07', '2', '', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10083', '10042', '第八日的蝉-黄昏的禁忌之药', null, '軍魔（closswind）', '5', 'H△G – あの夏、僕らは。', null, 'sm25164015 『MADMAX 2014』Day 1  素材是《黄昏的禁忌之药》', '2015-04-11 00:05:59', '2015-04-11 00:05:59', '搬运　/　M@D　/　静止系　/　GalGame　/　燃系', 'slt_332809557@qq.com_1428681959_582680389.jpg', 'http://pan.baidu.com/s/1hqJ1O1m', '', '', '2', '332809557@qq.com_1428681959_582680389.flv', '0.12', '2', '', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10084', '10042', '雪中のParanoia-虚の少女', null, 'カンチ２', '5', 'MY FATE-土屋安娜', null, 'sm22601574 雪山祭·人偶神', '2015-04-11 00:33:09', '2015-04-11 00:33:09', '搬运　/　M@D　/　静止系　/　GalGame　/　唯美系', 'slt_332809557@qq.com_1428683589_443975054.jpg', 'pan.baidu.com/s/1eQj4HRs', '', '', '1', '332809557@qq.com_1428683589_443975054.flv', '0.10', '2', '', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10085', '10280', '終末思想の夜と幸福の向日葵畑', null, 'pluvia', '5', 'メレンゲ - クレーター', null, 'pluvia大湿2014年MADMAX的作品 对战的CP是真红 素材是大湿喜欢的素晴日 这个作品发布没多少天大湿又发布了一个素晴日的作品 太高产了', '2015-04-11 00:35:15', '2015-04-11 00:35:15', '搬运　/　M@D　/　静止系　/　GalGame　/　唯美系', 'slt_114805438_1428683715_114306856.jpg', '', '', ' pluvia大湿真的好喜欢素晴日和五彩斑斓的世界呢', '1', '114805438_1428683715_114306856.mp4', '0.00', '2', '', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10086', '10042', '香格里拉之恋', null, '青菜子', '8', 'シャングリラ-今井麻美（尸体派对PSP版OP）', null, 'bilibili2013MAD大赛作品，原作：君と彼女と彼女の恋。（Nitro+）', '2015-04-11 01:43:22', '2015-04-11 01:43:22', '搬运　/　M@D　/　静止系　/　GalGame', 'slt_332809557@qq.com_1428687802_554209622.png', ' http://pan.baidu.com/s/1kTBrFUZ ', '2w2b', '', '1', '332809557@qq.com_1428687802_554209622.flv', '0.12', '2', '', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10087', '10028', 'Centurione-Resonance', null, 'Centurione', '14', 'Find a way - Safetysuit', null, '搬运，测试。', '2015-04-12 12:02:45', '2015-04-12 12:02:45', '搬运　/　AMV　/　浪漫', 'slt_jojoanns_1428811365_93309941.jpg', '', '', 'AMVNews id=6124 FREE ZONE 2014', '1', 'jojoanns_1428811365_93309941.flv', '0.11', '2', '', '0', '0', '0', '1');
INSERT INTO `video` VALUES ('10088', '10028', '秋山澪x折木奉太郎的爱情故事', null, 'UMIKA', '20', 'DEVOTION', null, '搬运，测试。', '2015-04-12 12:07:11', '2015-04-12 12:07:11', '搬运　/　AMV　/　人物　/　浪漫　/　情感', 'slt_jojoanns_1428811630_985568135.jpg', '', '', '测试', '1', 'jojoanns_1428811630_985568135.flv', '0.06', '2', '', '0', '0', '0', '1');
INSERT INTO `video` VALUES ('10089', '10624', '百合才是正义', null, 'ゼロ剪尘', '6', 'Fantastic Future', null, '渣新处女作，有不足之处还请各位多多批评指教的说_(:з」∠)_感谢入坑以来帮助过渣尘的各位大触。本来想做百合欢乐向混合系的，最后也不造做成了什么四不像的纯碱+PPT……BGM是找了不笑猫OP的完整版重新剪了一下，好像最后做出来这剧情气氛和BGM不太搭orz不过当初的脑洞也就是想拿这OP开坑为姐姐大人做一个百合的结尾……不造各位能不能看懂剧情qwq为什么原作最后是猫系BG结尾！作为百合党真是太心塞了啊！！百合才是正义！姐姐大人赛高！', '2015-04-14 14:05:15', '2015-04-14 14:05:15', '原创　/　AMV　/　人物　/　情感　/　故事', 'slt_zldust_1428991515_107483081.png', ' http://pan.baidu.com/s/1c0hdU2c', ' umc6', '百合向/伪误解向/混合系', '1', 'zldust_1428991515_107483081.flv', '0.00', '1', '2015-03-05', '0', '0', '0', '1');
INSERT INTO `video` VALUES ('10090', '10010', '月花之泪', null, 'littledango', '9', 'july-heaven', null, '旧作', '2015-04-14 18:36:36', '2015-04-14 18:36:36', '原创　/　M@D　/　静止系　/　唯美系', 'slt_littledango_1429007796_749985672.jpg', '', '', 'MAD新人战2014作品', '1', 'littledango_1429007796_749985672.mp4', '0.00', '1', '2014-04', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10091', '10558', 'miku 喊你去吃药', null, '纸片人', '13', '把你mikumiku掉', null, '我来试试投稿，顺便快看我的头像', '2015-04-16 13:34:43', '2015-04-16 13:34:43', '原创　/　MV　/　形状层动画　/　MG', 'slt_paperman_1429162483_898929479.jpg', 'http://pan.baidu.com/s/1gdtjhVt', '16wf', 'TIM2014参赛作品', '1', 'paperman_1429162483_898929479.flv', '0.10', '1', '2014-8-15', '0', '0', '0', '3');
INSERT INTO `video` VALUES ('10092', '10056', 'MerryMerryThanks for your love', null, '一识', '9', 'メリーメリー―あさまる', null, '第六回春秋合战参加作品', '2015-04-22 10:46:15', '2015-04-22 10:46:15', '原创　/　AMV　/　浪漫　/　故事', 'id_10056_num_1.jpg', 'http://pan.baidu.com/s/1gdpLA4z', '', 'CLANNAD', '1', 'id_10056_num_1.flv', '0.05', '1', '2014-12-19', '0', '0', '0', '1');
INSERT INTO `video` VALUES ('10093', '10113', '超电磁炮漫画MAD-CHAOS', null, '金闪闪', '8', 'FALLEN-EGOIST', null, '炮姐漫画第十卷mad', '2015-05-02 18:31:55', '2015-05-02 18:31:55', '原创　/　M@D　/　静止系　/　漫画　/　燃系', 'id_10113_num_1.png', 'http://pan.baidu.com/s/1qWkJWbq', '', '', '1', 'id_10113_num_1.flv', '0.16', '1', '2015-5-2', '0', '0', '0', '2');
INSERT INTO `video` VALUES ('10095', '10651', '测试投稿', null, '无聊', '0', '233', null, '测试头高高高', '2015-06-29 14:19:32', '2015-06-29 14:19:32', '原创 / AMV / 动作 / 惊悚 / 故事 / 人物', 'id_10651_num_0.jpg', 'http://localhost/index.php/UpVideo', '', null, '1', 'id_10651_num_0.flv', null, '1', '2015-06-03', '3', '1', '0', '1,3,5,7');
INSERT INTO `video` VALUES ('10096', '10651', '好好好', null, '无聊', '0', '222', null, '1123', '2015-07-04 18:20:56', '2015-07-04 18:20:56', 'M@D / ', 'id_10651_num_0.jpg', 'http://localhost/drawmad/index.php/UpVideo', '', null, '0', 'id_10651_num_0.flv', null, '1', '2015-07-01', '0', '1', '0', '');
INSERT INTO `video` VALUES ('10101', '10651', 'sasda', null, '无聊', '0', 'sadsd', null, 'sadasd', '2015-07-07 18:15:39', '2015-07-07 18:15:39', 'AMV / 惊悚 / 故事 / 合作 / 人物', 'id_10651_num_5.jpg', 'http://localhost/index.php/Events/eventsUpVideo', '', null, '0', 'id_10651_num_5.flv', null, '1', '2015-07-02', '2', '0', '0', '3,5,6,7');
INSERT INTO `video` VALUES ('10102', '10651', 'sasda', null, '无聊', '0', 'sadsd', null, 'sadasd', '2015-07-07 18:15:45', '2015-07-07 18:15:45', 'AMV / 惊悚 / 故事 / 合作 / 人物', 'id_10651_num_5.jpg', 'http://localhost/index.php/Events/eventsUpVideo', '', null, '0', 'id_10651_num_5.flv', null, '1', '2015-07-02', '1', '0', '0', '3,5,6,7');
INSERT INTO `video` VALUES ('10103', '10651', 'sadsada', null, '无聊', '0', 'asdasd', null, 'asdad', '2015-07-07 18:18:57', '2015-07-07 18:18:57', 'AMV / 浪漫 / 舞曲 / 片段', 'id_10651_num_5.jpg', 'http://localhost/index.php/Events/eventsUpVideo', '', null, '0', 'id_10651_num_5.flv', null, '1', '2015-07-03', '0', '0', '0', '4,8,12');
INSERT INTO `video` VALUES ('10104', '10651', 'sasad', null, '无聊', '0', 'sad', null, 'sdas', '2015-07-07 18:23:20', '2015-07-07 18:23:20', 'AMV / 舞曲 / 情感 / 片段', 'id_10651_num_8.jpg', 'http://localhost/index.php/Events/eventsUpVideo', '', null, '0', 'id_10651_num_8.flv', null, '1', '2015-07-09', '1', '0', '0', '8,10,12');
INSERT INTO `video` VALUES ('10105', '10651', 'sadsad', null, '无聊', '0', 'asdsad', null, 'sad', '2015-07-07 18:50:32', '2015-07-07 18:50:32', 'AMV / 人物 / 浪漫 / 情感 / 片段', 'id_10651_num_9.jpg', 'http://localhost/index.php/Events/eventsUpVideo', '', null, '0', 'id_10651_num_9.flv', null, '1', '2015-07-17', '0', '0', '0', '2,4,10,12');
INSERT INTO `video` VALUES ('10106', '10651', 'awsdas', null, '无聊', '0', 'saddds', null, 'ads', '2015-07-07 19:28:23', '2015-07-07 19:28:23', 'AMV / 合作 / 舞曲 / 情感', 'id_10651_num_10.jpg', 'http://localhost/index.php/Events/eventsUpVideo', '', null, '0', 'id_10651_num_10.flv', null, '1', '2015-07-09', '0', '0', '0', '6,8,10');
INSERT INTO `video` VALUES ('10107', '233', '你好好好好', null, '无聊你妹', '0', '音乐', null, '大撒旦', '2015-07-09 10:03:38', '2015-07-09 10:03:38', 'AMV / 浪漫 / 合作 / 舞曲', 'id_5000_num_1.jpg', '', '', null, '1', 'id_5000_num_1.flv', null, '1', '2015-07-07', '0', '0', '0', '4,6,8');
INSERT INTO `video` VALUES ('10108', '233', '阿瓦达', null, '无聊你妹', '0', '万达22', null, '撒旦 3', '2015-07-09 13:25:40', '2015-07-09 13:25:40', 'M@D / 片段 / 漫画', 'edit_id_5000_num_2.jpg', 'http://localhost/index.php/MyZone/edit_video?video_id=MAD10108', '', null, '0', 'edit_id_5000_num_2.flv', null, '1', '2015-07-01', '0', '0', '0', '18,20');
INSERT INTO `video` VALUES ('10109', '233', '水电费发送到', null, '无聊你妹', '0', '地方所发生的', null, '水电费水电费', '2015-07-09 13:27:03', '2015-07-09 13:27:03', 'AMV / 人物 / 合作 / 情感', 'id_5000_num_3.jpg', '', '', null, '2', 'id_5000_num_3.flv', null, '1', '2015-07-07', '0', '0', '0', '2,6,10');
INSERT INTO `video` VALUES ('10110', '233', '方法', null, '无聊你妹', '0', '第三方斯蒂芬', null, '', '2015-07-10 13:55:14', '2015-07-10 13:55:14', 'AMV / 合作 / 舞曲 / 片段', 'id_5000_num_4.jpg', 'http://localhost/index.php/Events/eventsUpVideo', '', null, '1', 'id_5000_num_4.flv', null, '1', '2015-07-01', '18', '0', '0', '6,8,12');
INSERT INTO `video` VALUES ('10111', '233', '测试1', null, '无聊你妹', '0', '音乐', null, '', '2015-08-25 17:05:42', '2015-09-06 18:11:37', 'AMV / 人物 / 浪漫 / 合作 / 舞曲', 'edit_id_233_num_10.png', 'http://test.drawmad2.com/index.php/UpVideo', '', null, '0', 'edit_id_233_num_10.flv', null, '1', '2015-08-23', '1', '0', '0', '2,4,6,8');
INSERT INTO `video` VALUES ('10112', '233', '', null, '无聊你妹', '0', '', null, '', '2015-08-25 17:08:54', '2015-08-25 17:08:54', 'AMV / ', 'id_5000_num_5.png', '', '', null, '0', 'id_5000_num_5.flv', null, '1', '2015-08-05', '0', '0', '0', '');
INSERT INTO `video` VALUES ('10113', '233', '', null, '无聊你妹', '0', '', null, '', '2015-08-25 17:09:13', '2015-08-25 17:09:13', 'AMV / 迷幻 / 预告', 'id_5000_num_5.png', '', '', null, '0', 'id_5000_num_5.flv', null, '1', '2015-08-05', '0', '0', '0', '9,11');
INSERT INTO `video` VALUES ('10114', '233', '', null, '无聊你妹', '0', '', null, '', '2015-08-25 17:12:17', '2015-08-25 17:12:17', 'AMV / 迷幻 / 预告', 'id_5000_num_5.png', '', '', null, '1', 'id_5000_num_5.flv', null, '1', '2015-08-05', '0', '0', '0', '9,11');
INSERT INTO `video` VALUES ('10115', '233', '标题222', null, '无聊你妹', '0', '音乐222', null, '', '2015-08-25 17:12:47', '2015-08-25 17:12:47', 'AMV / 人物 / 迷幻 / 预告', 'id_5000_num_5.png', 'http://test.drawmad2.com/index.php/UpVideo', '', null, '1', 'id_5000_num_5.flv', null, '1', '2015-08-05', '0', '0', '0', '7,9,11');
INSERT INTO `video` VALUES ('10116', '233', '标题222', null, '无聊你妹', '0', '音乐222', null, '', '2015-08-25 17:14:36', '2015-08-25 17:40:42', 'AMV / 浪漫 / 合作 / 情感', 'id_5000_num_6.png', 'http://test.drawmad2.com/index.php/UpVideo', '', null, '1', 'id_5000_num_6.flv', null, '1', '2015-08-18', '109', '0', '0', '4,6,10');

-- ----------------------------
-- Table structure for video_big_type
-- ----------------------------
DROP TABLE IF EXISTS `video_big_type`;
CREATE TABLE `video_big_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `other_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_big_type
-- ----------------------------
INSERT INTO `video_big_type` VALUES ('1', 'AMV', 'AMV');
INSERT INTO `video_big_type` VALUES ('2', 'M@D', 'MAD');
INSERT INTO `video_big_type` VALUES ('3', 'MV', 'MV');

-- ----------------------------
-- Table structure for video_check
-- ----------------------------
DROP TABLE IF EXISTS `video_check`;
CREATE TABLE `video_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `video_state` varchar(255) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10022 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_check
-- ----------------------------
INSERT INTO `video_check` VALUES ('10015', '10000', 'Marshall-fun', null, null, null, null);
INSERT INTO `video_check` VALUES ('10018', '10010', 'littledango', null, null, null, null);
INSERT INTO `video_check` VALUES ('10020', '10280', '小伤', null, null, null, null);
INSERT INTO `video_check` VALUES ('10021', '10019', 'Falling', null, null, null, null);

-- ----------------------------
-- Table structure for video_collect
-- ----------------------------
DROP TABLE IF EXISTS `video_collect`;
CREATE TABLE `video_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `collect_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_collect
-- ----------------------------
INSERT INTO `video_collect` VALUES ('14', '10154', 'zhusama', '10009', null);
INSERT INTO `video_collect` VALUES ('19', '10011', 'littledango~', '10007', null);
INSERT INTO `video_collect` VALUES ('20', '10385', '649539460', '10014', null);
INSERT INTO `video_collect` VALUES ('21', '10010', 'littledango', '10007', null);
INSERT INTO `video_collect` VALUES ('22', '10033', '605918279', '10015', null);
INSERT INTO `video_collect` VALUES ('23', '10035', '527451241@qq.com', '10006', null);
INSERT INTO `video_collect` VALUES ('24', '10469', '528292903', '10009', null);
INSERT INTO `video_collect` VALUES ('25', '10055', 'Sung Hsu', '10025', null);
INSERT INTO `video_collect` VALUES ('26', '10494', 'noeigu', '10008', null);
INSERT INTO `video_collect` VALUES ('27', '10014', 'yun2he', '10009', null);
INSERT INTO `video_collect` VALUES ('28', '10435', 'LMTljm', '10024', null);
INSERT INTO `video_collect` VALUES ('29', '10053', 'NICOMAKI', '10045', null);
INSERT INTO `video_collect` VALUES ('30', '10418', 'Aki_lucky', '10035', null);
INSERT INTO `video_collect` VALUES ('31', '10584', 'ysl456', '10018', null);
INSERT INTO `video_collect` VALUES ('32', '10586', '770584959', '10013', null);
INSERT INTO `video_collect` VALUES ('33', '10586', '770584959', '10045', null);
INSERT INTO `video_collect` VALUES ('34', '10356', 'guoxin9001', '10046', null);
INSERT INTO `video_collect` VALUES ('36', '10271', 'ichirukia', '10061', null);
INSERT INTO `video_collect` VALUES ('38', '10154', 'zhusama', '10010', null);
INSERT INTO `video_collect` VALUES ('39', '10273', 'doomedyawn', '10062', null);
INSERT INTO `video_collect` VALUES ('40', '10626', 'Misak1026', '10035', null);
INSERT INTO `video_collect` VALUES ('41', '10624', 'zldust', '10087', null);
INSERT INTO `video_collect` VALUES ('42', '10128', 'NaraYaki', '10012', null);
INSERT INTO `video_collect` VALUES ('43', '10188', 'Moneight', '10046', null);
INSERT INTO `video_collect` VALUES ('44', '10056', 'hiroshidan', '10085', null);
INSERT INTO `video_collect` VALUES ('45', '10056', 'hiroshidan', '10081', null);
INSERT INTO `video_collect` VALUES ('46', '10056', 'hiroshidan', '10075', null);
INSERT INTO `video_collect` VALUES ('47', '10056', 'hiroshidan', '10072', null);
INSERT INTO `video_collect` VALUES ('48', '10633', 'Lolali', '10067', null);
INSERT INTO `video_collect` VALUES ('49', '10645', 'wpj111', '10035', null);
INSERT INTO `video_collect` VALUES ('50', '10662', '天上蹲2', '10067', null);
INSERT INTO `video_collect` VALUES ('51', '10356', 'guoxin9001', '10067', null);
INSERT INTO `video_collect` VALUES ('60', '10651', 'wuliao2', '10014', null);
INSERT INTO `video_collect` VALUES ('61', '10651', 'wuliao2', '10012', null);
INSERT INTO `video_collect` VALUES ('62', '10651', 'wuliao2', '10015', '2015-06-29 11:49:49');
INSERT INTO `video_collect` VALUES ('63', '5000', 'wuliao', null, '2015-08-27 13:51:20');
INSERT INTO `video_collect` VALUES ('64', '5000', 'wuliao', '10013', '2015-08-27 13:57:30');

-- ----------------------------
-- Table structure for video_comments
-- ----------------------------
DROP TABLE IF EXISTS `video_comments`;
CREATE TABLE `video_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `user_img` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `num_floor` int(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `is_del` tinyint(1) DEFAULT '0',
  `username` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_comments
-- ----------------------------
INSERT INTO `video_comments` VALUES ('12', '10085', '10280', '小伤', 'slt_114805438.jpg', '啊啊啊啊 评论区终于开放了', '1', '2015-04-18 23:23:44', '0', '0', null, '0');
INSERT INTO `video_comments` VALUES ('14', '10083', '10033', '歼灭小天使', 'slt_605918279.jpg', '评论区开放啦！军魔赛高，第一个评论就留这了！', '1', '2015-04-19 09:28:26', '0', '0', null, '0');
INSERT INTO `video_comments` VALUES ('16', '10007', '10028', 'jojoanna', 'slt_jojoanns.png', '团几的一楼我要了~', '1', '2015-04-19 20:40:40', '0', '0', null, '0');
INSERT INTO `video_comments` VALUES ('17', '10084', '10038', 'Ice·尘', null, '好赞啊！', '1', '2015-04-20 22:28:16', '0', '0', null, '0');
INSERT INTO `video_comments` VALUES ('18', '10085', '10056', '一识', null, '现在可以评论了？？！！', '2', '2015-04-22 12:01:11', '0', '0', null, '0');
INSERT INTO `video_comments` VALUES ('19', '10046', '10188', '月八', null, '牛逼啊，肿么这么牛逼', '1', '2015-04-22 17:13:23', '0', '0', null, '0');
INSERT INTO `video_comments` VALUES ('20', '10067', '10633', 'Lolali', null, 'BGM是？', '1', '2015-04-26 21:29:05', '0', '0', null, '0');
INSERT INTO `video_comments` VALUES ('21', '10009', '10000', 'Marshall-fun', 'slt_marshall-fun.jpg', '桥西好屌', '1', '2015-04-30 16:26:49', '0', '0', null, '0');
INSERT INTO `video_comments` VALUES ('23', '10093', '10033', '歼灭小天使', 'slt_605918279.jpg', '傻逼闪闪', '1', '2015-05-09 15:46:24', '0', '0', null, '0');
INSERT INTO `video_comments` VALUES ('67', '10029', '10000', 'Marshall-fun', 'slt_marshall-fun.jpg', 'M略屌啊', '1', '2015-07-02 20:36:32', '0', '0', 'marshall-fun', '0');
INSERT INTO `video_comments` VALUES ('68', '10043', '10000', 'Marshall-fun', 'slt_marshall-fun.jpg', '小伤姐姐么么哒', '1', '2015-07-02 20:45:49', '0', '0', 'marshall-fun', '0');
INSERT INTO `video_comments` VALUES ('69', '10035', '10651', '无聊', 'slt_wuliao2.jpg', '每次都拿这个视频测试 真是对不起了', '1', '2015-07-04 23:15:43', '0', '0', 'wuliao2', '0');
INSERT INTO `video_comments` VALUES ('70', '10046', '10705', 'NiseSa', 'nohead.png', '看不了！没有找到视频流！', '2', '2015-07-06 02:02:15', '0', '0', '232056756@qq.com', '0');
INSERT INTO `video_comments` VALUES ('71', '10091', '10696', '风间古明地', 'hed_ wp419375036.jpg', '面白い', '1', '2015-07-09 02:51:43', '0', '0', ' wp419375036', '0');
INSERT INTO `video_comments` VALUES ('72', '10046', '233', '无聊', 'hed_wuliao.jpg', '\n你牛逼  改好了', '3', '2015-07-10 16:33:31', '0', '0', 'wuliao', '70');
INSERT INTO `video_comments` VALUES ('73', '10135', '10033', '歼灭小天使', 'slt_605918279.jpg', '米触！', '1', '2015-07-11 16:48:27', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('74', '10136', '10222', 'RailSword', 'hed_huangjianxiang3.jpg', '梦酱梦酱梦~', '1', '2015-07-13 19:30:30', '0', '0', 'huangjianxiang3', '0');
INSERT INTO `video_comments` VALUES ('75', '10138', '10000', 'Marshall-fun', 'hed_marshall-fun.jpg', '颜色调的是不是过重了', '1', '2015-07-15 02:25:26', '0', '0', 'marshall-fun', '0');
INSERT INTO `video_comments` VALUES ('76', '10123', '10000', 'Marshall-fun', 'hed_marshall-fun.jpg', '高产如大叔', '1', '2015-07-15 02:50:24', '0', '0', 'marshall-fun', '0');
INSERT INTO `video_comments` VALUES ('77', '10140', '233', '无聊', 'hed_wuliao.jpg', '擦 全金不能忍。。。', '1', '2015-07-19 11:04:12', '0', '0', 'wuliao', '0');
INSERT INTO `video_comments` VALUES ('78', '10019', '10100', '白夜琳音', 'hed_xzw4323241.jpg', '我就看看小天使大大', '1', '2015-07-19 18:18:30', '0', '0', 'xzw4323241', '0');
INSERT INTO `video_comments` VALUES ('79', '10019', '10100', '白夜琳音', 'hed_xzw4323241.jpg', '吊死我了 卧槽', '2', '2015-07-19 18:19:47', '0', '0', 'xzw4323241', '0');
INSERT INTO `video_comments` VALUES ('80', '10143', '10000', 'Marshall-fun', 'hed_marshall-fun.jpg', '拖稿狂魔大满子', '1', '2015-07-21 23:50:12', '0', '0', 'marshall-fun', '0');
INSERT INTO `video_comments` VALUES ('81', '10143', '10070', '狂気の比利兄贵', 'slt_laonai45.jpg', '赞，看完片留下评论都是好孩子。', '2', '2015-07-22 00:02:51', '0', '0', 'laonai45', '0');
INSERT INTO `video_comments` VALUES ('82', '10143', '10053', 'Nishikino_Nico', 'hed_NICOMAKI.png', '赞，看完片留下评论都是好基佬。', '3', '2015-07-22 00:11:40', '0', '0', 'NICOMAKI', '0');
INSERT INTO `video_comments` VALUES ('83', '10143', '10613', 'luck', 'slt_luckamvs.png', 'yooooooooooooooo', '4', '2015-07-22 00:22:39', '0', '0', 'luckamvs', '0');
INSERT INTO `video_comments` VALUES ('84', '10143', '10733', '曼吱咊', 'nohead.png', '第一次来诶！', '5', '2015-07-22 00:26:49', '0', '0', 'heyuan123', '0');
INSERT INTO `video_comments` VALUES ('85', '10143', '10734', '懒懒懒蛋蛋子', 'nohead.png', 'yahooooooooo', '6', '2015-07-22 00:34:16', '0', '0', 'dmcnero', '0');
INSERT INTO `video_comments` VALUES ('86', '10143', '10016', 'MK菌丶', 'slt_413310822.jpg', '第一次看见这么多评论', '7', '2015-07-23 19:57:59', '0', '0', '413310822', '0');
INSERT INTO `video_comments` VALUES ('87', '10046', '10066', '游戏基', 'hed_GameGay.jpg', '我是脑残粉啊啊啊啊！！！', '4', '2015-07-24 12:42:25', '0', '0', 'GameGay', '0');
INSERT INTO `video_comments` VALUES ('88', '10147', '10000', 'Marshall-fun', 'hed_marshall-fun.jpg', '做的蛮认真的，但是细节处理有待提高，加油', '1', '2015-07-27 02:06:59', '0', '0', 'marshall-fun', '0');
INSERT INTO `video_comments` VALUES ('89', '10147', '10619', '梦晓', 'hed_mengxiao.jpg', '\n多谢', '2', '2015-07-27 11:14:39', '0', '0', 'mengxiao', '88');
INSERT INTO `video_comments` VALUES ('90', '10142', '233', '无聊', 'hed_wuliao.jpg', '卧槽 赞！！！ 提不出任何意见了。', '1', '2015-07-28 10:06:19', '0', '0', 'wuliao', '0');
INSERT INTO `video_comments` VALUES ('91', '10153', '10033', '歼灭小天使', 'slt_605918279.jpg', '好棒的mad~', '1', '2015-07-30 10:14:47', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('92', '10142', '10056', '一识', 'slt_hiroshidan.png', '赞赞啊！', '2', '2015-08-03 20:46:10', '0', '1', 'hiroshidan', '0');
INSERT INTO `video_comments` VALUES ('93', '10142', '10056', '一识', 'slt_hiroshidan.png', '好厉害！好久没看过如此这般的剪辑了~', '3', '2015-08-03 20:46:47', '0', '0', 'hiroshidan', '0');
INSERT INTO `video_comments` VALUES ('94', '10143', '10257', '魔音兔', 'hed_1093826915.jpg', '居然上传的不是2P  上传这个有什么用嘛！', '8', '2015-08-04 00:46:50', '0', '0', '1093826915', '0');
INSERT INTO `video_comments` VALUES ('95', '10046', '10033', '歼灭小天使', 'slt_605918279.jpg', '神作', '5', '2015-08-07 10:50:23', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('96', '10141', '10062', 'Estrella_伊吹', 'hed_10062.jpg', '第一', '1', '2015-08-15 00:27:17', '0', '0', 'Estrella', '0');
INSERT INTO `video_comments` VALUES ('97', '10203', '10720', 'johnnybright', 'hed_10720.jpg', '足迹辛苦了 催稿！', '1', '2015-08-15 00:27:18', '0', '0', 'johnnybright', '0');
INSERT INTO `video_comments` VALUES ('98', '10141', '10449', 'SakuraManKeTsu', 'hed_10449.jpg', '噢噢噢噢哦哦哦！！！！！！', '2', '2015-08-15 00:28:32', '0', '0', 'smkt1998', '0');
INSERT INTO `video_comments` VALUES ('99', '10141', '10081', 'biliの非日常', 'hed_10081.jpg', '好棒', '3', '2015-08-15 00:29:09', '0', '0', 'Biliamv', '0');
INSERT INTO `video_comments` VALUES ('100', '10193', '10062', 'Estrella_伊吹', 'hed_10062.jpg', '继续第一', '1', '2015-08-15 00:30:46', '0', '0', 'Estrella', '0');
INSERT INTO `video_comments` VALUES ('101', '10203', '10033', '歼灭小天使', 'slt_605918279.jpg', 'hahaha,好有趣', '2', '2015-08-15 00:31:39', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('102', '10046', '10283', '鼠辈', 'nohead.png', '说好的信任呢？TvT', '6', '2015-08-15 00:33:11', '0', '0', 'xiaochai', '0');
INSERT INTO `video_comments` VALUES ('103', '10141', '10283', '鼠辈', 'nohead.png', '收下我的膝盖！！！', '4', '2015-08-15 00:37:05', '0', '0', 'xiaochai', '0');
INSERT INTO `video_comments` VALUES ('104', '10188', '10198', '静静的发呆呆呆的笑', 'slt_zhoumengmeng.jpg', 'QAQ', '1', '2015-08-15 00:37:47', '0', '0', 'zhoumengmeng', '0');
INSERT INTO `video_comments` VALUES ('105', '10203', '10055', 'Sung Hsu', 'hed_Sung Hsu.jpg', '二！哥！居！然！交！稿！了！！', '3', '2015-08-15 00:42:23', '0', '0', 'Sung Hsu', '0');
INSERT INTO `video_comments` VALUES ('106', '10203', '10787', 'My Dearest', 'hed_10787.jpg', '我的膝盖请收下', '4', '2015-08-15 00:43:30', '0', '0', '2940995570@qq.com', '0');
INSERT INTO `video_comments` VALUES ('107', '10141', '10049', '泛式', 'nohead.png', '哎呦这个屌', '5', '2015-08-15 00:44:35', '0', '0', 'zqf110gx', '0');
INSERT INTO `video_comments` VALUES ('108', '10141', '10049', '泛式', 'nohead.png', '哎呦这个屌', '6', '2015-08-15 00:44:46', '0', '1', 'zqf110gx', '0');
INSERT INTO `video_comments` VALUES ('109', '10141', '10065', '米库米库米', 'hed_10065.jpg', '这是我的膝盖', '7', '2015-08-15 00:45:10', '0', '0', 'sosmiku', '0');
INSERT INTO `video_comments` VALUES ('110', '10141', '10787', 'My Dearest', 'hed_10787.jpg', '我的膝盖...', '8', '2015-08-15 00:46:13', '0', '0', '2940995570@qq.com', '0');
INSERT INTO `video_comments` VALUES ('111', '10193', '10786', '卖萌的板鞋', 'hed_10786.jpg', '帅爆了！', '2', '2015-08-15 00:46:35', '0', '0', '747491614', '0');
INSERT INTO `video_comments` VALUES ('112', '10193', '10049', '泛式', 'nohead.png', '哎呦这个屌', '3', '2015-08-15 00:47:35', '0', '0', 'zqf110gx', '0');
INSERT INTO `video_comments` VALUES ('113', '10193', '10063', '41days', 'hed_10063.jpg', '补个感谢，感谢千叶草不厌其烦的亲身教♂导，感谢SADP的各位回答我各种低级小白问题，最后文案都是我瞎编的，太中二，轻点吐槽', '4', '2015-08-15 00:49:28', '0', '0', 'lin2525884', '0');
INSERT INTO `video_comments` VALUES ('114', '10193', '10033', '歼灭小天使', 'slt_605918279.jpg', '酷炫', '5', '2015-08-15 00:49:28', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('115', '10141', '10033', '歼灭小天使', 'slt_605918279.jpg', '米醋boom！', '9', '2015-08-15 00:49:53', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('116', '10193', '10063', '41days', 'hed_10063.jpg', '\n', '6', '2015-08-15 00:50:12', '0', '1', 'lin2525884', '113');
INSERT INTO `video_comments` VALUES ('117', '10188', '10065', '米库米库米', 'hed_10065.jpg', '教练，我想给这个投票', '2', '2015-08-15 00:51:38', '0', '0', 'sosmiku', '0');
INSERT INTO `video_comments` VALUES ('118', '10193', '10112', '方丈', 'nohead.png', '帅哭我', '7', '2015-08-15 00:55:55', '0', '0', 'zll19961201', '0');
INSERT INTO `video_comments` VALUES ('119', '10188', '10065', '米库米库米', 'hed_10065.jpg', '哈哈哈哈哈哈哈，笑尿了，本日最佳', '3', '2015-08-15 00:57:22', '0', '0', 'sosmiku', '0');
INSERT INTO `video_comments` VALUES ('120', '10141', '10057', '千叶草_阑小逝', 'nohead.png', '厨的力量无限大', '10', '2015-08-15 00:59:38', '0', '0', '673324880', '0');
INSERT INTO `video_comments` VALUES ('121', '10202', '10055', 'Sung Hsu', 'hed_Sung Hsu.jpg', '足迹你竟然没用拼音！！', '1', '2015-08-15 01:04:49', '0', '0', 'Sung Hsu', '0');
INSERT INTO `video_comments` VALUES ('122', '10188', '10055', 'Sung Hsu', 'hed_Sung Hsu.jpg', '哈哈哈哈哈', '4', '2015-08-15 01:05:29', '0', '0', 'Sung Hsu', '0');
INSERT INTO `video_comments` VALUES ('123', '10193', '10057', '千叶草_阑小逝', 'hed_10057.jpg', '其他的我不知道，我只知道这人肯定没女朋友', '8', '2015-08-15 01:08:07', '0', '0', '673324880', '0');
INSERT INTO `video_comments` VALUES ('124', '10188', '10698', 'watersky', 'hed_10698.png', '红红火火恍恍忽忽', '5', '2015-08-15 01:09:28', '0', '0', '915013406@qq.com', '0');
INSERT INTO `video_comments` VALUES ('125', '10202', '10112', '方丈', 'nohead.png', '帅帅帅', '2', '2015-08-15 01:12:00', '0', '0', 'zll19961201', '0');
INSERT INTO `video_comments` VALUES ('126', '10193', '10703', '音稻', 'hed_10703.jpg', '虽然没看过一拳，但是看起来真的非常帅！', '9', '2015-08-15 01:13:37', '0', '0', '402078245@qq.com', '0');
INSERT INTO `video_comments` VALUES ('127', '10167', '10070', '狂気の比利兄贵', 'hed_laonai45.jpg', '喜欢这只!', '1', '2015-08-15 01:22:46', '0', '0', 'laonai45', '0');
INSERT INTO `video_comments` VALUES ('128', '10141', '10794', '雅儿贝德', 'nohead.png', '简直可怕', '11', '2015-08-15 01:36:33', '0', '0', '936602751', '0');
INSERT INTO `video_comments` VALUES ('129', '10188', '10057', '千叶草_阑小逝', 'hed_10057.jpg', '何厚铧笑岔气', '6', '2015-08-15 01:37:35', '0', '0', '673324880', '0');
INSERT INTO `video_comments` VALUES ('130', '10167', '10795', '不会唱歌の胖次', 'hed_10795.jpg', 'BGM食梦者好评', '2', '2015-08-15 02:48:06', '0', '0', '770944398@qq.com', '0');
INSERT INTO `video_comments` VALUES ('131', '10193', '10795', '不会唱歌の胖次', 'hed_10795.jpg', '一拳超人漫画很赞的', '10', '2015-08-15 02:49:01', '0', '0', '770944398@qq.com', '0');
INSERT INTO `video_comments` VALUES ('132', '10202', '10057', '千叶草_阑小逝', 'hed_10057.jpg', '粉尘你看，被新人干了吧_(:зゝ∠)_', '3', '2015-08-15 03:10:34', '0', '0', '673324880', '0');
INSERT INTO `video_comments` VALUES ('133', '10202', '10692', 'X丶X丶Y', 'nohead.png', '足迹有特殊的剪辑技巧啊！~', '4', '2015-08-15 04:17:53', '0', '0', '1415701982@qq.com', '0');
INSERT INTO `video_comments` VALUES ('134', '10193', '10692', 'X丶X丶Y', 'nohead.png', '肥皂组的新[da]人[chu]很生猛啊 - -！', '11', '2015-08-15 04:22:30', '0', '0', '1415701982@qq.com', '0');
INSERT INTO `video_comments` VALUES ('135', '10141', '10692', 'X丶X丶Y', 'nohead.png', '触我一脸。。【捂脸', '12', '2015-08-15 04:27:19', '0', '0', '1415701982@qq.com', '0');
INSERT INTO `video_comments` VALUES ('136', '10188', '10692', 'X丶X丶Y', 'nohead.png', 'hhhhh、nice~', '7', '2015-08-15 04:35:52', '0', '0', '1415701982@qq.com', '0');
INSERT INTO `video_comments` VALUES ('137', '10203', '10029', 'Bobo', 'hed_10029.jpg', '有里番吧  我没看错吧  我前两天才撸过的', '5', '2015-08-15 04:45:09', '0', '0', '1413177915', '0');
INSERT INTO `video_comments` VALUES ('138', '10141', '10029', 'Bobo', 'hed_10029.jpg', 'LL果然是有魔力的', '13', '2015-08-15 04:51:18', '0', '0', '1413177915', '0');
INSERT INTO `video_comments` VALUES ('139', '10188', '10029', 'Bobo', 'hed_10029.jpg', '本日最佳没跑了', '8', '2015-08-15 05:05:16', '0', '0', '1413177915', '0');
INSERT INTO `video_comments` VALUES ('140', '10193', '10796', '杰浩', 'hed_10796.jpg', '这个好棒', '12', '2015-08-15 06:24:34', '0', '0', '476228656', '0');
INSERT INTO `video_comments` VALUES ('141', '10141', '10796', '杰浩', 'hed_10796.jpg', '总体不错', '14', '2015-08-15 06:50:29', '0', '0', '476228656', '0');
INSERT INTO `video_comments` VALUES ('142', '10193', '10797', 'XredfireAMV', 'hed_10797.JPG', '这不是新人', '13', '2015-08-15 06:53:40', '0', '0', '1005828716', '0');
INSERT INTO `video_comments` VALUES ('143', '10188', '10624', 'ゼロ剪尘', 'slt_zldust.jpg', '23333333333脑洞好大', '9', '2015-08-15 08:25:50', '0', '0', 'zldust', '0');
INSERT INTO `video_comments` VALUES ('144', '10188', '10054', '弃疗的某菌', 'slt_gg754220791.jpg', '果然是装逼的高手，是在下输了', '10', '2015-08-15 08:29:55', '0', '0', 'gg754220791', '0');
INSERT INTO `video_comments` VALUES ('145', '10141', '10624', 'ゼロ剪尘', 'slt_zldust.jpg', '膝盖orz', '15', '2015-08-15 08:34:19', '0', '0', 'zldust', '0');
INSERT INTO `video_comments` VALUES ('146', '10141', '10470', '真红若梦', 'hed_10470.jpg', '赛高', '16', '2015-08-15 08:46:56', '0', '0', 'wuyichao71', '0');
INSERT INTO `video_comments` VALUES ('147', '10203', '10690', '拉蒂司', 'hed_10690.png', '有生之年终于看见这个合作了...', '6', '2015-08-15 08:48:26', '0', '0', 'minagilasty@gmail.co', '0');
INSERT INTO `video_comments` VALUES ('148', '10188', '10690', '拉蒂司', 'hed_10690.png', '哈哈哈哈，脑洞', '11', '2015-08-15 08:50:45', '0', '0', 'minagilasty@gmail.co', '0');
INSERT INTO `video_comments` VALUES ('149', '10202', '10107', '强强YOUNG', 'hed_10107.jpg', '吓尿了... ...♪(＾∀＾●)ﾉ...', '5', '2015-08-15 08:55:08', '0', '0', '强强YOUNG', '0');
INSERT INTO `video_comments` VALUES ('150', '10188', '10470', '真红若梦', 'hed_10470.jpg', '笑死我了', '12', '2015-08-15 09:07:07', '0', '0', 'wuyichao71', '0');
INSERT INTO `video_comments` VALUES ('151', '10193', '10184', '黑雪', 'hed_blacksnow.jpg', '真不是新人', '14', '2015-08-15 09:09:36', '0', '0', 'blacksnow', '0');
INSERT INTO `video_comments` VALUES ('152', '10141', '10184', '黑雪', 'hed_blacksnow.jpg', '赞赞赞，米触教我做mad', '17', '2015-08-15 09:15:11', '0', '0', 'blacksnow', '0');
INSERT INTO `video_comments` VALUES ('153', '10193', '10044', '北辰子', 'hed_beichen.jpg', '赞', '15', '2015-08-15 09:23:12', '0', '0', 'beichen', '0');
INSERT INTO `video_comments` VALUES ('154', '10184', '10044', '北辰子', 'hed_beichen.jpg', '好欢乐 (。・`ω´・)', '1', '2015-08-15 09:26:26', '0', '0', 'beichen', '0');
INSERT INTO `video_comments` VALUES ('155', '10141', '10073', '北之辰', 'nohead.png', '一日看完还是最喜欢这个', '18', '2015-08-15 09:33:19', '0', '0', '295196477', '0');
INSERT INTO `video_comments` VALUES ('156', '10193', '10100', '白夜琳音', 'hed_xzw4323241.jpg', '厉害', '16', '2015-08-15 10:11:32', '0', '0', 'xzw4323241', '0');
INSERT INTO `video_comments` VALUES ('157', '10167', '10062', 'Estrella_伊吹', 'hed_10062.jpg', '好有潜力啊，赞赞赞', '3', '2015-08-15 10:17:03', '0', '0', 'Estrella', '0');
INSERT INTO `video_comments` VALUES ('158', '10141', '10801', 'Desert', 'hed_10801.png', '节奏踩得真屌', '19', '2015-08-15 10:21:21', '0', '0', '916125704', '0');
INSERT INTO `video_comments` VALUES ('159', '10203', '10801', 'Desert', 'hed_10801.png', '熟悉的BGM', '7', '2015-08-15 10:22:47', '0', '0', '916125704', '0');
INSERT INTO `video_comments` VALUES ('160', '10193', '10359', 'Oxun', 'hed_Orangexun.jpg', '好棒', '17', '2015-08-15 10:24:21', '0', '0', 'Orangexun', '0');
INSERT INTO `video_comments` VALUES ('161', '10184', '10100', '白夜琳音', 'hed_xzw4323241.jpg', '挺欢乐的', '2', '2015-08-15 10:25:35', '0', '0', 'xzw4323241', '0');
INSERT INTO `video_comments` VALUES ('162', '10141', '10359', 'Oxun', 'hed_Orangexun.jpg', '好赞·~~', '20', '2015-08-15 10:29:25', '0', '0', 'Orangexun', '0');
INSERT INTO `video_comments` VALUES ('163', '10188', '10801', 'Desert', 'hed_10801.png', '233333', '13', '2015-08-15 10:30:01', '0', '0', '916125704', '0');
INSERT INTO `video_comments` VALUES ('164', '10167', '10801', 'Desert', 'hed_10801.png', 'shirobanko', '4', '2015-08-15 10:32:55', '0', '0', '916125704', '0');
INSERT INTO `video_comments` VALUES ('165', '10141', '10622', '不笑猫', 'hed_10622.jpg', '跪', '21', '2015-08-15 10:34:28', '0', '0', 'stonycat', '0');
INSERT INTO `video_comments` VALUES ('166', '10188', '10184', '黑雪', 'hed_blacksnow.jpg', '哈哈哈哈，果然是装逼高手，是在下输了。', '14', '2015-08-15 10:39:20', '0', '0', 'blacksnow', '0');
INSERT INTO `video_comments` VALUES ('167', '10193', '10385', 'TsukiBito牛牛', 'hed_1.jpg', '真不是人', '18', '2015-08-15 10:45:10', '0', '0', '649539460', '0');
INSERT INTO `video_comments` VALUES ('168', '10184', '10114', '贱撸', 'nohead.png', '欢乐=-=马尾加油！', '3', '2015-08-15 11:59:35', '0', '0', 'de380230970', '0');
INSERT INTO `video_comments` VALUES ('169', '10188', '10718', '才人君', 'hed_ALTCKY.gif', '我是姐姐的骨灰脑残粉~', '15', '2015-08-15 12:06:33', '0', '0', 'ALTCKY', '0');
INSERT INTO `video_comments` VALUES ('170', '10203', '10718', '才人君', 'hed_ALTCKY.gif', '鼠触辛苦啦~', '8', '2015-08-15 12:07:13', '0', '0', 'ALTCKY', '0');
INSERT INTO `video_comments` VALUES ('171', '10202', '10718', '才人君', 'hed_ALTCKY.gif', '票已投~╮(╯▽╰)╭', '6', '2015-08-15 12:09:05', '0', '0', 'ALTCKY', '0');
INSERT INTO `video_comments` VALUES ('172', '10167', '10404', 'AKA冰丽酱', 'nohead.png', '很棒哦~加油', '5', '2015-08-15 12:56:43', '0', '0', 'low88418959', '0');
INSERT INTO `video_comments` VALUES ('173', '10225', '10000', 'Marshall-fun', 'hed_marshall-fun.jpg', '先赞为敬', '1', '2015-08-15 15:21:28', '0', '0', 'marshall-fun', '0');
INSERT INTO `video_comments` VALUES ('174', '10193', '10035', 'Mell', 'slt_527451241@qq.com.jpg', '666', '19', '2015-08-15 15:30:38', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('175', '10141', '10035', 'Mell', 'slt_527451241@qq.com.jpg', '米触大爆炸', '22', '2015-08-15 15:31:14', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('176', '10167', '10808', '晓雯SunshiNe', 'nohead.png', '好棒！！！！！！赞赞赞！！！', '6', '2015-08-15 18:29:59', '0', '0', '178463732', '0');
INSERT INTO `video_comments` VALUES ('177', '10177', '10744', '潇霄apj', 'hed_wxxpjd.jpg', '怎么这里看这么卡呢。\n', '1', '2015-08-15 23:30:59', '0', '0', 'wxxpjd', '0');
INSERT INTO `video_comments` VALUES ('178', '10177', '10744', '潇霄apj', 'hed_wxxpjd.jpg', '技术挺好的，分镜还要斟酌下。', '2', '2015-08-15 23:35:26', '0', '0', 'wxxpjd', '0');
INSERT INTO `video_comments` VALUES ('179', '10198', '10035', 'Mell', 'slt_527451241@qq.com.jpg', '远子', '1', '2015-08-16 00:07:22', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('180', '10198', '10033', '歼灭小天使', 'slt_605918279.jpg', '远子真棒，虽然不萌了~', '2', '2015-08-16 00:07:31', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('181', '10198', '10786', '卖萌的板鞋', 'hed_10786.jpg', '原子弹', '3', '2015-08-16 00:09:33', '0', '0', '747491614', '0');
INSERT INTO `video_comments` VALUES ('182', '10229', '10015', '魅影', 'hed_10015.jpg', '~', '1', '2015-08-16 00:09:46', '0', '0', '364486142@qq.com', '0');
INSERT INTO `video_comments` VALUES ('183', '10199', '10015', '魅影', 'hed_10015.jpg', '~', '1', '2015-08-16 00:09:59', '0', '0', '364486142@qq.com', '0');
INSERT INTO `video_comments` VALUES ('184', '10223', '10786', '卖萌的板鞋', 'hed_10786.jpg', 'es芭比的一楼', '1', '2015-08-16 00:11:00', '0', '0', '747491614', '0');
INSERT INTO `video_comments` VALUES ('185', '10198', '10049', '泛式', 'nohead.png', '极好的', '4', '2015-08-16 00:13:16', '0', '0', 'zqf110gx', '0');
INSERT INTO `video_comments` VALUES ('186', '10199', '10054', '弃疗的某菌', 'slt_gg754220791.jpg', '煞笔sh', '2', '2015-08-16 00:16:21', '0', '0', 'gg754220791', '0');
INSERT INTO `video_comments` VALUES ('187', '10223', '10049', '泛式', 'nohead.png', '唔喔 好男人', '2', '2015-08-16 00:25:36', '0', '0', 'zqf110gx', '0');
INSERT INTO `video_comments` VALUES ('188', '10199', '10035', 'Mell', 'slt_527451241@qq.com.jpg', '赞', '3', '2015-08-16 00:26:30', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('189', '10229', '10055', 'Sung Hsu', 'hed_Sung Hsu.jpg', '大佬就是吊', '2', '2015-08-16 00:31:26', '0', '0', 'Sung Hsu', '0');
INSERT INTO `video_comments` VALUES ('190', '10199', '10055', 'Sung Hsu', 'hed_Sung Hsu.jpg', '\n', '4', '2015-08-16 00:34:54', '0', '0', 'Sung Hsu', '186');
INSERT INTO `video_comments` VALUES ('191', '10199', '10307', 'SaMa_Next2015', 'slt_mayf1234.png', '牛逼', '5', '2015-08-16 00:49:58', '0', '0', 'mayf1234', '0');
INSERT INTO `video_comments` VALUES ('192', '10229', '10057', '千叶草_阑小逝', 'hed_10057.jpg', '哈哈哈哈弃疗你被自己组的人艹了【捂脸', '3', '2015-08-16 00:52:52', '0', '0', '673324880', '0');
INSERT INTO `video_comments` VALUES ('193', '10223', '10057', '千叶草_阑小逝', 'hed_10057.jpg', '噢噢，好男人啊', '3', '2015-08-16 00:58:03', '0', '0', '673324880', '0');
INSERT INTO `video_comments` VALUES ('194', '10198', '10057', '千叶草_阑小逝', 'hed_10057.jpg', '很棒', '5', '2015-08-16 01:06:16', '0', '0', '673324880', '0');
INSERT INTO `video_comments` VALUES ('195', '10199', '10057', '千叶草_阑小逝', 'hed_10057.jpg', '你都用这个BGM了，那你还是没女朋友', '6', '2015-08-16 01:08:34', '0', '0', '673324880', '0');
INSERT INTO `video_comments` VALUES ('196', '10199', '10034', '残磬雪风吹', 'slt_295350609.png', '- =', '7', '2015-08-16 01:09:34', '0', '0', '295350609', '0');
INSERT INTO `video_comments` VALUES ('197', '10229', '10034', '残磬雪风吹', 'slt_295350609.png', '- =', '4', '2015-08-16 01:10:05', '0', '0', '295350609', '0');
INSERT INTO `video_comments` VALUES ('198', '10229', '10788', '枫叶大大', 'hed_10788.png', '超喜欢taylor swift的，简直神还原啊 233 歌词意义也很契合 =w= 超赞的 233', '5', '2015-08-16 01:22:36', '0', '0', '枫叶大大大大', '0');
INSERT INTO `video_comments` VALUES ('199', '10202', '10054', '弃疗的某菌', 'slt_gg754220791.jpg', '漂亮_(:з」∠)_', '7', '2015-08-16 01:22:40', '0', '0', 'gg754220791', '0');
INSERT INTO `video_comments` VALUES ('200', '10150', '10692', 'X丶X丶Y', 'nohead.png', '这个也太触了= =', '1', '2015-08-16 02:41:57', '0', '0', '1415701982@qq.com', '0');
INSERT INTO `video_comments` VALUES ('201', '10199', '10692', 'X丶X丶Y', 'nohead.png', '默默地给跪QAQ', '8', '2015-08-16 02:51:48', '0', '0', '1415701982@qq.com', '0');
INSERT INTO `video_comments` VALUES ('202', '10223', '10470', '真红若梦', 'hed_10470.jpg', '噢噢，好男人啊 ', '4', '2015-08-16 08:40:24', '0', '0', 'wuyichao71', '0');
INSERT INTO `video_comments` VALUES ('203', '10223', '10063', '41days', 'hed_10063.jpg', '好赞\\^O^/，好男人啊(什么梗。。。→_→)', '5', '2015-08-16 08:41:34', '0', '0', 'lin2525884', '0');
INSERT INTO `video_comments` VALUES ('204', '10198', '10063', '41days', 'hed_10063.jpg', '已被艹哭。。。太赞了\\^O^/', '6', '2015-08-16 08:43:06', '0', '0', 'lin2525884', '0');
INSERT INTO `video_comments` VALUES ('205', '10199', '10359', 'Oxun', 'hed_Orangexun.jpg', '好棒~', '9', '2015-08-16 08:57:08', '0', '0', 'Orangexun', '0');
INSERT INTO `video_comments` VALUES ('206', '10150', '10184', '黑雪', 'hed_blacksnow.jpg', '炽老师，教我做mad', '2', '2015-08-16 09:37:10', '0', '0', 'blacksnow', '0');
INSERT INTO `video_comments` VALUES ('207', '10198', '10184', '黑雪', 'hed_blacksnow.jpg', '好赞啊', '7', '2015-08-16 09:38:19', '0', '0', 'blacksnow', '0');
INSERT INTO `video_comments` VALUES ('208', '10199', '10156', '钻石星痕', 'hed_10156.jpg', '这曲子听着好心疼啊', '10', '2015-08-16 09:43:43', '0', '0', 'lzf343', '0');
INSERT INTO `video_comments` VALUES ('209', '10199', '10184', '黑雪', 'hed_blacksnow.jpg', '好赞啊这风格', '11', '2015-08-16 09:53:16', '0', '0', 'blacksnow', '0');
INSERT INTO `video_comments` VALUES ('210', '10150', '10826', 'Nero~Da☆ze！', 'nohead.png', '这个尼玛太触了。。', '3', '2015-08-16 10:08:03', '0', '0', '444124362', '0');
INSERT INTO `video_comments` VALUES ('211', '10150', '10797', 'XredfireAMV', 'hed_10797.JPG', '吃妹妹 太触了', '4', '2015-08-16 11:18:29', '0', '0', '1005828716', '0');
INSERT INTO `video_comments` VALUES ('212', '10198', '10797', 'XredfireAMV', 'hed_10797.JPG', '很喜欢', '8', '2015-08-16 11:23:11', '0', '0', '1005828716', '0');
INSERT INTO `video_comments` VALUES ('213', '10199', '10797', 'XredfireAMV', 'hed_10797.JPG', '开口跪', '12', '2015-08-16 11:25:38', '0', '0', '1005828716', '0');
INSERT INTO `video_comments` VALUES ('214', '10198', '10683', '神痕', 'hed_61e97d3fc2.jpg', '好作品，不多说，一个赞', '9', '2015-08-16 11:41:57', '0', '0', '624853229@qq.com', '0');
INSERT INTO `video_comments` VALUES ('215', '10198', '10056', '一识', 'slt_hiroshidan.png', '支持推荐冷门作品的MAD！', '10', '2015-08-16 12:00:36', '0', '0', 'hiroshidan', '0');
INSERT INTO `video_comments` VALUES ('216', '10235', '10010', 'littledango', 'slt_littledango.jpg', '完稿撒花', '1', '2015-08-16 15:16:44', '0', '0', 'littledango', '0');
INSERT INTO `video_comments` VALUES ('217', '10223', '10184', '黑雪', 'hed_blacksnow.jpg', '好男人', '6', '2015-08-16 15:21:17', '0', '0', 'blacksnow', '0');
INSERT INTO `video_comments` VALUES ('218', '10235', '10825', '你看见我的id了', 'hed_10825.png', '我是好孩子', '2', '2015-08-16 16:49:19', '0', '0', '你看见我的id了', '0');
INSERT INTO `video_comments` VALUES ('219', '10235', '10044', '北辰子', 'hed_beichen.jpg', '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊好棒', '3', '2015-08-16 18:02:00', '0', '0', 'beichen', '0');
INSERT INTO `video_comments` VALUES ('220', '10223', '10833', 'Ajay殿下', 'hed_10833.jpg', '好赞好赞!', '7', '2015-08-17 00:07:55', '0', '0', '501358303@qq.com', '0');
INSERT INTO `video_comments` VALUES ('221', '10233', '10055', 'Sung Hsu', 'hed_Sung Hsu.jpg', '一猜今天就有天使', '1', '2015-08-17 00:09:33', '0', '0', 'Sung Hsu', '0');
INSERT INTO `video_comments` VALUES ('222', '10196', '10790', 'xE2', 'nohead.png', 'GJ :p', '1', '2015-08-17 00:28:53', '0', '0', 'xE21996', '0');
INSERT INTO `video_comments` VALUES ('223', '10235', '10000', 'Marshall-fun', 'hed_marshall-fun.jpg', '果然很赞，跪拜众神', '4', '2015-08-17 01:29:39', '0', '0', 'marshall-fun', '0');
INSERT INTO `video_comments` VALUES ('224', '10235', '10000', 'Marshall-fun', 'hed_marshall-fun.jpg', '风格统一度让我震惊', '5', '2015-08-17 01:33:07', '0', '0', 'marshall-fun', '0');
INSERT INTO `video_comments` VALUES ('225', '10176', '10107', '强强YOUNG', 'hed_10107.jpg', '大片！！', '1', '2015-08-17 07:25:15', '0', '0', '强强YOUNG', '0');
INSERT INTO `video_comments` VALUES ('226', '10176', '10272', 'toni', 'hed_wftoni.jpg', 'FENG CHEN YOU SHI GE LE', '2', '2015-08-17 08:12:26', '0', '0', 'wftoni', '0');
INSERT INTO `video_comments` VALUES ('227', '10196', '10184', '黑雪', 'hed_blacksnow.jpg', '66666，好赞啊', '2', '2015-08-17 08:52:04', '0', '0', 'blacksnow', '0');
INSERT INTO `video_comments` VALUES ('228', '10197', '10184', '黑雪', 'hed_blacksnow.jpg', '我错了，不要打死我', '1', '2015-08-17 08:55:38', '0', '0', 'blacksnow', '0');
INSERT INTO `video_comments` VALUES ('229', '10184', '10837', '小夜追枫', 'nohead.png', 'BGM是啥', '4', '2015-08-17 10:33:50', '0', '0', 'lukun700', '0');
INSERT INTO `video_comments` VALUES ('230', '10196', '10065', '米库米库米', 'hed_10065.jpg', '好燃啊', '3', '2015-08-17 11:38:38', '0', '0', 'sosmiku', '0');
INSERT INTO `video_comments` VALUES ('231', '10196', '10100', '白夜琳音', 'hed_xzw4323241.jpg', '\n阿里嘎多~', '4', '2015-08-17 12:31:51', '0', '0', 'xzw4323241', '222');
INSERT INTO `video_comments` VALUES ('232', '10196', '10100', '白夜琳音', 'hed_xzw4323241.jpg', '\n黑雪老师~', '5', '2015-08-17 12:32:09', '0', '0', 'xzw4323241', '227');
INSERT INTO `video_comments` VALUES ('233', '10196', '10100', '白夜琳音', 'hed_xzw4323241.jpg', '\nmiku你是我偶像啊！（可惜是个变态~）', '6', '2015-08-17 12:32:52', '0', '0', 'xzw4323241', '230');
INSERT INTO `video_comments` VALUES ('234', '10196', '10622', '不笑猫', 'hed_10622.jpg', '跪', '7', '2015-08-17 13:51:51', '0', '0', 'stonycat', '0');
INSERT INTO `video_comments` VALUES ('235', '10176', '10056', '一识', 'slt_hiroshidan.png', '高同步率！', '3', '2015-08-17 16:22:24', '0', '0', 'hiroshidan', '0');
INSERT INTO `video_comments` VALUES ('236', '10235', '10318', '梦盛花火', 'hed_yumelet.png', '不过毕竟是合作 难度分会比独自完成低一些吧', '6', '2015-08-17 17:28:27', '0', '0', 'yumelet', '0');
INSERT INTO `video_comments` VALUES ('237', '10176', '10825', '你看见我的id了', 'hed_10825.png', '原作是什么？', '4', '2015-08-17 18:52:35', '0', '0', '你看见我的id了', '0');
INSERT INTO `video_comments` VALUES ('238', '10196', '10692', 'X丶X丶Y', 'nohead.png', '太棒了、就是开头那里稍有突兀、不就是票吗、给你就是！~【啊对了。。我在视频面前跪一天了、敢问大触、我能起来了吗', '8', '2015-08-17 21:23:38', '0', '0', '1415701982@qq.com', '0');
INSERT INTO `video_comments` VALUES ('239', '10204', '10786', '卖萌的板鞋', 'hed_10786.jpg', '一楼', '1', '2015-08-18 00:19:34', '0', '0', '747491614', '0');
INSERT INTO `video_comments` VALUES ('240', '10163', '10015', '魅影', 'hed_10015.jpg', 'boooooooooobo', '1', '2015-08-18 00:24:58', '0', '0', '364486142@qq.com', '0');
INSERT INTO `video_comments` VALUES ('241', '10213', '10359', 'Oxun', 'hed_Orangexun.jpg', '喜欢这个~~', '1', '2015-08-18 00:33:28', '0', '0', 'Orangexun', '0');
INSERT INTO `video_comments` VALUES ('242', '10163', '10359', 'Oxun', 'hed_Orangexun.jpg', 'boooobobo', '2', '2015-08-18 00:38:21', '0', '0', 'Orangexun', '0');
INSERT INTO `video_comments` VALUES ('243', '10204', '10063', '41days', 'hed_10063.jpg', '赞赞赞\\^O^/，好有感觉', '2', '2015-08-18 01:01:40', '0', '0', 'lin2525884', '0');
INSERT INTO `video_comments` VALUES ('244', '10179', '10688', '梦酱永遠', 'hed_10688.jpg', 'Up共勉_(:з)∠)_', '1', '2015-08-18 01:06:47', '0', '0', '872056351@qq.com', '0');
INSERT INTO `video_comments` VALUES ('245', '10213', '10057', '千叶草_阑小逝', 'hed_10057.jpg', '说实话感情表现的不错', '2', '2015-08-18 01:10:33', '0', '0', '673324880', '0');
INSERT INTO `video_comments` VALUES ('246', '10213', '10035', 'Mell', 'slt_527451241@qq.com.jpg', '赞', '3', '2015-08-18 01:23:01', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('247', '10235', '10035', 'Mell', 'slt_527451241@qq.com.jpg', '太帅了这个', '7', '2015-08-18 01:29:36', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('248', '10196', '10035', 'Mell', 'slt_527451241@qq.com.jpg', '帅气', '9', '2015-08-18 01:34:59', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('249', '10194', '10035', 'Mell', 'slt_527451241@qq.com.jpg', '加油', '1', '2015-08-18 01:51:44', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('250', '10233', '10035', 'Mell', 'slt_527451241@qq.com.jpg', '好看', '2', '2015-08-18 02:06:08', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('251', '10060', '10035', 'Mell', 'slt_527451241@qq.com.jpg', '666', '1', '2015-08-18 02:10:24', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('252', '10179', '10796', '杰浩', 'hed_10796.jpg', '这个不错', '2', '2015-08-18 07:21:19', '0', '0', '476228656', '0');
INSERT INTO `video_comments` VALUES ('253', '10163', '10796', '杰浩', 'hed_10796.jpg', '节奏乱了', '3', '2015-08-18 07:25:27', '0', '0', '476228656', '0');
INSERT INTO `video_comments` VALUES ('254', '10179', '10470', '真红若梦', 'hed_10470.jpg', '梦晓梦晓！', '3', '2015-08-18 09:06:33', '0', '0', 'wuyichao71', '0');
INSERT INTO `video_comments` VALUES ('255', '10219', '10683', '神痕', 'hed_61e97d3fc2.jpg', 'haseo囧大 的作品还是和以前一样有感觉', '1', '2015-08-18 11:04:12', '0', '0', '624853229@qq.com', '0');
INSERT INTO `video_comments` VALUES ('256', '10241', '10359', 'Oxun', 'hed_Orangexun.jpg', '这脑洞_(:3」∠)_', '1', '2015-08-18 11:57:28', '0', '0', 'Orangexun', '0');
INSERT INTO `video_comments` VALUES ('257', '10241', '10122', '☆爱衣酱☆', 'hed_10122.png', '\n询妹_(:зゝ∠)_', '2', '2015-08-18 13:23:47', '0', '0', '466741750', '256');
INSERT INTO `video_comments` VALUES ('258', '10219', '10841', 'SDsWORLD', 'nohead.png', '情感爆棚！！！', '2', '2015-08-18 21:15:34', '0', '0', '1039564636', '0');
INSERT INTO `video_comments` VALUES ('259', '10243', '10010', 'littledango', 'slt_littledango.jpg', '去爱爱吧', '1', '2015-08-18 21:57:09', '0', '0', 'littledango', '0');
INSERT INTO `video_comments` VALUES ('260', '10196', '10359', 'Oxun', 'hed_Orangexun.jpg', '好棒~~(～￣▽￣)～', '10', '2015-08-19 00:03:47', '0', '0', 'Orangexun', '0');
INSERT INTO `video_comments` VALUES ('261', '10207', '10055', 'Sung Hsu', 'hed_Sung Hsu.jpg', '受我一拜', '1', '2015-08-19 00:14:19', '0', '0', 'Sung Hsu', '0');
INSERT INTO `video_comments` VALUES ('262', '10149', '10035', 'Mell', 'slt_527451241@qq.com.jpg', '珣珣珣', '1', '2015-08-19 00:16:15', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('263', '10207', '10359', 'Oxun', 'hed_Orangexun.jpg', '好看！~', '2', '2015-08-19 00:34:59', '0', '0', 'Orangexun', '0');
INSERT INTO `video_comments` VALUES ('264', '10221', '10696', '风间古明地', 'hed_ wp419375036.jpg', '鼠鼠老师敲碗物理坑~当当当', '1', '2015-08-19 00:37:47', '0', '0', ' wp419375036', '0');
INSERT INTO `video_comments` VALUES ('265', '10166', '10359', 'Oxun', 'hed_Orangexun.jpg', '23333这个~~', '1', '2015-08-19 00:51:56', '0', '0', 'Orangexun', '0');
INSERT INTO `video_comments` VALUES ('266', '10149', '10029', 'Bobo', 'hed_10029.jpg', 'xunxunxunxunxun', '2', '2015-08-19 05:50:47', '0', '0', '1413177915', '0');
INSERT INTO `video_comments` VALUES ('267', '10144', '10073', '北之辰', 'nohead.png', '为什么没有声音....', '1', '2015-08-19 09:15:37', '0', '0', '295196477', '0');
INSERT INTO `video_comments` VALUES ('268', '10144', '10770', 'Zera', 'hed_10770.jpg', '没有声音耶', '2', '2015-08-19 11:18:07', '0', '0', '503924052', '0');
INSERT INTO `video_comments` VALUES ('269', '10243', '10385', 'TsukiBito牛牛', 'hed_10385.jpg', '噫', '2', '2015-08-19 11:45:47', '0', '0', '649539460', '0');
INSERT INTO `video_comments` VALUES ('270', '10173', '10856', 'goldwing', 'nohead.png', '下载原档 密码？？？', '1', '2015-08-19 13:38:28', '0', '0', 'goldwing', '0');
INSERT INTO `video_comments` VALUES ('271', '10149', '10100', '白夜琳音', 'hed_xzw4323241.jpg', '挺好的', '3', '2015-08-19 16:42:49', '0', '0', 'xzw4323241', '0');
INSERT INTO `video_comments` VALUES ('272', '10207', '10100', '白夜琳音', 'hed_xzw4323241.jpg', '666', '3', '2015-08-19 16:43:17', '0', '0', 'xzw4323241', '0');
INSERT INTO `video_comments` VALUES ('273', '10221', '10100', '白夜琳音', 'hed_xzw4323241.jpg', '好看', '2', '2015-08-19 16:43:57', '0', '0', 'xzw4323241', '0');
INSERT INTO `video_comments` VALUES ('274', '10166', '10100', '白夜琳音', 'hed_xzw4323241.jpg', '好触', '2', '2015-08-19 16:46:56', '0', '0', 'xzw4323241', '0');
INSERT INTO `video_comments` VALUES ('275', '10207', '10033', '歼灭小天使', 'slt_605918279.jpg', '做的越来越屌了', '4', '2015-08-19 17:01:23', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('276', '10241', '10033', '歼灭小天使', 'slt_605918279.jpg', '脑洞很赞啊，色调再融入点就很棒了', '3', '2015-08-19 17:06:00', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('277', '10166', '10692', 'X丶X丶Y', 'nohead.png', '\n噗、哪有~', '3', '2015-08-19 21:39:52', '0', '0', '1415701982@qq.com', '274');
INSERT INTO `video_comments` VALUES ('278', '10166', '10692', 'X丶X丶Y', 'nohead.png', '\n【笑', '4', '2015-08-19 21:40:01', '0', '0', '1415701982@qq.com', '265');
INSERT INTO `video_comments` VALUES ('279', '10207', '10692', 'X丶X丶Y', 'nohead.png', '给蠢球先跪一波~', '5', '2015-08-19 21:41:41', '0', '0', '1415701982@qq.com', '0');
INSERT INTO `video_comments` VALUES ('280', '10144', '10044', '北辰子', 'hed_beichen.jpg', '....现在有声音了..对不起，把视频传错了，家里网还改不了，所以又拜托了fun大，以后一定注意。最后再谢谢fun大...\n', '3', '2015-08-20 00:32:42', '0', '0', 'beichen', '0');
INSERT INTO `video_comments` VALUES ('281', '10217', '10870', '牧濑丶紅莉栖', 'hed_10870.jpg', 'BGM是什么啊！\n', '1', '2015-08-20 10:50:47', '0', '0', '1790962425', '0');
INSERT INTO `video_comments` VALUES ('282', '10185', '10870', '牧濑丶紅莉栖', 'hed_10870.jpg', '赞一个！！开头BGM 是鲁鲁修里的！', '1', '2015-08-20 10:56:14', '0', '0', '1790962425', '0');
INSERT INTO `video_comments` VALUES ('283', '10243', '10101', 'Chitanda·Eru', 'hed_10101.jpg', '处男……', '3', '2015-08-20 13:23:35', '0', '0', 'Chitanda·Eru', '0');
INSERT INTO `video_comments` VALUES ('284', '10217', '10341', 'Babyhellface', 'slt_951931778@qq.com.png', '吉田亚纪子-泪的告白\n\n', '2', '2015-08-20 16:33:06', '0', '0', '951931778@qq.com', '281');
INSERT INTO `video_comments` VALUES ('285', '10214', '10841', 'SDsWORLD', 'nohead.png', '大触又开始装渣了', '1', '2015-08-20 17:32:56', '0', '0', '1039564636', '0');
INSERT INTO `video_comments` VALUES ('286', '10214', '10841', 'SDsWORLD', 'nohead.png', '虽然不能评分，但我还是觉得这是今日看得最舒服的一个作品，万万没想到转场还可以这么玩', '2', '2015-08-20 17:34:42', '0', '0', '1039564636', '0');
INSERT INTO `video_comments` VALUES ('287', '10149', '10033', '歼灭小天使', 'slt_605918279.jpg', '毕竟珣妹', '4', '2015-08-20 21:38:13', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('288', '10211', '10081', 'biliの非日常', 'hed_10081.jpg', '交稿的小扶她', '1', '2015-08-20 23:59:32', '0', '0', 'Biliamv', '0');
INSERT INTO `video_comments` VALUES ('289', '10175', '10359', 'Oxun', 'hed_Orangexun.jpg', '哇哦~', '1', '2015-08-21 00:02:10', '0', '0', 'Orangexun', '0');
INSERT INTO `video_comments` VALUES ('290', '10178', '10062', 'Estrella_伊吹', 'hed_10062.jpg', '这名字简直赞', '1', '2015-08-21 00:10:03', '0', '0', 'Estrella', '0');
INSERT INTO `video_comments` VALUES ('291', '10178', '10055', 'Sung Hsu', 'hed_Sung Hsu.jpg', '光哥这个闪瞎我了', '2', '2015-08-21 00:13:30', '0', '0', 'Sung Hsu', '0');
INSERT INTO `video_comments` VALUES ('292', '10175', '10015', '魅影', 'hed_10015.jpg', '和没有卵用的鸟大', '2', '2015-08-21 00:45:52', '0', '0', '364486142@qq.com', '0');
INSERT INTO `video_comments` VALUES ('293', '10175', '10622', '不笑猫', 'hed_10622.jpg', '帅', '3', '2015-08-21 00:54:18', '0', '0', 'stonycat', '0');
INSERT INTO `video_comments` VALUES ('294', '10175', '10033', '歼灭小天使', 'slt_605918279.jpg', '最强核弹boom', '4', '2015-08-21 01:14:40', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('295', '10175', '18013', '祈妹子一生推', 'hed_18013.jpg', 'MK大表哥！！！！', '5', '2015-08-21 02:28:33', '0', '0', '937591402', '0');
INSERT INTO `video_comments` VALUES ('296', '10216', '18013', '祈妹子一生推', 'hed_18013.jpg', 'RA魔神！！！！niconiconi~~~~~~~~~~~~~~~~~', '1', '2015-08-21 02:32:28', '0', '0', '937591402', '0');
INSERT INTO `video_comments` VALUES ('297', '10175', '10184', '黑雪', 'hed_blacksnow.jpg', '赞赞赞，MK卡密太厉害', '6', '2015-08-21 08:12:51', '0', '0', 'blacksnow', '0');
INSERT INTO `video_comments` VALUES ('298', '10175', '10029', 'Bobo', 'hed_10029.jpg', '和没有卵用的鸟大 ', '7', '2015-08-21 08:21:19', '0', '0', '1413177915', '0');
INSERT INTO `video_comments` VALUES ('299', '10210', '10029', 'Bobo', 'hed_10029.jpg', '中间是把自己的头像p上去了  hhhhhhh', '1', '2015-08-21 08:28:12', '0', '0', '1413177915', '0');
INSERT INTO `video_comments` VALUES ('300', '10216', '10029', 'Bobo', 'hed_10029.jpg', '你要问我兹磁不兹磁 我当然是兹磁的  但是RA这么玩就不怕被长者抓去续命 [doge]', '2', '2015-08-21 08:37:35', '0', '0', '1413177915', '0');
INSERT INTO `video_comments` VALUES ('301', '10175', '18018', 'shuuwau', 'hed_18018.jpg', '来看核弹', '8', '2015-08-21 11:49:58', '0', '0', 'shuuwau', '0');
INSERT INTO `video_comments` VALUES ('302', '10175', '10065', '米库米库米', 'hed_10065.jpg', 'MK江湖我大哥！', '9', '2015-08-21 12:08:04', '0', '0', 'sosmiku', '0');
INSERT INTO `video_comments` VALUES ('303', '10175', '10795', '不会唱歌の胖次', 'hed_10795.jpg', '结局好棒', '10', '2015-08-21 13:56:13', '0', '0', '770944398@qq.com', '0');
INSERT INTO `video_comments` VALUES ('304', '10175', '10096', 'GwRosaE', 'nohead.png', '没有卵用的鸟大', '11', '2015-08-21 14:33:03', '0', '0', 'gwrosae', '0');
INSERT INTO `video_comments` VALUES ('305', '10200', '10070', '狂気の比利兄贵', 'hed_laonai45.jpg', '极好的 1分25秒左右亮点', '1', '2015-08-22 02:21:10', '0', '0', 'laonai45', '0');
INSERT INTO `video_comments` VALUES ('306', '10185', '18024', '魔法の字典君', 'hed_18024.jpg', '军然没有人 赞一个\n', '2', '2015-08-22 11:08:49', '0', '0', '944026506@qq.com', '0');
INSERT INTO `video_comments` VALUES ('307', '10007', '18024', '魔法の字典君', 'hed_18024.jpg', 'b站上这个也很火啊\n', '2', '2015-08-22 11:17:55', '0', '0', '944026506@qq.com', '0');
INSERT INTO `video_comments` VALUES ('308', '10215', '10062', 'Estrella_伊吹', 'hed_10062.jpg', '好棒，这个逼我给10分', '1', '2015-08-23 00:11:04', '0', '0', 'Estrella', '0');
INSERT INTO `video_comments` VALUES ('309', '10012', '18030', 'Grace', 'hed_18030.jpg', '=.=', '1', '2015-08-23 12:45:39', '0', '0', 'mankeyang', '0');
INSERT INTO `video_comments` VALUES ('310', '10215', '10272', 'toni', 'hed_wftoni.jpg', '这只很棒', '2', '2015-08-23 14:53:37', '0', '0', 'wftoni', '0');
INSERT INTO `video_comments` VALUES ('311', '10180', '10055', 'Sung Hsu', 'hed_Sung Hsu.jpg', '我只能脱下裤子以示敬意', '1', '2015-08-23 15:36:39', '0', '0', 'Sung Hsu', '0');
INSERT INTO `video_comments` VALUES ('312', '10234', '10033', '歼灭小天使', 'slt_605918279.jpg', '好棒的感觉', '1', '2015-08-24 00:43:24', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('313', '10234', '10033', '歼灭小天使', 'slt_605918279.jpg', '做完就好了', '2', '2015-08-24 00:45:16', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('314', '10254', '18030', 'Grace', 'hed_18030.jpg', '有人记得我吗、记得我就支持哈吧！- -', '1', '2015-08-24 02:17:02', '0', '0', 'mankeyang', '0');
INSERT INTO `video_comments` VALUES ('315', '10180', '10107', '强强YOUNG', 'hed_10107.jpg', '可啪(≧∀≦)ゞ', '2', '2015-08-24 07:30:26', '0', '0', '强强YOUNG', '0');
INSERT INTO `video_comments` VALUES ('316', '10171', '10272', 'toni', 'hed_wftoni.jpg', '新人都好可怕', '1', '2015-08-24 12:32:45', '0', '0', 'wftoni', '0');
INSERT INTO `video_comments` VALUES ('317', '10257', '10096', 'GwRosaE', 'nohead.png', '看到有人做希骑还有点小激动来着...看完确实有点失望...', '1', '2015-08-24 14:11:21', '0', '0', 'gwrosae', '0');
INSERT INTO `video_comments` VALUES ('318', '10234', '10096', 'GwRosaE', 'nohead.png', '停得有点突兀....果然是没做完吧...', '3', '2015-08-24 14:12:41', '0', '0', 'gwrosae', '0');
INSERT INTO `video_comments` VALUES ('319', '10171', '10096', 'GwRosaE', 'nohead.png', '黑雪大好流弊，啪啪啪', '2', '2015-08-24 14:43:53', '0', '0', 'gwrosae', '0');
INSERT INTO `video_comments` VALUES ('320', '10171', '10184', '黑雪', 'hed_blacksnow.jpg', 'Toni菊苣\n', '3', '2015-08-24 22:51:40', '0', '0', 'blacksnow', '316');
INSERT INTO `video_comments` VALUES ('321', '10256', '10055', 'Sung Hsu', 'hed_Sung Hsu.jpg', '完结散花，啪啪啪啪', '1', '2015-08-25 00:13:48', '0', '0', 'Sung Hsu', '0');
INSERT INTO `video_comments` VALUES ('322', '10261', '10096', 'GwRosaE', 'nohead.png', '_(:3」∠)_风尘大也参加了', '1', '2015-08-25 00:39:42', '0', '0', 'gwrosae', '0');
INSERT INTO `video_comments` VALUES ('323', '10209', '10035', 'Mell', 'hed_10035.jpg', '我也喜欢妮姆芙', '1', '2015-08-25 01:07:51', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('324', '10209', '10035', 'Mell', 'hed_10035.jpg', '我也喜欢妮姆芙', '2', '2015-08-25 01:07:51', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('325', '10224', '10100', '白夜琳音', 'hed_xzw4323241.jpg', '感觉很用心 给十分', '1', '2015-08-25 01:38:53', '0', '0', 'xzw4323241', '0');
INSERT INTO `video_comments` VALUES ('326', '10256', '10096', 'GwRosaE', 'nohead.png', '已经  是  以及吧...？', '2', '2015-08-25 01:40:25', '0', '0', 'gwrosae', '0');
INSERT INTO `video_comments` VALUES ('327', '10250', '10470', '真红若梦', 'hed_10470.jpg', '噢噢噢噢！五彩斑斓的世界', '1', '2015-08-25 09:40:31', '0', '0', 'wuyichao71', '0');
INSERT INTO `video_comments` VALUES ('328', '10224', '10016', 'MK菌丶', 'slt_413310822.jpg', '好看', '2', '2015-08-25 11:45:54', '0', '0', '413310822', '0');
INSERT INTO `video_comments` VALUES ('329', '10221', '10779', '初生小麦', 'hed_10779.png', '明明是化学- -哪来的物理', '3', '2015-08-25 15:17:21', '0', '0', '980640513', '0');
INSERT INTO `video_comments` VALUES ('330', '10263', '18040', 'Curtainの落幕', 'hed_18040.png', '渣纯碱而已~~各位大大 手下留情~~随便看看就行了>_<', '1', '2015-08-25 23:19:00', '0', '0', '15670631420', '0');
INSERT INTO `video_comments` VALUES ('331', '10239', '10035', 'Mell', 'hed_10035.jpg', '屌', '1', '2015-08-26 00:04:02', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('332', '10262', '10062', 'Estrella_伊吹', 'hed_10062.jpg', '10分10分！！', '1', '2015-08-26 00:08:35', '0', '0', 'Estrella', '0');
INSERT INTO `video_comments` VALUES ('333', '10239', '10100', '白夜琳音', 'hed_xzw4323241.jpg', '天师我来了', '2', '2015-08-26 00:11:56', '0', '0', 'xzw4323241', '0');
INSERT INTO `video_comments` VALUES ('334', '10262', '10100', '白夜琳音', 'hed_xzw4323241.jpg', '姥爷我来了', '2', '2015-08-26 00:12:08', '0', '0', 'xzw4323241', '0');
INSERT INTO `video_comments` VALUES ('335', '10239', '10062', 'Estrella_伊吹', 'hed_10062.jpg', '可怕', '3', '2015-08-26 00:14:16', '0', '0', 'Estrella', '0');
INSERT INTO `video_comments` VALUES ('336', '10262', '10680', null, 'hed_10680.png', '超棒！！！！', '3', '2015-08-26 00:15:21', '0', '0', null, '0');
INSERT INTO `video_comments` VALUES ('337', '10262', '10035', 'Mell', 'hed_10035.jpg', '超屌', '4', '2015-08-26 00:23:28', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('338', '10170', '10100', '白夜琳音', 'hed_xzw4323241.jpg', '最终日都是核弹', '1', '2015-08-26 00:27:44', '0', '0', 'xzw4323241', '0');
INSERT INTO `video_comments` VALUES ('339', '10239', '10790', 'xE2', 'nohead.png', 'GJ:P', '4', '2015-08-26 00:37:28', '0', '0', 'xE21996', '0');
INSERT INTO `video_comments` VALUES ('340', '10262', '10096', 'GwRosaE', 'nohead.png', '泛姥爷的3D和木偶还是辣么屌（当然别的也很屌）', '5', '2015-08-26 00:39:37', '0', '0', 'gwrosae', '0');
INSERT INTO `video_comments` VALUES ('341', '10259', '10113', '金闪闪', 'slt_hnscby6.jpg', '最强M子', '1', '2015-08-26 00:42:59', '0', '0', 'hnscby6', '0');
INSERT INTO `video_comments` VALUES ('342', '10259', '18043', 'sms43', 'nohead.png', '最强M子', '2', '2015-08-26 00:45:00', '0', '1', 'sundion', '0');
INSERT INTO `video_comments` VALUES ('343', '10262', '18043', 'sms43', 'hed_18043.jpeg', '屌的飞起', '6', '2015-08-26 00:45:59', '0', '0', 'sundion', '0');
INSERT INTO `video_comments` VALUES ('344', '10259', '18043', 'sms43', 'hed_18043.jpeg', '最强M子', '3', '2015-08-26 00:46:25', '0', '0', 'sundion', '0');
INSERT INTO `video_comments` VALUES ('345', '10259', '10027', 'mooncake', 'hed_10027.jpg', '好看', '4', '2015-08-26 00:46:56', '0', '0', 'mooncake', '0');
INSERT INTO `video_comments` VALUES ('346', '10206', '10027', 'mooncake', 'hed_10027.jpg', '加油w', '1', '2015-08-26 00:50:47', '0', '0', 'mooncake', '0');
INSERT INTO `video_comments` VALUES ('347', '10259', '10057', '千叶草_阑小逝', 'hed_10057.jpg', '这个很喜欢', '5', '2015-08-26 00:52:12', '0', '0', '673324880', '0');
INSERT INTO `video_comments` VALUES ('348', '10262', '10040', '冉冉xm', 'hed_10040.jpg', '好看~好棒！', '7', '2015-08-26 01:05:01', '0', '0', 'ranranxm', '0');
INSERT INTO `video_comments` VALUES ('349', '10256', '10696', '风间古明地', 'hed_ wp419375036.jpg', '明年见=w=', '3', '2015-08-26 01:29:55', '0', '0', ' wp419375036', '0');
INSERT INTO `video_comments` VALUES ('350', '10239', '10696', '风间古明地', 'hed_ wp419375036.jpg', '跪了。。。Orz', '5', '2015-08-26 01:33:27', '0', '0', ' wp419375036', '0');
INSERT INTO `video_comments` VALUES ('351', '10262', '10696', '风间古明地', 'hed_ wp419375036.jpg', '棒的飞起！_(:з」∠)_', '8', '2015-08-26 01:35:37', '0', '0', ' wp419375036', '0');
INSERT INTO `video_comments` VALUES ('352', '10239', '10049', '泛式', 'hed_10049.jpg', '拒绝', '6', '2015-08-26 01:44:22', '0', '0', 'zqf110gx', '0');
INSERT INTO `video_comments` VALUES ('353', '10259', '10049', '泛式', 'hed_10049.jpg', 'so屌。。。真的是我认识的M子吗、。。', '6', '2015-08-26 01:44:45', '0', '0', 'zqf110gx', '0');
INSERT INTO `video_comments` VALUES ('354', '10259', '10033', '歼灭小天使', 'slt_605918279.jpg', 'm好棒~', '7', '2015-08-26 02:18:59', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('355', '10170', '10096', 'GwRosaE', 'nohead.png', '好怀念，小学时看过实体书。虽然不完整', '2', '2015-08-26 02:19:15', '0', '0', 'gwrosae', '0');
INSERT INTO `video_comments` VALUES ('356', '10239', '10096', 'GwRosaE', 'nohead.png', '玛德今天的怎么都这么吊', '7', '2015-08-26 02:21:04', '0', '0', 'gwrosae', '0');
INSERT INTO `video_comments` VALUES ('357', '10262', '10033', '歼灭小天使', 'slt_605918279.jpg', '看了好几遍真屌', '9', '2015-08-26 02:28:30', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('358', '10239', '10033', '歼灭小天使', 'slt_605918279.jpg', '屌屌屌', '8', '2015-08-26 02:29:26', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('359', '10239', '10070', '狂気の比利兄贵', 'hed_laonai45.jpg', '好看', '9', '2015-08-26 02:31:00', '0', '0', 'laonai45', '0');
INSERT INTO `video_comments` VALUES ('360', '10162', '10033', '歼灭小天使', 'slt_605918279.jpg', '节操的一楼我要了~', '1', '2015-08-26 02:33:55', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('361', '10170', '10033', '歼灭小天使', 'slt_605918279.jpg', 'funny~', '3', '2015-08-26 02:35:30', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('362', '10262', '10184', '黑雪', 'hed_blacksnow.jpg', '赞得飞起来，能被泛泛吊打真是太好了', '10', '2015-08-26 09:36:39', '0', '0', 'blacksnow', '0');
INSERT INTO `video_comments` VALUES ('363', '10221', '10718', '才人君', 'hed_ALTCKY.gif', '之前换地方没网，这么晚才来，跪拜鼠触，跪舔脚趾~', '4', '2015-08-26 09:49:25', '0', '0', 'ALTCKY', '0');
INSERT INTO `video_comments` VALUES ('364', '10170', '10399', 'zy10112029', 'slt_zy10112029.jpg', '喜欢这个feel', '4', '2015-08-26 12:23:32', '0', '0', 'zy10112029', '0');
INSERT INTO `video_comments` VALUES ('365', '10239', '18048', '芥川美羽', 'nohead.png', 'BGM大好评，几乎要被带入坑了QAQ，好吸引人的剧情（词穷）', '10', '2015-08-26 14:02:30', '0', '0', '1051172868', '0');
INSERT INTO `video_comments` VALUES ('366', '10263', '18040', 'Curtainの落幕', 'hed_18040.png', '= =我就想帮 朋友 打个分 而已~~无视掉好了0.0~~', '2', '2015-08-26 17:08:09', '0', '0', '15670631420', '0');
INSERT INTO `video_comments` VALUES ('367', '10262', '10795', '不会唱歌の胖次', 'hed_10795.jpg', '好棒纳', '11', '2015-08-26 20:34:07', '0', '0', '770944398@qq.com', '0');
INSERT INTO `video_comments` VALUES ('368', '10265', '10016', 'MK菌丶', 'slt_413310822.jpg', '好喜欢这个', '1', '2015-08-27 00:11:43', '0', '0', '413310822', '0');
INSERT INTO `video_comments` VALUES ('369', '10255', '10035', 'Mell', 'hed_10035.jpg', '真红老师一楼我的', '1', '2015-08-27 00:13:05', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('370', '10266', '10035', 'Mell', 'hed_10035.jpg', '一楼我的', '1', '2015-08-27 00:13:14', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('371', '10265', '10035', 'Mell', 'hed_10035.jpg', '赞啊', '2', '2015-08-27 00:13:30', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('372', '10186', '10035', 'Mell', 'hed_10035.jpg', '米库屌屌屌', '1', '2015-08-27 00:13:41', '0', '0', '527451241@qq.com', '0');
INSERT INTO `video_comments` VALUES ('373', '10268', '10135', 'HACKERMOUSE', 'hed_294781347.jpg', 'ARU哥我是你的粉丝！！！', '1', '2015-08-27 00:14:58', '0', '0', '294781347', '0');
INSERT INTO `video_comments` VALUES ('374', '10265', '10113', '金闪闪', 'slt_hnscby6.jpg', '赞', '3', '2015-08-27 00:15:16', '0', '0', 'hnscby6', '0');
INSERT INTO `video_comments` VALUES ('375', '10186', '10016', 'MK菌丶', 'slt_413310822.jpg', '米库大佬就是叼', '2', '2015-08-27 00:19:45', '0', '0', '413310822', '0');
INSERT INTO `video_comments` VALUES ('376', '10266', '10033', '歼灭小天使', 'slt_605918279.jpg', '哇~', '2', '2015-08-27 01:57:46', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('377', '10186', '10096', 'GwRosaE', 'nohead.png', '米库大佬为何如此屌', '3', '2015-08-27 01:58:01', '0', '0', 'gwrosae', '0');
INSERT INTO `video_comments` VALUES ('378', '10255', '10033', '歼灭小天使', 'slt_605918279.jpg', '这个air好有趣！', '2', '2015-08-27 02:00:17', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('379', '10265', '10033', '歼灭小天使', 'slt_605918279.jpg', '赞', '4', '2015-08-27 02:02:06', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('380', '10186', '10033', '歼灭小天使', 'slt_605918279.jpg', '卧槽好屌的形状层。。', '4', '2015-08-27 02:04:14', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('381', '10265', '10049', '泛式', 'hed_10049.jpg', '哎呦好喜欢aru姐姐这个文字动画', '5', '2015-08-27 02:20:50', '0', '0', 'zqf110gx', '0');
INSERT INTO `video_comments` VALUES ('382', '10266', '10049', '泛式', 'hed_10049.jpg', '扑面而来的“好看”气息', '3', '2015-08-27 02:35:14', '0', '0', 'zqf110gx', '0');
INSERT INTO `video_comments` VALUES ('383', '10265', '10056', '一识', 'slt_hiroshidan.png', '虽然原作和这个MAD都意味不明……但是逼格够高就行了！', '6', '2015-08-27 10:42:39', '0', '0', 'hiroshidan', '0');
INSERT INTO `video_comments` VALUES ('384', '10186', '10385', 'TsukiBito牛牛', 'hed_10385.jpg', '辣鸡', '5', '2015-08-27 11:52:24', '0', '0', '649539460', '0');
INSERT INTO `video_comments` VALUES ('385', '10266', '10385', 'TsukiBito牛牛', 'hed_10385.jpg', '朝奈都没怎么发功！', '4', '2015-08-27 11:55:29', '0', '0', '649539460', '0');
INSERT INTO `video_comments` VALUES ('386', '10186', '10065', '米库米库米', 'hed_10065.jpg', '闭嘴啦，辣鸡牛\n', '6', '2015-08-27 17:37:11', '0', '0', 'sosmiku', '384');
INSERT INTO `video_comments` VALUES ('387', '10255', '10027', 'mooncake', 'hed_10027.jpg', '来看真红老师！', '3', '2015-08-27 19:58:32', '0', '0', 'mooncake', '0');
INSERT INTO `video_comments` VALUES ('388', '10019', '18049', 'echove', 'hed_18049.jpg', '太刁了，这真的不是军魔吗', '3', '2015-08-27 22:44:52', '0', '0', 'fax419', '0');
INSERT INTO `video_comments` VALUES ('389', '10165', '10113', '金闪闪', 'slt_hnscby6.jpg', '赞', '1', '2015-08-28 00:44:11', '0', '0', 'hnscby6', '0');
INSERT INTO `video_comments` VALUES ('390', '10270', '10062', 'Estrella_伊吹', 'hed_10062.jpg', '曹格男爵！', '1', '2015-08-28 00:44:46', '0', '0', 'Estrella', '0');
INSERT INTO `video_comments` VALUES ('391', '10270', '10027', 'mooncake', 'hed_10027.jpg', '都不留个special thanks给我，真是无耻小曹', '2', '2015-08-28 01:30:20', '0', '0', 'mooncake', '0');
INSERT INTO `video_comments` VALUES ('392', '10174', '10027', 'mooncake', 'hed_10027.jpg', '小伤姐姐加油！', '1', '2015-08-28 01:39:58', '0', '0', 'mooncake', '0');
INSERT INTO `video_comments` VALUES ('393', '10253', '10033', '歼灭小天使', 'slt_605918279.jpg', '喜欢这个！', '1', '2015-08-28 02:17:44', '0', '0', '605918279', '0');
INSERT INTO `video_comments` VALUES ('394', '10165', '10096', 'GwRosaE', 'nohead.png', '章鱼大记得你的蝴蝶教程！', '2', '2015-08-28 02:21:10', '0', '0', 'gwrosae', '0');
INSERT INTO `video_comments` VALUES ('395', '10253', '10096', 'GwRosaE', 'nohead.png', '卧槽，Pluvia！', '2', '2015-08-28 02:26:54', '0', '0', 'gwrosae', '0');
INSERT INTO `video_comments` VALUES ('396', '10253', '10385', 'TsukiBito牛牛', 'hed_10385.jpg', '嗷嗷嗷', '3', '2015-08-28 09:51:22', '0', '0', '649539460', '0');
INSERT INTO `video_comments` VALUES ('397', '10174', '18048', '芥川美羽', 'nohead.png', '这个漫画有中文版吗QAQ好想看', '2', '2015-08-28 11:34:04', '0', '0', '1051172868', '0');
INSERT INTO `video_comments` VALUES ('398', '10265', '10027', 'mooncake', 'hed_10027.jpg', 'Aru姐姐这个有点魔幻啊', '7', '2015-08-28 17:10:09', '0', '0', 'mooncake', '0');
INSERT INTO `video_comments` VALUES ('399', '10266', '10027', 'mooncake', 'hed_10027.jpg', '朝奈！', '5', '2015-08-28 17:13:47', '0', '0', 'mooncake', '0');
INSERT INTO `video_comments` VALUES ('400', '10253', '10027', 'mooncake', 'hed_10027.jpg', '噗噜老师', '4', '2015-08-28 17:16:50', '0', '0', 'mooncake', '0');
INSERT INTO `video_comments` VALUES ('401', '10271', '10062', 'Estrella_伊吹', 'hed_10062.jpg', '哇哇哇', '1', '2015-08-29 00:56:11', '0', '0', 'Estrella', '0');
INSERT INTO `video_comments` VALUES ('402', '10271', '10000', 'Marshall-fun', 'hed_marshall-fun.jpg', '第一次看猫老师的片子，猫老师请收下我的膝盖', '2', '2015-08-29 00:56:16', '0', '0', 'marshall-fun', '0');
INSERT INTO `video_comments` VALUES ('405', '10013', '5000', '无聊你妹', 'hed_5000.png', 't', '1', '2015-08-31 11:18:41', '0', '0', 'wuliao', '0');
INSERT INTO `video_comments` VALUES ('406', '10013', '5000', '无聊你妹', 'hed_5000.png', 'b', '2', '2015-08-31 11:48:41', '0', '0', 'wuliao', '0');
INSERT INTO `video_comments` VALUES ('407', '10013', '5000', '无聊你妹', 'hed_5000.png', 'gg', '3', '2015-08-31 11:56:11', '0', '1', 'wuliao', '0');
INSERT INTO `video_comments` VALUES ('408', '10013', '5000', '无聊你妹', 'hed_5000.png', 'ggg', '4', '2015-08-31 12:00:12', '0', '0', 'wuliao', '0');
INSERT INTO `video_comments` VALUES ('409', '10013', '5000', '无聊你妹', 'hed_5000.png', 'gggg', '5', '2015-08-31 12:02:33', '0', '0', 'wuliao', '0');
INSERT INTO `video_comments` VALUES ('410', '10013', '5000', '无聊你妹', 'hed_5000.png', 'ggggg', '6', '2015-08-31 13:45:22', '0', '0', 'wuliao', '0');
INSERT INTO `video_comments` VALUES ('411', '10013', '5000', '无聊你妹', 'hed_5000.png', 'gggggg', '7', '2015-08-31 13:55:17', '0', '1', 'wuliao', '0');
INSERT INTO `video_comments` VALUES ('412', '10013', '5000', '无聊你妹', 'hed_5000.png', 'gg', '8', '2015-08-31 14:09:03', '0', '0', 'wuliao', '0');
INSERT INTO `video_comments` VALUES ('413', '10013', '5000', '无聊你妹', 'hed_5000.png', 'ggg', '9', '2015-08-31 14:15:31', '0', '0', 'wuliao', '0');
INSERT INTO `video_comments` VALUES ('414', '10013', '5000', '无聊你妹', 'hed_5000.png', 'gggg', '10', '2015-08-31 14:15:48', '0', '1', 'wuliao', '0');
INSERT INTO `video_comments` VALUES ('415', '10013', '5000', '无聊你妹', 'hed_5000.png', 'g', '11', '2015-08-31 15:21:42', '0', '0', 'wuliao', '0');
INSERT INTO `video_comments` VALUES ('416', '10013', '5000', '无聊你妹', 'hed_5000.png', 'gg', '12', '2015-09-01 11:57:21', '0', '0', 'wuliao', '0');

-- ----------------------------
-- Table structure for video_edit
-- ----------------------------
DROP TABLE IF EXISTS `video_edit`;
CREATE TABLE `video_edit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `zuozhe` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pingfen` int(255) DEFAULT '0' COMMENT '视频的评分',
  `BGM` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `beizhu` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `jieshao` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `biaoqian` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mima` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `fengmian` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `xiazai` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `xiazaipass` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pfcs` int(255) DEFAULT '0',
  `pjf` varchar(255) COLLATE utf8_bin DEFAULT '0.0',
  `djnum` int(255) NOT NULL DEFAULT '0',
  `remark` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `state` tinyint(1) DEFAULT '0',
  `video_path` varchar(255) COLLATE utf8_bin DEFAULT '',
  `malv` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `is_original` tinyint(1) DEFAULT '1',
  `wg_time` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `comments_num` int(11) DEFAULT '0',
  `click` int(10) DEFAULT '0' COMMENT '点击',
  `is_del` int(1) DEFAULT '0' COMMENT '0没有删除1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10096 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of video_edit
-- ----------------------------
INSERT INTO `video_edit` VALUES ('10095', '10651', '测试投稿', null, '无聊', '0', '233', null, '测试头高高高', '2015-06-29 16:40:58', '原创 / AMV / 动作 / 惊悚 / 故事 / 人物', null, 'id_10651_num_0.jpg', 'http://localhost/index.php/UpVideo', '', '0', '0.0', '0', null, '0', 'id_10651_num_0.flv', null, '1', '2015-06-03', '0', '0', '0');

-- ----------------------------
-- Table structure for video_score
-- ----------------------------
DROP TABLE IF EXISTS `video_score`;
CREATE TABLE `video_score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `score` decimal(3,1) NOT NULL DEFAULT '0.0',
  `time` datetime DEFAULT NULL,
  `num` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=306 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of video_score
-- ----------------------------
INSERT INTO `video_score` VALUES ('21', '10000', '10006', 'marshall-fun', '9.4', null, '5');
INSERT INTO `video_score` VALUES ('22', '10010', '10006', 'littledango', '9.4', null, '1');
INSERT INTO `video_score` VALUES ('23', '10010', '10007', 'littledango', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('24', '10010', '10008', 'littledango', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('25', '10259', '10007', 'yxj007', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('26', '10000', '10008', 'marshall-fun', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('27', '10259', '10006', 'yxj007', '9.4', null, '9');
INSERT INTO `video_score` VALUES ('28', '10000', '10007', 'marshall-fun', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('29', '10259', '10008', 'yxj007', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('30', '10010', '10009', 'littledango', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('31', '10010', '10010', 'littledango', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('32', '10000', '10009', 'marshall-fun', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('33', '10000', '10010', 'marshall-fun', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('34', '10154', '10009', 'zhusama', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('35', '10154', '10010', 'zhusama', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('36', '10014', '10007', 'yun2he', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('37', '10010', '10011', 'littledango', '7.2', null, '1');
INSERT INTO `video_score` VALUES ('38', '10010', '10012', 'littledango', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('39', '10154', '10012', 'zhusama', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('40', '10154', '10011', 'zhusama', '7.2', null, '1');
INSERT INTO `video_score` VALUES ('41', '10000', '10011', 'marshall-fun', '7.2', null, '1');
INSERT INTO `video_score` VALUES ('42', '10000', '10012', 'marshall-fun', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('43', '10014', '10010', 'yun2he', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('44', '10014', '10012', 'yun2he', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('45', '10014', '10011', 'yun2he', '7.2', null, '1');
INSERT INTO `video_score` VALUES ('46', '10014', '10008', 'yun2he', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('47', '10014', '10009', 'yun2he', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('48', '10000', '10013', 'marshall-fun', '8.2', null, '1');
INSERT INTO `video_score` VALUES ('49', '10015', '10007', '364486142@qq.com', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('50', '10015', '10013', '364486142@qq.com', '8.2', null, '1');
INSERT INTO `video_score` VALUES ('51', '10154', '10007', 'zhusama', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('52', '10000', '10015', 'marshall-fun', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('53', '10000', '10014', 'marshall-fun', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('54', '10011', '10007', 'littledango~', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('55', '10011', '10006', 'littledango~', '9.4', null, '1');
INSERT INTO `video_score` VALUES ('56', '10011', '10008', 'littledango~', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('57', '10011', '10009', 'littledango~', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('58', '10011', '10014', 'littledango~', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('59', '10011', '10015', 'littledango~', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('60', '10011', '10012', 'littledango~', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('61', '10011', '10010', 'littledango~', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('62', '10011', '10013', 'littledango~', '8.2', null, '1');
INSERT INTO `video_score` VALUES ('63', '10011', '10011', 'littledango~', '7.2', null, '1');
INSERT INTO `video_score` VALUES ('64', '10010', '10014', 'littledango', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('65', '10010', '10013', 'littledango', '8.2', null, '1');
INSERT INTO `video_score` VALUES ('66', '10010', '10015', 'littledango', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('67', '10385', '10009', '649539460', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('68', '10385', '10015', '649539460', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('69', '10385', '10014', '649539460', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('70', '10000', '10018', 'marshall-fun', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('71', '10010', '10018', 'littledango', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('72', '10015', '10018', '364486142@qq.com', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('73', '10015', '10009', '364486142@qq.com', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('74', '10033', '10015', '605918279', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('75', '10033', '10014', '605918279', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('76', '10010', '10021', 'littledango', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('77', '10010', '10020', 'littledango', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('78', '10010', '10019', 'littledango', '7.6', null, '1');
INSERT INTO `video_score` VALUES ('79', '10015', '10019', '364486142@qq.com', '7.6', null, '1');
INSERT INTO `video_score` VALUES ('80', '10015', '10020', '364486142@qq.com', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('81', '10016', '10009', '413310822', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('82', '10016', '10008', '413310822', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('83', '10016', '10020', '413310822', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('84', '10016', '10021', '413310822', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('85', '10000', '10019', 'marshall-fun', '7.6', null, '1');
INSERT INTO `video_score` VALUES ('86', '10016', '10019', '413310822', '7.6', null, '1');
INSERT INTO `video_score` VALUES ('87', '10016', '10018', '413310822', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('88', '10016', '10015', '413310822', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('89', '10016', '10013', '413310822', '8.2', null, '1');
INSERT INTO `video_score` VALUES ('90', '10010', '10022', 'littledango', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('91', '10033', '10011', '605918279', '7.2', null, '1');
INSERT INTO `video_score` VALUES ('92', '10033', '10022', '605918279', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('93', '10033', '10008', '605918279', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('94', '10051', '10007', 'FuryCal', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('95', '10051', '10008', 'FuryCal', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('96', '10033', '10012', '605918279', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('97', '10051', '10009', 'FuryCal', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('98', '10051', '10010', 'FuryCal', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('99', '10033', '10019', '605918279', '7.6', null, '1');
INSERT INTO `video_score` VALUES ('100', '10051', '10011', 'FuryCal', '7.2', null, '1');
INSERT INTO `video_score` VALUES ('101', '10033', '10006', '605918279', '9.4', null, '1');
INSERT INTO `video_score` VALUES ('102', '10051', '10012', 'FuryCal', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('103', '10033', '10009', '605918279', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('104', '10051', '10013', 'FuryCal', '8.2', null, '1');
INSERT INTO `video_score` VALUES ('105', '10033', '10010', '605918279', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('106', '10051', '10014', 'FuryCal', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('107', '10051', '10015', 'FuryCal', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('108', '10051', '10018', 'FuryCal', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('109', '10033', '10013', '605918279', '8.2', null, '1');
INSERT INTO `video_score` VALUES ('110', '10051', '10019', 'FuryCal', '7.6', null, '1');
INSERT INTO `video_score` VALUES ('111', '10033', '10018', '605918279', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('112', '10051', '10022', 'FuryCal', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('113', '10015', '10022', '364486142@qq.com', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('114', '10435', '10006', 'LMTljm', '9.4', null, '1');
INSERT INTO `video_score` VALUES ('115', '10033', '10023', '605918279', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('116', '10435', '10024', 'LMTljm', '6.6', null, '1');
INSERT INTO `video_score` VALUES ('117', '10016', '10024', '413310822', '6.6', null, '1');
INSERT INTO `video_score` VALUES ('118', '10010', '10024', 'littledango', '6.6', null, '1');
INSERT INTO `video_score` VALUES ('119', '10016', '10022', '413310822', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('120', '10033', '10025', '605918279', '7.6', null, '1');
INSERT INTO `video_score` VALUES ('121', '10016', '10023', '413310822', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('122', '10016', '10025', '413310822', '7.6', null, '1');
INSERT INTO `video_score` VALUES ('123', '10113', '10019', 'hnscby6', '7.6', null, '1');
INSERT INTO `video_score` VALUES ('124', '10055', '10025', 'Sung Hsu', '7.6', null, '1');
INSERT INTO `video_score` VALUES ('125', '10035', '10006', '527451241@qq.com', '9.4', null, '1');
INSERT INTO `video_score` VALUES ('126', '10113', '10011', 'hnscby6', '7.2', null, '1');
INSERT INTO `video_score` VALUES ('127', '10113', '10023', 'hnscby6', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('128', '10010', '10028', 'littledango', '9.2', null, '1');
INSERT INTO `video_score` VALUES ('129', '10033', '10027', '605918279', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('130', '10113', '10027', 'hnscby6', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('131', '10113', '10029', 'hnscby6', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('132', '10035', '10027', '527451241@qq.com', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('133', '10035', '10028', '527451241@qq.com', '9.2', null, '1');
INSERT INTO `video_score` VALUES ('134', '10035', '10022', '527451241@qq.com', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('135', '10113', '10028', 'hnscby6', '9.2', null, '1');
INSERT INTO `video_score` VALUES ('136', '10035', '10012', '527451241@qq.com', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('137', '10051', '10029', 'FuryCal', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('138', '10033', '10029', '605918279', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('139', '10314', '10008', 'abby0731', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('140', '10000', '10024', 'marshall-fun', '6.6', null, '1');
INSERT INTO `video_score` VALUES ('141', '10000', '10025', 'marshall-fun', '7.6', null, '1');
INSERT INTO `video_score` VALUES ('142', '10000', '10027', 'marshall-fun', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('143', '10000', '10028', 'marshall-fun', '9.2', null, '1');
INSERT INTO `video_score` VALUES ('144', '10000', '10029', 'marshall-fun', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('145', '10000', '10030', 'marshall-fun', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('146', '10113', '10030', 'hnscby6', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('147', '10016', '10011', '413310822', '7.2', null, '1');
INSERT INTO `video_score` VALUES ('148', '10000', '10031', 'marshall-fun', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('149', '10016', '10027', '413310822', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('150', '10016', '10031', '413310822', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('151', '10000', '10032', 'marshall-fun', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('152', '10000', '10035', 'marshall-fun', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('153', '10000', '10036', 'marshall-fun', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('154', '10062', '10035', 'Estrella', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('155', '10000', '10037', 'marshall-fun', '3.4', null, '1');
INSERT INTO `video_score` VALUES ('156', '10010', '10037', 'littledango', '3.4', null, '1');
INSERT INTO `video_score` VALUES ('157', '10000', '10042', 'marshall-fun', '7.0', null, '1');
INSERT INTO `video_score` VALUES ('158', '10031', '10042', '924442791', '7.0', null, '1');
INSERT INTO `video_score` VALUES ('159', '10031', '10035', '924442791', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('160', '10031', '10029', '924442791', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('161', '10031', '10027', '924442791', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('162', '10031', '10024', '924442791', '6.6', null, '1');
INSERT INTO `video_score` VALUES ('163', '10031', '10019', '924442791', '7.6', null, '1');
INSERT INTO `video_score` VALUES ('164', '10031', '10015', '924442791', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('165', '10031', '10006', '924442791', '9.4', null, '1');
INSERT INTO `video_score` VALUES ('166', '10016', '10042', '413310822', '7.0', null, '1');
INSERT INTO `video_score` VALUES ('167', '10062', '10042', 'Estrella', '7.0', null, '1');
INSERT INTO `video_score` VALUES ('168', '10154', '10025', 'zhusama', '7.6', null, '1');
INSERT INTO `video_score` VALUES ('169', '10385', '10042', '649539460', '7.0', null, '1');
INSERT INTO `video_score` VALUES ('170', '10072', '10006', '1254170587', '9.4', null, '1');
INSERT INTO `video_score` VALUES ('171', '10280', '10044', '114805438', '6.0', null, '1');
INSERT INTO `video_score` VALUES ('172', '10280', '10043', '114805438', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('173', '10072', '10044', '1254170587', '6.0', null, '1');
INSERT INTO `video_score` VALUES ('174', '10033', '10043', '605918279', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('175', '10033', '10035', '605918279', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('176', '10033', '10042', '605918279', '7.0', null, '1');
INSERT INTO `video_score` VALUES ('177', '10033', '10044', '605918279', '6.0', null, '1');
INSERT INTO `video_score` VALUES ('178', '10033', '10028', '605918279', '9.2', null, '1');
INSERT INTO `video_score` VALUES ('179', '8008', '10035', '666666', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('180', '10015', '10037', '364486142@qq.com', '3.4', null, '1');
INSERT INTO `video_score` VALUES ('181', '10015', '10044', '364486142@qq.com', '6.0', null, '1');
INSERT INTO `video_score` VALUES ('182', '10015', '10024', '364486142@qq.com', '6.6', null, '1');
INSERT INTO `video_score` VALUES ('183', '10053', '10042', 'NICOMAKI', '7.0', null, '1');
INSERT INTO `video_score` VALUES ('184', '10000', '10045', 'marshall-fun', '7.4', null, '1');
INSERT INTO `video_score` VALUES ('185', '10053', '10008', 'NICOMAKI', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('186', '10405', '10009', 'yusagasuki', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('187', '10033', '10045', '605918279', '7.4', null, '1');
INSERT INTO `video_score` VALUES ('188', '10033', '10046', '605918279', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('189', '10356', '10046', 'guoxin9001', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('190', '10010', '10046', 'littledango', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('191', '10010', '10043', 'littledango', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('192', '10010', '10042', 'littledango', '7.0', null, '1');
INSERT INTO `video_score` VALUES ('193', '10010', '10057', 'littledango', '6.6', null, '1');
INSERT INTO `video_score` VALUES ('194', '10010', '10045', 'littledango', '7.4', null, '1');
INSERT INTO `video_score` VALUES ('195', '10010', '10035', 'littledango', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('196', '10010', '10030', 'littledango', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('197', '10010', '10029', 'littledango', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('198', '10010', '10027', 'littledango', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('199', '10010', '10025', 'littledango', '7.6', null, '1');
INSERT INTO `video_score` VALUES ('200', '10010', '10023', 'littledango', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('201', '10053', '10058', 'NICOMAKI', '6.0', null, '1');
INSERT INTO `video_score` VALUES ('202', '10019', '10058', 'KLOWRY', '6.0', null, '1');
INSERT INTO `video_score` VALUES ('203', '10024', '10009', 'cranberry', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('204', '10019', '10059', 'KLOWRY', '5.2', null, '1');
INSERT INTO `video_score` VALUES ('205', '10010', '10059', 'littledango', '5.2', null, '1');
INSERT INTO `video_score` VALUES ('206', '10010', '10058', 'littledango', '6.0', null, '1');
INSERT INTO `video_score` VALUES ('207', '10015', '10057', '364486142@qq.com', '6.6', null, '1');
INSERT INTO `video_score` VALUES ('208', '10399', '10046', 'zy10112029', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('209', '10014', '10046', 'yun2he', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('210', '10154', '10044', 'zhusama', '6.0', null, '1');
INSERT INTO `video_score` VALUES ('211', '10154', '10057', 'zhusama', '6.6', null, '1');
INSERT INTO `video_score` VALUES ('212', '10000', '10066', 'marshall-fun', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('213', '10000', '10067', 'marshall-fun', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('214', '10033', '10057', '605918279', '6.6', null, '1');
INSERT INTO `video_score` VALUES ('215', '10033', '10058', '605918279', '6.0', null, '1');
INSERT INTO `video_score` VALUES ('216', '10033', '10059', '605918279', '5.2', null, '1');
INSERT INTO `video_score` VALUES ('217', '10033', '10060', '605918279', '6.0', null, '1');
INSERT INTO `video_score` VALUES ('218', '10033', '10061', '605918279', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('219', '10033', '10066', '605918279', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('220', '10033', '10067', '605918279', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('221', '10033', '10062', '605918279', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('222', '10062', '10059', 'Estrella', '5.2', null, '1');
INSERT INTO `video_score` VALUES ('223', '10016', '10066', '413310822', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('224', '10613', '10066', 'luckamvs', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('225', '10010', '10067', 'littledango', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('226', '10010', '10066', 'littledango', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('227', '10010', '10061', 'littledango', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('228', '10010', '10060', 'littledango', '6.0', null, '1');
INSERT INTO `video_score` VALUES ('229', '10028', '10061', 'jojoanns', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('230', '10031', '10071', '924442791', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('231', '10280', '10071', '114805438', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('232', '10280', '10072', '114805438', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('233', '10280', '10073', '114805438', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('234', '10280', '10075', '114805438', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('235', '10280', '10076', '114805438', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('236', '10280', '10077', '114805438', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('237', '10439', '10059', 'claris', '5.2', null, '1');
INSERT INTO `video_score` VALUES ('238', '10439', '10046', 'claris', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('239', '10033', '10085', '605918279', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('240', '10033', '10083', '605918279', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('241', '10033', '10072', '605918279', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('242', '10033', '10073', '605918279', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('243', '10033', '10075', '605918279', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('244', '10033', '10076', '605918279', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('245', '10033', '10077', '605918279', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('246', '10033', '10084', '605918279', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('247', '10033', '10080', '605918279', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('248', '10033', '10081', '605918279', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('249', '10033', '10082', '605918279', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('250', '10033', '10074', '605918279', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('251', '10010', '10086', 'littledango', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('252', '10273', '10062', 'doomedyawn', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('253', '10056', '10082', 'hiroshidan', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('254', '10056', '10081', 'hiroshidan', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('255', '10033', '10087', '605918279', '9.4', null, '1');
INSERT INTO `video_score` VALUES ('256', '10033', '10086', '605918279', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('257', '10033', '10088', '605918279', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('258', '10028', '10088', 'jojoanns', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('259', '10028', '10087', 'jojoanns', '9.4', null, '1');
INSERT INTO `video_score` VALUES ('260', '10028', '10062', 'jojoanns', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('261', '10028', '10008', 'jojoanns', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('262', '10028', '10007', 'jojoanns', '8.4', null, '1');
INSERT INTO `video_score` VALUES ('263', '10344', '10088', '851348214', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('264', '10000', '10087', 'marshall-fun', '9.4', null, '1');
INSERT INTO `video_score` VALUES ('265', '10000', '10082', 'marshall-fun', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('266', '10000', '10089', 'marshall-fun', '4.0', null, '1');
INSERT INTO `video_score` VALUES ('267', '10624', '10088', 'zldust', '10.0', null, '1');
INSERT INTO `video_score` VALUES ('268', '10033', '10090', '605918279', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('269', '10010', '10090', 'littledango', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('270', '10010', '10089', 'littledango', '4.0', null, '1');
INSERT INTO `video_score` VALUES ('271', '10558', '10012', 'paperman', '8.8', null, '1');
INSERT INTO `video_score` VALUES ('272', '10033', '10091', '605918279', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('273', '10033', '10089', '605918279', '4.0', null, '1');
INSERT INTO `video_score` VALUES ('274', '10019', '10091', 'KLOWRY', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('275', '10010', '10091', 'littledango', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('276', '10019', '10009', 'KLOWRY', '8.6', null, '1');
INSERT INTO `video_score` VALUES ('277', '10033', '10092', '605918279', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('278', '10624', '10092', 'zldust', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('279', '10049', '10035', 'zqf110gx', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('280', '10033', '10093', '605918279', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('281', '10010', '10093', 'littledango', '8.0', null, '1');
INSERT INTO `video_score` VALUES ('282', '10645', '10035', 'wpj111', '9.0', null, '1');
INSERT INTO `video_score` VALUES ('290', '10651', '10023', 'wuliao2', '10.0', '2015-06-17 18:00:39', '1');
INSERT INTO `video_score` VALUES ('291', '10651', '10075', 'wuliao2', '8.0', '2015-06-17 20:03:37', '1');
INSERT INTO `video_score` VALUES ('294', '10651', '10060', 'wuliao2', '10.0', '2015-06-18 09:48:19', '1');
INSERT INTO `video_score` VALUES ('295', '10651', '10101', 'wuliao2', '10.0', '2015-06-19 10:03:16', '1');
INSERT INTO `video_score` VALUES ('301', '5000', '10110', 'wuliao', '5.0', '2015-08-18 18:48:05', '1');
INSERT INTO `video_score` VALUES ('302', '5000', '10025', 'wuliao', '10.0', '2015-08-25 13:14:32', '26');
INSERT INTO `video_score` VALUES ('303', '5000', '10116', 'wuliao', '10.0', '2015-08-28 16:33:44', '1');
INSERT INTO `video_score` VALUES ('304', '5000', '10116', 'wuliao', '8.0', '2015-08-28 16:33:48', '1');
INSERT INTO `video_score` VALUES ('305', '5000', '10116', 'wuliao', '10.0', '2015-08-28 16:33:51', '1');

-- ----------------------------
-- Table structure for video_type
-- ----------------------------
DROP TABLE IF EXISTS `video_type`;
CREATE TABLE `video_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `video_big_type_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(5) NOT NULL DEFAULT '0',
  `eng_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video_type
-- ----------------------------
INSERT INTO `video_type` VALUES ('1', '动作', '1', '0', 'Action');
INSERT INTO `video_type` VALUES ('2', '人物', '1', '0', 'Character Profile');
INSERT INTO `video_type` VALUES ('3', '惊悚', '1', '0', 'Horror');
INSERT INTO `video_type` VALUES ('4', '浪漫', '1', '0', 'Romance');
INSERT INTO `video_type` VALUES ('5', '故事', '1', '0', 'Story');
INSERT INTO `video_type` VALUES ('6', '合作', '1', '0', 'MEP');
INSERT INTO `video_type` VALUES ('7', '人物', '1', '0', 'Character Profile');
INSERT INTO `video_type` VALUES ('8', '舞曲', '1', '0', 'Dance');
INSERT INTO `video_type` VALUES ('9', '迷幻', '1', '0', 'Psychedelic');
INSERT INTO `video_type` VALUES ('10', '情感', '1', '0', 'Sentimental');
INSERT INTO `video_type` VALUES ('11', '预告', '1', '0', 'Trailer');
INSERT INTO `video_type` VALUES ('12', '片段', '1', '0', 'Exam section');
INSERT INTO `video_type` VALUES ('13', '动画系', '2', '0', null);
INSERT INTO `video_type` VALUES ('14', '混合系', '2', '0', null);
INSERT INTO `video_type` VALUES ('15', '小说', '2', '0', null);
INSERT INTO `video_type` VALUES ('16', '燃系', '2', '0', null);
INSERT INTO `video_type` VALUES ('17', '唯美系', '2', '0', null);
INSERT INTO `video_type` VALUES ('18', '片段', '2', '0', null);
INSERT INTO `video_type` VALUES ('19', '静止系', '2', '0', null);
INSERT INTO `video_type` VALUES ('20', '漫画', '2', '0', null);
INSERT INTO `video_type` VALUES ('21', 'GalGame', '2', '0', null);
INSERT INTO `video_type` VALUES ('22', '萌系', '2', '0', null);
INSERT INTO `video_type` VALUES ('23', '恐怖系', '2', '0', null);
INSERT INTO `video_type` VALUES ('24', '科技风', '3', '0', null);
INSERT INTO `video_type` VALUES ('25', '形状层动画', '3', '0', null);
INSERT INTO `video_type` VALUES ('26', '3D', '3', '0', null);
INSERT INTO `video_type` VALUES ('27', '一图流', '3', '0', null);
INSERT INTO `video_type` VALUES ('28', '古风', '3', '0', null);
INSERT INTO `video_type` VALUES ('29', 'MG', '3', '0', null);
INSERT INTO `video_type` VALUES ('30', '粒子', '3', '0', null);
INSERT INTO `video_type` VALUES ('31', '三次元', '3', '0', null);
INSERT INTO `video_type` VALUES ('32', '其他', '2', '0', null);

-- ----------------------------
-- Procedure structure for p1
-- ----------------------------
DROP PROCEDURE IF EXISTS `p1`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p1`(n int)
begin
select * from video_type where id > n;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for p2
-- ----------------------------
DROP PROCEDURE IF EXISTS `p2`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `p2`(n int)
begin
select * from user_admin;
end
;;
DELIMITER ;
