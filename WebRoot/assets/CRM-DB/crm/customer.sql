/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 60011
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2015-08-11 13:45:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '名称',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `zipcode` varchar(20) DEFAULT NULL COMMENT '邮编',
  `fax` varchar(20) DEFAULT NULL COMMENT '传真',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '单位1', '地址1', '1000000', '12345678');
INSERT INTO `customer` VALUES ('2', '单位2', '地址2', '1000001', '22222222');
INSERT INTO `customer` VALUES ('3', '单位3', '地址3', '1000002', '33333333');
INSERT INTO `customer` VALUES ('4', '单位4', '地址4', '1000003', '44444444');
INSERT INTO `customer` VALUES ('5', '单位55555', '地址5', '1000004', '55555555');
INSERT INTO `customer` VALUES ('6', '啊啊啊啊', '八佰伴八佰伴', '1313', '2352435345');
INSERT INTO `customer` VALUES ('7', '保存处处长2', '啊都是法师打发斯蒂芬2', '1111000', '222222000');
INSERT INTO `customer` VALUES ('8', '1', '2', '33', '3');
INSERT INTO `customer` VALUES ('9', '呀呀呀呀呀呀', '谁谁谁', '1212', '1312');
