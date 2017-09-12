/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 60011
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2015-08-11 13:45:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for visitlog
-- ----------------------------
DROP TABLE IF EXISTS `visitlog`;
CREATE TABLE `visitlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerid` int(11) DEFAULT NULL COMMENT '客户id',
  `idcard` varchar(20) DEFAULT NULL,
  `vdate` date DEFAULT NULL COMMENT '拜访日期',
  `vtype` varchar(20) DEFAULT NULL COMMENT '拜访方式',
  `vremark` varchar(300) DEFAULT NULL COMMENT '拜访记录',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
