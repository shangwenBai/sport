/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 60011
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2015-08-11 13:45:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sysuser
-- ----------------------------
DROP TABLE IF EXISTS `sysuser`;
CREATE TABLE `sysuser` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '登录名（匿名）',
  `password` varchar(100) NOT NULL DEFAULT '' COMMENT '登录密码',
  `sysid` int(11) NOT NULL COMMENT '所属部门',
  `email` varchar(50) DEFAULT NULL COMMENT '邮件',
  `name` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `idcard` varchar(20) NOT NULL COMMENT '身份证',
  `gender` varchar(2) NOT NULL DEFAULT '男' COMMENT '性别1男2女',
  `qq` varchar(20) DEFAULT NULL COMMENT 'qq',
  `weixin` varchar(50) DEFAULT NULL,
  `regtime` date NOT NULL COMMENT '入职日期',
  PRIMARY KEY (`id`,`idcard`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sysuser
-- ----------------------------
INSERT INTO `sysuser` VALUES ('1', 'admin', '1', '101', null, null, '1', '男', '905891460', null, '2015-05-01');
INSERT INTO `sysuser` VALUES ('2', 'tony', '123456', '101', null, null, '2', '男', '123456784', null, '2015-05-02');
INSERT INTO `sysuser` VALUES ('3', 'test1', '123456', '101', null, null, '3', '女', null, null, '0000-00-00');
INSERT INTO `sysuser` VALUES ('4', 'test2', '123456', '101', null, null, '4', '女', null, null, '0000-00-00');
INSERT INTO `sysuser` VALUES ('5', 'test3', '123456', '101', 'sdasda@163.com', null, '5', '男', '7777777', null, '2015-05-03');
INSERT INTO `sysuser` VALUES ('6', 'test4', '123456', '104', '322@qq.com', null, '6', '女', '8888888', null, '2015-05-03');
INSERT INTO `sysuser` VALUES ('7', 'test5', '123456', '104', null, null, '7', '女', '6666666', null, '2015-05-03');
INSERT INTO `sysuser` VALUES ('8', 'test6', '123456', '104', null, null, '8', '男', null, null, '0000-00-00');
INSERT INTO `sysuser` VALUES ('9', 'test7', '123456', '104', 'walk_hai@163.com', null, '9', '女', null, null, '0000-00-00');
INSERT INTO `sysuser` VALUES ('13', 'asdasdsa', '123456', '10201', '11@qq.com', null, '10', '女', null, null, '0000-00-00');
INSERT INTO `sysuser` VALUES ('14', 'test10', '', '10201', 'walk_hai@163.com', null, '11', '男', '333333', null, '2015-05-04');
INSERT INTO `sysuser` VALUES ('15', 'aaa', '', '10201', null, null, '12', '女', null, null, '0000-00-00');
INSERT INTO `sysuser` VALUES ('16', 'a', '', '10201', null, null, '13', '男', '444444', null, '2015-05-04');
INSERT INTO `sysuser` VALUES ('17', 'ttt', '', '10201', 'ttt@sss.com', null, '14', '女', null, null, '0000-00-00');
INSERT INTO `sysuser` VALUES ('18', 'aaa', 'aaa', '10201', 'adf@sdfa.com', null, '23413245', '女', '89898989', 'adfadad', '2015-05-06');
INSERT INTO `sysuser` VALUES ('19', '1', '1', '10201', null, null, '15', '1', null, null, '2015-05-05');
INSERT INTO `sysuser` VALUES ('20', '1', '1', '30201', null, null, '16', '1', null, null, '2015-01-01');
INSERT INTO `sysuser` VALUES ('21', '1', '1', '30201', 'wa@ads.com', null, '17', '男', '888888', 'sssss', '2015-05-09');
INSERT INTO `sysuser` VALUES ('22', 'aaaa', 'aaaa', '30201', 'adsfadsf@asdf.com', null, '123123123123', '男', '132423', 'adsfasdfadffsdfadfadsf', '2015-04-05');
INSERT INTO `sysuser` VALUES ('23', 'ahahhaha', '123456', '301', 'sdfadsf@aa.com', null, '23111111111111', '男', '7979798', 'dasdgads', '2015-05-12');
INSERT INTO `sysuser` VALUES ('24', 'ddd', 'ddd', '301', '1@qq.com', null, '12', '男', '111', '122', '2015-07-13');
INSERT INTO `sysuser` VALUES ('25', 'dddss', 'dddss', '10501', '1@qq.com', '', '12', '男', '111', '122', '2015-07-13');
INSERT INTO `sysuser` VALUES ('26', 'ddddff', 'dddfff', '10501', '1@qq.com', '', '12', '男', '111', '122', '2015-07-13');
INSERT INTO `sysuser` VALUES ('27', 'dddgg', 'dddgg', '10502', '1@qq.com', '', '12', '男', '111', '122', '2015-07-13');
