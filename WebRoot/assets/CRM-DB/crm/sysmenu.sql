/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 60011
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2015-08-11 13:45:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sysmenu
-- ----------------------------
DROP TABLE IF EXISTS `sysmenu`;
CREATE TABLE `sysmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `parentid` int(11) NOT NULL DEFAULT '0' COMMENT '父级菜单ID 0表示根节点',
  `sequence` int(6) NOT NULL DEFAULT '0' COMMENT '菜单顺序',
  `iconCls` varchar(20) NOT NULL DEFAULT '' COMMENT '菜单图标样式',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '菜单链接地址 总是以‘/’开头，相对于项目根路径',
  `enable` int(1) NOT NULL DEFAULT '1' COMMENT '是否可用 1:正常，0：禁用',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parentid`),
  KEY `sequence` (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=902 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

-- ----------------------------
-- Records of sysmenu
-- ----------------------------
INSERT INTO `sysmenu` VALUES ('1', '菜单管理', '0', '1', 'icon-bottom', '', '1');
INSERT INTO `sysmenu` VALUES ('2', '客户管理', '0', '2', 'icon-bottom', '', '1');
INSERT INTO `sysmenu` VALUES ('3', '用户管理', '0', '3', 'icon-bottom', '', '1');
INSERT INTO `sysmenu` VALUES ('4', '系统设置', '0', '4', 'icon-bottom', '', '1');
INSERT INTO `sysmenu` VALUES ('5', '报表统计', '0', '5', 'icon-bottom', '', '1');
INSERT INTO `sysmenu` VALUES ('6', '合同管理', '0', '6', 'icon-bottom', '', '1');
INSERT INTO `sysmenu` VALUES ('7', '资源管理', '0', '7', 'icon-bottom', '', '1');
INSERT INTO `sysmenu` VALUES ('8', '考评管理', '0', '8', 'icon-bottom', '', '1');
INSERT INTO `sysmenu` VALUES ('9', '差旅管理', '0', '9', 'icon-bottom', '', '1');
INSERT INTO `sysmenu` VALUES ('101', '资源管理', '1', '101', 'icon-nav', '/menu/list', '1');
INSERT INTO `sysmenu` VALUES ('102', '菜单树', '1', '102', 'icon-set', '/menu/listtree', '1');
INSERT INTO `sysmenu` VALUES ('201', '客户管理', '2', '201', 'icon-role', '/customer/list', '1');
INSERT INTO `sysmenu` VALUES ('202', '联系人管理', '2', '202', 'icon-person', 'http://www.baidu.com', '0');
INSERT INTO `sysmenu` VALUES ('301', '用户管理', '3', '301', 'icon-log', '/user/list', '1');
INSERT INTO `sysmenu` VALUES ('302', '员工管理', '3', '302', 'icon-person', '/user/listtree', '1');
INSERT INTO `sysmenu` VALUES ('401', '权限管理', '4', '401', 'icon-msg', '/menu/list', '1');
INSERT INTO `sysmenu` VALUES ('402', '角色管理', '4', '402', 'icon-set', '/menu/list', '1');
INSERT INTO `sysmenu` VALUES ('403', '系统通知', '4', '403', 'icon-help', '/menu/list', '1');
INSERT INTO `sysmenu` VALUES ('404', '部门管理', '4', '404', 'icon-role', '/systemdef/listtree', '1');
INSERT INTO `sysmenu` VALUES ('501', '系统报表', '5', '501', 'icon-email', '/menu/list', '1');
INSERT INTO `sysmenu` VALUES ('601', '合同查询', '6', '601', 'icon-ht', '/menu/list', '1');
INSERT INTO `sysmenu` VALUES ('701', '资源查询', '7', '701', 'icon-tongji', '/menu/list', '1');
INSERT INTO `sysmenu` VALUES ('801', '绩效查询', '8', '801', 'icon-bb', '/menu/list', '1');
INSERT INTO `sysmenu` VALUES ('901', '差旅查询', '9', '901', 'icon-money', '/menu/list', '1');
