/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 60011
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2015-08-11 13:45:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `menu_id` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='权限关联表';

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('1', '1', '2');
INSERT INTO `role_menu` VALUES ('2', '1', '3');
INSERT INTO `role_menu` VALUES ('3', '1', '201');
INSERT INTO `role_menu` VALUES ('4', '1', '202');
INSERT INTO `role_menu` VALUES ('5', '1', '301');
INSERT INTO `role_menu` VALUES ('6', '2', '2');
INSERT INTO `role_menu` VALUES ('7', '2', '201');
INSERT INTO `role_menu` VALUES ('8', '2', '202');
INSERT INTO `role_menu` VALUES ('9', '1', '101');
INSERT INTO `role_menu` VALUES ('10', '2', '101');
INSERT INTO `role_menu` VALUES ('11', '1', '1');
INSERT INTO `role_menu` VALUES ('12', '2', '1');
INSERT INTO `role_menu` VALUES ('13', '1', '4');
INSERT INTO `role_menu` VALUES ('14', '1', '5');
INSERT INTO `role_menu` VALUES ('15', '1', '401');
INSERT INTO `role_menu` VALUES ('16', '1', '402');
INSERT INTO `role_menu` VALUES ('17', '1', '403');
INSERT INTO `role_menu` VALUES ('18', '1', '501');
INSERT INTO `role_menu` VALUES ('19', '1', '6');
INSERT INTO `role_menu` VALUES ('20', '1', '7');
INSERT INTO `role_menu` VALUES ('21', '1', '8');
INSERT INTO `role_menu` VALUES ('22', '1', '9');
INSERT INTO `role_menu` VALUES ('23', '1', '601');
INSERT INTO `role_menu` VALUES ('24', '1', '701');
INSERT INTO `role_menu` VALUES ('25', '1', '801');
INSERT INTO `role_menu` VALUES ('26', '1', '901');
INSERT INTO `role_menu` VALUES ('27', '1', '302');
INSERT INTO `role_menu` VALUES ('28', '1', '102');
INSERT INTO `role_menu` VALUES ('29', '1', '404');
