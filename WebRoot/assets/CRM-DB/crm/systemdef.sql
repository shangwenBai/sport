/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 60011
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2015-08-11 13:45:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for systemdef
-- ----------------------------
DROP TABLE IF EXISTS `systemdef`;
CREATE TABLE `systemdef` (
  `id` int(11) NOT NULL COMMENT '部门编号',
  `name` char(20) NOT NULL COMMENT '部门名称',
  `parentid` int(11) NOT NULL DEFAULT '0' COMMENT '所属二级部门【父类（上级部门）】',
  `iconCls` varchar(20) DEFAULT NULL COMMENT '样式',
  `ptopid` int(11) NOT NULL COMMENT '所属一级部门【顶级父类】',
  `pthird` int(11) DEFAULT NULL COMMENT '所属三级部门【扩展备用】',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemdef
-- ----------------------------
INSERT INTO `systemdef` VALUES ('1', '上海总部', '0', null, '0', null);
INSERT INTO `systemdef` VALUES ('2', '北京分公司', '0', null, '0', null);
INSERT INTO `systemdef` VALUES ('3', '成都分公司', '0', null, '0', null);
INSERT INTO `systemdef` VALUES ('4', '广州分公司', '0', null, '0', null);
INSERT INTO `systemdef` VALUES ('101', '总裁办', '1', null, '1', null);
INSERT INTO `systemdef` VALUES ('102', '行政部', '1', null, '1', null);
INSERT INTO `systemdef` VALUES ('103', '销售部', '1', null, '1', null);
INSERT INTO `systemdef` VALUES ('104', '产品部', '1', null, '1', null);
INSERT INTO `systemdef` VALUES ('105', '研发部', '1', null, '1', null);
INSERT INTO `systemdef` VALUES ('106', '运维部', '2', null, '2', null);
INSERT INTO `systemdef` VALUES ('201', '行政部', '2', null, '2', null);
INSERT INTO `systemdef` VALUES ('202', '销售部', '2', null, '2', null);
INSERT INTO `systemdef` VALUES ('203', '运维部', '2', null, '2', null);
INSERT INTO `systemdef` VALUES ('301', '行政部', '3', '', '3', null);
INSERT INTO `systemdef` VALUES ('302', '销售部', '3', null, '3', null);
INSERT INTO `systemdef` VALUES ('303', '运维部', '3', null, '3', null);
INSERT INTO `systemdef` VALUES ('401', '行政部', '4', null, '4', null);
INSERT INTO `systemdef` VALUES ('402', '销售部', '4', null, '4', null);
INSERT INTO `systemdef` VALUES ('403', '运维部', '4', null, '4', null);
INSERT INTO `systemdef` VALUES ('10201', '管理部', '102', null, '1', null);
INSERT INTO `systemdef` VALUES ('10202', '后勤部', '102', null, '1', null);
INSERT INTO `systemdef` VALUES ('10301', '销售1部', '103', null, '1', null);
INSERT INTO `systemdef` VALUES ('10302', '销售2部', '103', null, '1', null);
INSERT INTO `systemdef` VALUES ('10303', '销售3部', '103', null, '1', null);
INSERT INTO `systemdef` VALUES ('10501', '研发1部', '105', null, '1', null);
INSERT INTO `systemdef` VALUES ('10502', '研发2部', '105', null, '1', null);
INSERT INTO `systemdef` VALUES ('30201', '销售1部', '302', null, '3', null);
INSERT INTO `systemdef` VALUES ('30202', '销售2部', '302', null, '3', null);
