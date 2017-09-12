/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 60011
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2015-08-11 13:44:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) NOT NULL COMMENT '客户id',
  `name` varchar(20) NOT NULL COMMENT '姓名',
  `position` varchar(20) DEFAULT NULL COMMENT '职务',
  `tel` varchar(20) DEFAULT NULL COMMENT '固话',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机',
  `qq` varchar(20) DEFAULT NULL,
  `weixin` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('1', '1', '张三', '经理', '110110110110', '11111111111', '905891467', '9058weixin', 'walk_hai@163.com');
INSERT INTO `contact` VALUES ('2', '1', '李四', '主任', '2232323', '454345324534', '909090909', 'sssweinxin', 'lisi@163.com');
INSERT INTO `contact` VALUES ('3', '2', '刘德华', '总经理', '121321', '78787878', '888888', 'aksdfsadf', 'sdfsdf@163.com');
INSERT INTO `contact` VALUES ('4', '2', '李胜基', '助理', '1132413', '123423423', '222222', 'asdweixin', 'asdfsdf@163.com');
INSERT INTO `contact` VALUES ('5', '2', '戴安琪', '秘书', '132132', '787878', '8787878', 'ssssweinxi', 'asdfadf@163.com');
