/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : phpcrm

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2017-10-24 10:26:59
*/
CREATE DATABASE IF NOT EXISTS phpcrm DEFAULT CHARSET utf8;
use phpcrm;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_announce`
-- ----------------------------
DROP TABLE IF EXISTS `sys_announce`;
CREATE TABLE `sys_announce` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `creator_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布人',
  `content` text NOT NULL COMMENT '内容',
  `insert_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_announce
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_group`;
CREATE TABLE `sys_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `module` varchar(128) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(250) DEFAULT '',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_auth_group
-- ----------------------------
INSERT INTO `sys_auth_group` VALUES ('1', '管理员', 'Home', '1', '8,92,93,103,32,101,37,38,39,41,42,43,48,49,102,65,68,69,75,78,104,87,94,95,4,70,71,72,76,77,105,5,7,11,12,14,15,6,10,16,17,23,24,25,63,64,66,67,81,44,45,46,47,114,33,34,55,56,57,58,97,98,99,100,36,59,60,61,82,83,84,85,86', '1426469964');
INSERT INTO `sys_auth_group` VALUES ('2', '业务组长', 'Home', '1', '8,92,93,103,32,37,38,41,42,43,48,49,102,65,68,69,75,78,104,87,88,90,4,72,5,7,11,12,14,15,6,10,16,17,23,24,25,63,44,45,47,114,33,97,98,99,100', '1461478318');
INSERT INTO `sys_auth_group` VALUES ('3', '业务员', 'Home', '1', '8,93,32,37,38,41,42,43,49,102,68,69,75,104,87,88,90,44,45,46,47,114', '1420262238');
INSERT INTO `sys_auth_group` VALUES ('4', '财务', 'Home', '1', '8,104,4,107,70,71,72,76,77,106,105,108,109,110,111,116,3,21', '1419501497');
INSERT INTO `sys_auth_group` VALUES ('5', '资源客服', 'Home', '1', '8,32,43,49,104,87', '1462257889');
INSERT INTO `sys_auth_group` VALUES ('6', '售后', 'Home', '1', '8,104,3,20,21,22,28,29,40,73,74,112,113,117,118,119', '1419822266');

-- ----------------------------
-- Table structure for `sys_auth_group_access`
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_group_access`;
CREATE TABLE `sys_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_auth_group_access
-- ----------------------------
INSERT INTO `sys_auth_group_access` VALUES ('1', '1');
INSERT INTO `sys_auth_group_access` VALUES ('2', '1');
INSERT INTO `sys_auth_group_access` VALUES ('3', '3');
INSERT INTO `sys_auth_group_access` VALUES ('4', '1');
INSERT INTO `sys_auth_group_access` VALUES ('5', '2');
INSERT INTO `sys_auth_group_access` VALUES ('5', '3');
INSERT INTO `sys_auth_group_access` VALUES ('6', '3');
INSERT INTO `sys_auth_group_access` VALUES ('7', '3');
INSERT INTO `sys_auth_group_access` VALUES ('8', '1');
INSERT INTO `sys_auth_group_access` VALUES ('9', '3');
INSERT INTO `sys_auth_group_access` VALUES ('10', '3');
INSERT INTO `sys_auth_group_access` VALUES ('11', '3');
INSERT INTO `sys_auth_group_access` VALUES ('12', '3');
INSERT INTO `sys_auth_group_access` VALUES ('12', '6');
INSERT INTO `sys_auth_group_access` VALUES ('13', '3');
INSERT INTO `sys_auth_group_access` VALUES ('14', '3');
INSERT INTO `sys_auth_group_access` VALUES ('15', '2');
INSERT INTO `sys_auth_group_access` VALUES ('15', '3');
INSERT INTO `sys_auth_group_access` VALUES ('16', '3');
INSERT INTO `sys_auth_group_access` VALUES ('17', '3');
INSERT INTO `sys_auth_group_access` VALUES ('18', '2');
INSERT INTO `sys_auth_group_access` VALUES ('18', '3');
INSERT INTO `sys_auth_group_access` VALUES ('19', '5');
INSERT INTO `sys_auth_group_access` VALUES ('20', '5');
INSERT INTO `sys_auth_group_access` VALUES ('21', '5');
INSERT INTO `sys_auth_group_access` VALUES ('22', '3');
INSERT INTO `sys_auth_group_access` VALUES ('23', '2');
INSERT INTO `sys_auth_group_access` VALUES ('26', '1');
INSERT INTO `sys_auth_group_access` VALUES ('28', '3');
INSERT INTO `sys_auth_group_access` VALUES ('29', '3');
INSERT INTO `sys_auth_group_access` VALUES ('30', '3');
INSERT INTO `sys_auth_group_access` VALUES ('31', '3');
INSERT INTO `sys_auth_group_access` VALUES ('32', '5');
INSERT INTO `sys_auth_group_access` VALUES ('33', '3');
INSERT INTO `sys_auth_group_access` VALUES ('34', '3');
INSERT INTO `sys_auth_group_access` VALUES ('35', '3');
INSERT INTO `sys_auth_group_access` VALUES ('36', '3');
INSERT INTO `sys_auth_group_access` VALUES ('37', '3');
INSERT INTO `sys_auth_group_access` VALUES ('38', '3');
INSERT INTO `sys_auth_group_access` VALUES ('39', '2');
INSERT INTO `sys_auth_group_access` VALUES ('40', '3');
INSERT INTO `sys_auth_group_access` VALUES ('41', '3');
INSERT INTO `sys_auth_group_access` VALUES ('42', '3');
INSERT INTO `sys_auth_group_access` VALUES ('43', '6');
INSERT INTO `sys_auth_group_access` VALUES ('44', '6');
INSERT INTO `sys_auth_group_access` VALUES ('45', '5');
INSERT INTO `sys_auth_group_access` VALUES ('46', '3');
INSERT INTO `sys_auth_group_access` VALUES ('47', '3');
INSERT INTO `sys_auth_group_access` VALUES ('48', '3');
INSERT INTO `sys_auth_group_access` VALUES ('50', '3');
INSERT INTO `sys_auth_group_access` VALUES ('51', '3');
INSERT INTO `sys_auth_group_access` VALUES ('52', '3');
INSERT INTO `sys_auth_group_access` VALUES ('53', '3');
INSERT INTO `sys_auth_group_access` VALUES ('54', '3');
INSERT INTO `sys_auth_group_access` VALUES ('55', '3');
INSERT INTO `sys_auth_group_access` VALUES ('56', '3');
INSERT INTO `sys_auth_group_access` VALUES ('57', '3');
INSERT INTO `sys_auth_group_access` VALUES ('58', '3');
INSERT INTO `sys_auth_group_access` VALUES ('59', '3');
INSERT INTO `sys_auth_group_access` VALUES ('60', '3');
INSERT INTO `sys_auth_group_access` VALUES ('61', '3');
INSERT INTO `sys_auth_group_access` VALUES ('62', '3');
INSERT INTO `sys_auth_group_access` VALUES ('63', '3');
INSERT INTO `sys_auth_group_access` VALUES ('64', '3');
INSERT INTO `sys_auth_group_access` VALUES ('65', '3');
INSERT INTO `sys_auth_group_access` VALUES ('66', '3');
INSERT INTO `sys_auth_group_access` VALUES ('67', '3');
INSERT INTO `sys_auth_group_access` VALUES ('68', '3');
INSERT INTO `sys_auth_group_access` VALUES ('69', '3');
INSERT INTO `sys_auth_group_access` VALUES ('70', '5');
INSERT INTO `sys_auth_group_access` VALUES ('71', '3');
INSERT INTO `sys_auth_group_access` VALUES ('72', '3');
INSERT INTO `sys_auth_group_access` VALUES ('73', '3');
INSERT INTO `sys_auth_group_access` VALUES ('74', '3');
INSERT INTO `sys_auth_group_access` VALUES ('75', '3');
INSERT INTO `sys_auth_group_access` VALUES ('76', '3');
INSERT INTO `sys_auth_group_access` VALUES ('77', '3');
INSERT INTO `sys_auth_group_access` VALUES ('78', '3');
INSERT INTO `sys_auth_group_access` VALUES ('79', '3');
INSERT INTO `sys_auth_group_access` VALUES ('80', '3');
INSERT INTO `sys_auth_group_access` VALUES ('81', '3');
INSERT INTO `sys_auth_group_access` VALUES ('82', '3');
INSERT INTO `sys_auth_group_access` VALUES ('83', '3');
INSERT INTO `sys_auth_group_access` VALUES ('84', '3');
INSERT INTO `sys_auth_group_access` VALUES ('85', '3');
INSERT INTO `sys_auth_group_access` VALUES ('86', '1');
INSERT INTO `sys_auth_group_access` VALUES ('87', '3');
INSERT INTO `sys_auth_group_access` VALUES ('88', '3');
INSERT INTO `sys_auth_group_access` VALUES ('89', '3');
INSERT INTO `sys_auth_group_access` VALUES ('90', '3');
INSERT INTO `sys_auth_group_access` VALUES ('90', '6');
INSERT INTO `sys_auth_group_access` VALUES ('91', '3');
INSERT INTO `sys_auth_group_access` VALUES ('92', '2');
INSERT INTO `sys_auth_group_access` VALUES ('93', '3');
INSERT INTO `sys_auth_group_access` VALUES ('94', '3');
INSERT INTO `sys_auth_group_access` VALUES ('95', '2');
INSERT INTO `sys_auth_group_access` VALUES ('95', '3');
INSERT INTO `sys_auth_group_access` VALUES ('96', '3');
INSERT INTO `sys_auth_group_access` VALUES ('97', '3');
INSERT INTO `sys_auth_group_access` VALUES ('98', '3');
INSERT INTO `sys_auth_group_access` VALUES ('99', '3');
INSERT INTO `sys_auth_group_access` VALUES ('100', '2');
INSERT INTO `sys_auth_group_access` VALUES ('101', '3');
INSERT INTO `sys_auth_group_access` VALUES ('102', '3');
INSERT INTO `sys_auth_group_access` VALUES ('103', '3');
INSERT INTO `sys_auth_group_access` VALUES ('104', '3');
INSERT INTO `sys_auth_group_access` VALUES ('105', '3');
INSERT INTO `sys_auth_group_access` VALUES ('106', '3');
INSERT INTO `sys_auth_group_access` VALUES ('107', '3');
INSERT INTO `sys_auth_group_access` VALUES ('108', '3');
INSERT INTO `sys_auth_group_access` VALUES ('109', '3');
INSERT INTO `sys_auth_group_access` VALUES ('110', '3');
INSERT INTO `sys_auth_group_access` VALUES ('111', '3');
INSERT INTO `sys_auth_group_access` VALUES ('112', '3');
INSERT INTO `sys_auth_group_access` VALUES ('113', '3');
INSERT INTO `sys_auth_group_access` VALUES ('114', '3');
INSERT INTO `sys_auth_group_access` VALUES ('115', '3');
INSERT INTO `sys_auth_group_access` VALUES ('116', '3');
INSERT INTO `sys_auth_group_access` VALUES ('117', '3');
INSERT INTO `sys_auth_group_access` VALUES ('118', '3');
INSERT INTO `sys_auth_group_access` VALUES ('119', '3');
INSERT INTO `sys_auth_group_access` VALUES ('120', '3');
INSERT INTO `sys_auth_group_access` VALUES ('121', '3');
INSERT INTO `sys_auth_group_access` VALUES ('122', '3');
INSERT INTO `sys_auth_group_access` VALUES ('123', '3');
INSERT INTO `sys_auth_group_access` VALUES ('124', '3');
INSERT INTO `sys_auth_group_access` VALUES ('125', '3');
INSERT INTO `sys_auth_group_access` VALUES ('126', '3');
INSERT INTO `sys_auth_group_access` VALUES ('127', '3');
INSERT INTO `sys_auth_group_access` VALUES ('128', '3');
INSERT INTO `sys_auth_group_access` VALUES ('129', '3');
INSERT INTO `sys_auth_group_access` VALUES ('130', '3');
INSERT INTO `sys_auth_group_access` VALUES ('131', '3');
INSERT INTO `sys_auth_group_access` VALUES ('132', '3');
INSERT INTO `sys_auth_group_access` VALUES ('133', '3');
INSERT INTO `sys_auth_group_access` VALUES ('134', '3');
INSERT INTO `sys_auth_group_access` VALUES ('135', '3');
INSERT INTO `sys_auth_group_access` VALUES ('136', '3');
INSERT INTO `sys_auth_group_access` VALUES ('137', '3');
INSERT INTO `sys_auth_group_access` VALUES ('138', '3');
INSERT INTO `sys_auth_group_access` VALUES ('139', '3');
INSERT INTO `sys_auth_group_access` VALUES ('140', '2');
INSERT INTO `sys_auth_group_access` VALUES ('140', '3');
INSERT INTO `sys_auth_group_access` VALUES ('141', '3');
INSERT INTO `sys_auth_group_access` VALUES ('142', '3');
INSERT INTO `sys_auth_group_access` VALUES ('143', '2');
INSERT INTO `sys_auth_group_access` VALUES ('143', '3');
INSERT INTO `sys_auth_group_access` VALUES ('144', '3');
INSERT INTO `sys_auth_group_access` VALUES ('145', '3');
INSERT INTO `sys_auth_group_access` VALUES ('146', '3');
INSERT INTO `sys_auth_group_access` VALUES ('147', '3');
INSERT INTO `sys_auth_group_access` VALUES ('148', '1');
INSERT INTO `sys_auth_group_access` VALUES ('151', '3');
INSERT INTO `sys_auth_group_access` VALUES ('152', '2');
INSERT INTO `sys_auth_group_access` VALUES ('152', '3');
INSERT INTO `sys_auth_group_access` VALUES ('153', '3');
INSERT INTO `sys_auth_group_access` VALUES ('154', '3');
INSERT INTO `sys_auth_group_access` VALUES ('155', '3');
INSERT INTO `sys_auth_group_access` VALUES ('156', '5');
INSERT INTO `sys_auth_group_access` VALUES ('157', '3');
INSERT INTO `sys_auth_group_access` VALUES ('158', '3');
INSERT INTO `sys_auth_group_access` VALUES ('159', '3');
INSERT INTO `sys_auth_group_access` VALUES ('160', '3');
INSERT INTO `sys_auth_group_access` VALUES ('161', '1');
INSERT INTO `sys_auth_group_access` VALUES ('162', '3');
INSERT INTO `sys_auth_group_access` VALUES ('163', '3');
INSERT INTO `sys_auth_group_access` VALUES ('164', '3');
INSERT INTO `sys_auth_group_access` VALUES ('165', '3');
INSERT INTO `sys_auth_group_access` VALUES ('166', '3');
INSERT INTO `sys_auth_group_access` VALUES ('167', '3');
INSERT INTO `sys_auth_group_access` VALUES ('168', '2');
INSERT INTO `sys_auth_group_access` VALUES ('168', '3');
INSERT INTO `sys_auth_group_access` VALUES ('169', '3');
INSERT INTO `sys_auth_group_access` VALUES ('170', '3');
INSERT INTO `sys_auth_group_access` VALUES ('171', '3');
INSERT INTO `sys_auth_group_access` VALUES ('172', '3');
INSERT INTO `sys_auth_group_access` VALUES ('173', '3');
INSERT INTO `sys_auth_group_access` VALUES ('174', '3');
INSERT INTO `sys_auth_group_access` VALUES ('175', '3');
INSERT INTO `sys_auth_group_access` VALUES ('176', '3');
INSERT INTO `sys_auth_group_access` VALUES ('177', '3');
INSERT INTO `sys_auth_group_access` VALUES ('178', '5');
INSERT INTO `sys_auth_group_access` VALUES ('179', '3');
INSERT INTO `sys_auth_group_access` VALUES ('180', '3');
INSERT INTO `sys_auth_group_access` VALUES ('181', '3');
INSERT INTO `sys_auth_group_access` VALUES ('182', '1');
INSERT INTO `sys_auth_group_access` VALUES ('183', '2');
INSERT INTO `sys_auth_group_access` VALUES ('184', '3');
INSERT INTO `sys_auth_group_access` VALUES ('185', '3');
INSERT INTO `sys_auth_group_access` VALUES ('186', '5');
INSERT INTO `sys_auth_group_access` VALUES ('187', '3');
INSERT INTO `sys_auth_group_access` VALUES ('188', '3');
INSERT INTO `sys_auth_group_access` VALUES ('190', '3');
INSERT INTO `sys_auth_group_access` VALUES ('191', '3');
INSERT INTO `sys_auth_group_access` VALUES ('192', '3');

-- ----------------------------
-- Table structure for `sys_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_rule`;
CREATE TABLE `sys_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `module` varchar(128) DEFAULT 'Home',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `condition` char(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_auth_rule
-- ----------------------------
INSERT INTO `sys_auth_rule` VALUES ('2', 'system/index', '系统设置', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('3', 'order/index', '订单管理', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('4', 'finance/index', '财务管理', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('5', 'menu/addMenu', '添加菜单', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('6', 'rule/addrule', '权限添加', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('7', 'menu/add', '添加菜单', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('8', 'customer/index', '客户资源管理', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('92', 'customer/user_contact_list', '查看业务员电话量统计详单', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('10', 'rule/do_addrule', '权限添加处理', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('11', 'menu/index', '菜单管理', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('12', 'menu/editMenu', '修改菜单', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('14', 'menu/del', '删除菜单', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('15', 'menu/edit_do', '菜单添加处理', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('16', 'rule/index', '权限管理', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('17', 'rule/assignrule', '分配权限', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('93', 'customer/customer_contact', '在公共库和垃圾库查看洽谈记录', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('20', 'order/add', '添加订单', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('21', 'order/orderlist', '订单列表', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('22', 'order/total', '订单统计', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('23', 'rule/rulelist', '权限规则列表', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('24', 'rule/del', '删除权限规则', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('25', 'rule/editrule', '修改权限规则', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('107', 'finance/expense_edit', '修改付款记录', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('28', 'order/toview', '查看详细订单', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('29', 'order/editorder', '修改订单', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('103', 'customer/manage_source_list', '组资源列表', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('32', 'customer/source_list', '我的资源', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('33', 'salesGroup/index', '业务管理', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('34', 'salesGroup/group', '业务组管理', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('101', 'customer/manager', '查看所有人的客户资源', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('36', 'kv/index', '元数据管理', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('37', 'customer/public_resource', '查看公共资源', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('38', 'customer/rubbish_resource', '查看垃圾资源', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('39', 'customer/del', '删除资源', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('40', 'order/disable', '作废订单', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('41', 'customer/assign_myself', '资源划分给自己', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('42', 'customer/topublic', '还原公共库', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('43', 'customer/add_resource', '资源录入', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('44', 'cases/index', '案例分享', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('45', 'cases/add', '销售案例添加', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('46', 'cases/delete', '删除案例', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('47', 'cases/example_edit', '编辑案例', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('48', 'customer/customer_ownership', '把资源分配给业务员', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('49', 'customer/edit', '修改客户资源', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('102', 'customer/ContactRecordAdd', '在公共库和垃圾库中添加通话记录', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('55', 'salesGroup/group_add', '创建业务组', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('56', 'salesGroup/group_edit', '修改业务组资料', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('57', 'salesGroup/group_del', '删除业务组', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('58', 'salesGroup/set_group_leader', '设置业务组长', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('59', 'kv/add', '创建元数据', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('60', 'kv/edit', '修改元数据', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('61', 'kv/del', '删除元数据', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('62', 'system/loginlog', '登录日志', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('63', 'rule/edit', '修改角色', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('64', 'rule/user', '查看角色用户', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('65', 'customer/contact_total', '电话量统计', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('66', 'rule/user_add', '添加用户到角色', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('67', 'rule/user_del', '从角色中移除用户', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('68', 'customer/locked', '锁定客户', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('69', 'customer/unlock', '解锁客户', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('70', 'finance/income', '收款记录', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('71', 'finance/expense', '付款记录', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('72', 'finance/statistic', '业务员业绩排名', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('73', 'order/order_log', '订单操作日记', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('74', 'order/recover', '恢复订单', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('75', 'customer/torubbish', '抛进垃圾库', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('76', 'finance/viewFullTop', '查看全部业务员的业绩排名', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('77', 'finance/group_statistic', '业务组业绩排名', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('78', 'customer/resource_assign', '资源分配(仅供管理员和组长批量分配客户)', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('104', 'customer/search', '客户查询', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('81', 'rule/add_rulegroup', '添加角色组', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('82', 'announce/index', '公告管理', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('83', 'announce/add', '添加公告', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('84', 'announce/edit', '修改公告', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('85', 'announce/del', '删除公告', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('86', 'announce/view', '查看公告', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('87', 'customer/view', '查看客户资料', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('88', 'customer/note_add', '添加便签提醒', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('106', 'finance/expense_add', '创建付款', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('90', 'customer/talk_record_add', '添加洽谈记录', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('105', 'finance/income_add', '创建收款', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('94', 'customer/source_statistics', '查看资源来源统计', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('95', 'customer/source_num', '查看资源统计明细', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('96', 'system/project', '项目组管理', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('97', 'salesGroup/account', '用户管理', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('98', 'salesGroup/account_add', '添加用户', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('99', 'salesGroup/account_edit', '修改用户', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('100', 'salesGroup/account_del', '删除用户', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('108', 'finance/income_edit', '修改收款记录', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('109', 'finance/income_view', '查看收款详情', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('110', 'finance/income_del', '删除收款', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('111', 'finance/expense_del', '删除付款', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('112', 'order/submitted_to_superiors', '移交订单', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('113', 'order/return_to_submitted', '打回订单', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('114', 'cases/example', '查看案例详情', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('116', 'finance/all_statistics', '收支统计', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('117', 'order/tag_edit', '修改标签', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('118', 'order/tag_del', '删除标签', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('119', 'order/tag_list', '标签管理', '1', 'Home', '1', '');
INSERT INTO `sys_auth_rule` VALUES ('120', 'system/ip_limit', 'IP管理', '1', 'Home', '1', '');

-- ----------------------------
-- Table structure for `sys_contact_record`
-- ----------------------------
DROP TABLE IF EXISTS `sys_contact_record`;
CREATE TABLE `sys_contact_record` (
  `record_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '洽谈人',
  `talk_way` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '洽谈方式',
  `content` varchar(250) DEFAULT NULL COMMENT '内容',
  `customer_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '客户ID',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `insert_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '时间',
  PRIMARY KEY (`record_id`),
  KEY `customer_id` (`customer_id`),
  KEY `user_id` (`user_id`),
  KEY `insert_time` (`insert_time`)
) ENGINE=MyISAM AUTO_INCREMENT=44939 DEFAULT CHARSET=utf8 COMMENT='洽谈记录';

-- ----------------------------
-- Records of sys_contact_record
-- ----------------------------


-- ----------------------------
-- Table structure for `sys_customer`
-- ----------------------------
DROP TABLE IF EXISTS `sys_customer`;
CREATE TABLE `sys_customer` (
  `customer_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '客户ID',
  `customer_name` varchar(50) NOT NULL COMMENT '客户名称',
  `gender` tinyint(1) unsigned DEFAULT '0' COMMENT '性别',
  `mobile` varchar(50) DEFAULT '' COMMENT '手机号码',
  `mobile_other_list` varchar(500) DEFAULT '' COMMENT '其它手机号(可有多个，用半角逗号隔开)',
  `tel` varchar(50) NOT NULL COMMENT '电话',
  `qq` varchar(50) DEFAULT NULL COMMENT 'QQ号码',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `profession` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL COMMENT '客户地址',
  `source_from` varchar(128) DEFAULT NULL COMMENT '客户来源',
  `keyword` varchar(128) DEFAULT NULL COMMENT '客户关键词',
  `message_content` varchar(250) DEFAULT NULL COMMENT '留言内容',
  `status` tinyint(2) unsigned DEFAULT '0' COMMENT '客户状态',
  `talk_count` int(11) unsigned DEFAULT '0' COMMENT '洽谈次数',
  `intention_rank` varchar(50) NOT NULL DEFAULT '' COMMENT '客户意向',
  `creator_id` int(11) unsigned NOT NULL COMMENT '创建人',
  `owner_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '客户所属业务员',
  `ownergroup_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '业务组',
  `project_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '项目',
  `leave_message_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '留言时间',
  `insert_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `divide_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '划分时间',
  `is_locked` tinyint(1) unsigned DEFAULT '0' COMMENT '锁定',
  `is_valid` tinyint(1) unsigned DEFAULT '1' COMMENT '有效',
  PRIMARY KEY (`customer_id`),
  KEY `status` (`status`),
  KEY `owner_id_creator_id` (`owner_id`,`creator_id`),
  KEY `insert_time_customer_id` (`insert_time`,`customer_id`),
  KEY `divide_time_customer_id` (`divide_time`,`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3063 DEFAULT CHARSET=utf8 COMMENT='客户资源';

-- ----------------------------
-- Records of sys_customer
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_customer_note`
-- ----------------------------
DROP TABLE IF EXISTS `sys_customer_note`;
CREATE TABLE `sys_customer_note` (
  `note_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '提醒内容',
  `customer_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '客户ID',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `is_remind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否提醒(1-是;0-否)',
  `insert_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `remind_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '提醒时间',
  PRIMARY KEY (`note_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=460 DEFAULT CHARSET=utf8 COMMENT='便签信息';

-- ----------------------------
-- Records of sys_customer_note
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_finance`
-- ----------------------------
DROP TABLE IF EXISTS `sys_finance`;
CREATE TABLE `sys_finance` (
  `finance_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_id` int(11) unsigned NOT NULL COMMENT '订单ID',
  `amount` decimal(18,2) NOT NULL COMMENT '金额',
  `insert_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `payment_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '付款时间',
  `op` enum('+','-') NOT NULL DEFAULT '+' COMMENT '操作方式',
  `project_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '项目ID',
  `user_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '业务组ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '业务员ID',
  `creator_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建者ID',
  `type` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '款项类型',
  `memo` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`finance_id`),
  KEY `op` (`op`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_finance
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_finance_file`
-- ----------------------------
DROP TABLE IF EXISTS `sys_finance_file`;
CREATE TABLE `sys_finance_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `type` varchar(255) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` bigint(30) unsigned NOT NULL DEFAULT '0' COMMENT '文件尺寸',
  `ext` varchar(30) NOT NULL DEFAULT '' COMMENT '文件扩展名',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件MD5校验值',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件SHA1校验值',
  `savename` varchar(200) NOT NULL DEFAULT '' COMMENT '文件保存名',
  `savepath` varchar(200) NOT NULL DEFAULT '' COMMENT '文件保存路径',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '说明',
  `insert_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传人',
  `finance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'finance表主键',
  PRIMARY KEY (`id`),
  KEY `finance_id` (`finance_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='凭证文件';

-- ----------------------------
-- Records of sys_finance_file
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_ip`
-- ----------------------------
DROP TABLE IF EXISTS `sys_ip`;
CREATE TABLE `sys_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(32) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_ip
-- ----------------------------
INSERT INTO `sys_ip` VALUES ('2', '183.233.131.195', '0000-00-00 00:00:00');
INSERT INTO `sys_ip` VALUES ('3', '211.136.220.139', '0000-00-00 00:00:00');
INSERT INTO `sys_ip` VALUES ('4', '180.173.137.184', '2017-04-22 13:46:13');
INSERT INTO `sys_ip` VALUES ('5', '27.47.232.218', '2017-04-22 13:46:24');
INSERT INTO `sys_ip` VALUES ('6', '58.248.81.82', '2017-04-22 13:46:34');
INSERT INTO `sys_ip` VALUES ('7', '27.47.232.134', '2017-04-22 13:46:44');
INSERT INTO `sys_ip` VALUES ('9', '127.0.0.1', '2017-04-22 15:34:28');
INSERT INTO `sys_ip` VALUES ('10', '180.162.51.78', '2017-04-22 15:34:53');

-- ----------------------------
-- Table structure for `sys_kv`
-- ----------------------------
DROP TABLE IF EXISTS `sys_kv`;
CREATE TABLE `sys_kv` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `k` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '键',
  `v` varchar(60) NOT NULL COMMENT '值',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序(从大到小)',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_k` (`type`,`k`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_kv
-- ----------------------------
INSERT INTO `sys_kv` VALUES ('1', '1', '洽谈中', '0', 'customer_status');
INSERT INTO `sys_kv` VALUES ('2', '2', '公共', '0', 'customer_status');
INSERT INTO `sys_kv` VALUES ('3', '3', '垃圾', '0', 'customer_status');
INSERT INTO `sys_kv` VALUES ('5', '1', '未知', '0', 'customer_intention');
INSERT INTO `sys_kv` VALUES ('7', '5', '管理未分', '0', 'customer_status');
INSERT INTO `sys_kv` VALUES ('8', '6', '组长未分', '0', 'customer_status');
INSERT INTO `sys_kv` VALUES ('9', '2', '意向强烈', '0', 'customer_intention');
INSERT INTO `sys_kv` VALUES ('10', '3', '意向中等', '0', 'customer_intention');
INSERT INTO `sys_kv` VALUES ('11', '4', '意向一般', '0', 'customer_intention');
INSERT INTO `sys_kv` VALUES ('12', '5', '无意向', '0', 'customer_intention');
INSERT INTO `sys_kv` VALUES ('13', '6', '未接通', '0', 'customer_intention');
INSERT INTO `sys_kv` VALUES ('14', '7', '未留言', '0', 'customer_intention');
INSERT INTO `sys_kv` VALUES ('15', '8', '非本人', '0', 'customer_intention');
INSERT INTO `sys_kv` VALUES ('16', '9', '号码错误', '0', 'customer_intention');
INSERT INTO `sys_kv` VALUES ('17', '1', '电话', '0', 'customer_talkway');
INSERT INTO `sys_kv` VALUES ('18', '2', '网聊', '0', 'customer_talkway');
INSERT INTO `sys_kv` VALUES ('19', '3', '面谈', '0', 'customer_talkway');
INSERT INTO `sys_kv` VALUES ('20', '4', 'Email', '0', 'customer_talkway');
INSERT INTO `sys_kv` VALUES ('21', '10', '其它', '0', 'customer_talkway');
INSERT INTO `sys_kv` VALUES ('42', '1', '业务', '0', 'user_type');
INSERT INTO `sys_kv` VALUES ('43', '2', '非业务', '0', 'user_type');
INSERT INTO `sys_kv` VALUES ('162', '3', '电商（电子商务）', '0', 'customer_keyword');
INSERT INTO `sys_kv` VALUES ('48', '1', '业绩', '0', 'income_type');
INSERT INTO `sys_kv` VALUES ('49', '1', '广告费', '0', 'expense_type');
INSERT INTO `sys_kv` VALUES ('55', '6', '网店代理', '0', 'customer_keyword');
INSERT INTO `sys_kv` VALUES ('56', '5', '微商代理', '0', 'customer_keyword');
INSERT INTO `sys_kv` VALUES ('57', '4', '在淘宝开网店（淘宝加盟）', '0', 'customer_keyword');
INSERT INTO `sys_kv` VALUES ('174', '10', 'YQ', '0', 'customer_status');
INSERT INTO `sys_kv` VALUES ('163', '2', '一件代发', '0', 'customer_keyword');
INSERT INTO `sys_kv` VALUES ('164', '1', '货源服装或者其他（网店代理）', '0', 'customer_keyword');
INSERT INTO `sys_kv` VALUES ('66', '9', '资源划分', '0', 'customer_talkway');
INSERT INTO `sys_kv` VALUES ('176', '52', '搜狗', '0', 'customer_source');
INSERT INTO `sys_kv` VALUES ('72', '2', '生活费', '1', 'expense_type');
INSERT INTO `sys_kv` VALUES ('177', '53', '360', '0', 'customer_source');
INSERT INTO `sys_kv` VALUES ('178', '54', '搜狗留言', '0', 'customer_source');
INSERT INTO `sys_kv` VALUES ('115', '51', 'ZJLR', '0', 'customer_source');
INSERT INTO `sys_kv` VALUES ('141', '7', '无', '0', 'customer_status');

-- ----------------------------
-- Table structure for `sys_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(64) NOT NULL,
  `message` varchar(250) NOT NULL,
  `ip` varchar(64) NOT NULL,
  `insert_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3817 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_link` varchar(150) NOT NULL,
  `menu_name` varchar(50) NOT NULL,
  `pid` int(11) unsigned NOT NULL DEFAULT '0',
  `level` int(11) unsigned NOT NULL,
  `menu_ord` int(11) NOT NULL DEFAULT '50',
  `is_valid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `icon_style` varchar(50) NOT NULL DEFAULT '' COMMENT '图标样式',
  PRIMARY KEY (`menu_id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('55', 'Home/customer/search', '客户查询', '1', '2', '0', '1', '1418374794', '');
INSERT INTO `sys_menu` VALUES ('4', 'Home/system/index', '系统配置', '0', '1', '50', '1', '1417492271', 'icon-cogs');
INSERT INTO `sys_menu` VALUES ('2', 'Home/finance/index', '财务管理', '0', '1', '40', '1', '1417492000', 'icon-money');
INSERT INTO `sys_menu` VALUES ('1', 'Home/customer/index', '资源管理', '0', '1', '45', '1', '1418174466', 'icon-comments');
INSERT INTO `sys_menu` VALUES ('11', 'Home/menu/index', '菜单管理', '4', '2', '30', '1', '1417492407', '');
INSERT INTO `sys_menu` VALUES ('57', 'Home/order/tag_list', '标签管理', '12', '2', '0', '1', '1419819842', '');
INSERT INTO `sys_menu` VALUES ('12', 'Home/order/index', '订单管理', '0', '1', '40', '1', '1417492323', 'icon-shopping-cart');
INSERT INTO `sys_menu` VALUES ('53', 'Home/SalesGroup/account', '用户管理', '33', '2', '0', '1', '1418174186', '');
INSERT INTO `sys_menu` VALUES ('52', 'Home/system/project', '项目管理', '4', '2', '0', '1', '1418174637', '');
INSERT INTO `sys_menu` VALUES ('32', 'Home/customer/source_list', '我的资源', '1', '2', '200', '1', '1418174579', '');
INSERT INTO `sys_menu` VALUES ('54', 'Home/customer/manage_source_list', '组资源列表', '1', '2', '199', '1', '1418353970', '');
INSERT INTO `sys_menu` VALUES ('31', 'Home/rule/index', '角色管理', '4', '2', '51', '1', '1418290152', '');
INSERT INTO `sys_menu` VALUES ('21', 'Home/finance/statistic', '总业绩排名', '2', '2', '103', '1', '1418290195', '');
INSERT INTO `sys_menu` VALUES ('40', 'Home/cases/index', '案例分享', '0', '1', '35', '1', '1427276335', ' icon-heart');
INSERT INTO `sys_menu` VALUES ('25', 'Home/order/orderlist', '订单列表', '12', '2', '21', '1', '1418290227', '');
INSERT INTO `sys_menu` VALUES ('26', 'Home/order/total', '订单统计', '12', '2', '20', '1', '0', '');
INSERT INTO `sys_menu` VALUES ('28', 'Home/rule/rulelist', '权限管理', '4', '2', '50', '1', '1418174596', '');
INSERT INTO `sys_menu` VALUES ('39', 'Home/customer/add_resource', '资源录入', '1', '2', '196', '1', '1420441902', '');
INSERT INTO `sys_menu` VALUES ('33', 'Home/salesGroup/index', ' 用户管理', '0', '1', '30', '1', '1418175321', 'icon-user');
INSERT INTO `sys_menu` VALUES ('34', 'Home/salesGroup/group', '业务组管理', '33', '2', '0', '1', '1418175335', '');
INSERT INTO `sys_menu` VALUES ('56', 'Home/finance/all_statistics', '收支统计', '2', '2', '0', '1', '1419476853', '');
INSERT INTO `sys_menu` VALUES ('36', 'Home/kv/index', '元数据', '0', '1', '10', '1', '1417492137', 'icon-circle');
INSERT INTO `sys_menu` VALUES ('37', 'Home/customer/public_resource', '公共资源', '1', '2', '198', '1', '1418353995', '');
INSERT INTO `sys_menu` VALUES ('38', 'Home/customer/rubbish_resource', '垃圾资源', '1', '2', '197', '1', '1420441913', '');
INSERT INTO `sys_menu` VALUES ('42', 'Home/system/loginlog', '登录日志', '4', '2', '0', '1', '0', '');
INSERT INTO `sys_menu` VALUES ('43', 'Home/customer/contact_total', '电话量统计', '1', '2', '100', '1', '1416793871', '');
INSERT INTO `sys_menu` VALUES ('44', 'Home/finance/income', '收款记录', '2', '2', '100', '1', '1416811529', '');
INSERT INTO `sys_menu` VALUES ('45', 'Home/finance/expense', '付款记录', '2', '2', '99', '1', '1416811539', '');
INSERT INTO `sys_menu` VALUES ('47', 'Home/order/order_log', '订单操作日志', '12', '2', '0', '1', '1418174759', '');
INSERT INTO `sys_menu` VALUES ('48', 'Home/finance/group_statistic', '组业绩排名', '2', '2', '102', '1', '1418174733', '');
INSERT INTO `sys_menu` VALUES ('49', 'Home/customer/resource_assign', '资源分配', '1', '2', '0', '1', '1416967833', '');
INSERT INTO `sys_menu` VALUES ('50', 'Home/announce/index', '公告管理', '0', '1', '0', '1', '1417492191', 'icon-volume-up');
INSERT INTO `sys_menu` VALUES ('51', 'Home/customer/source_statistics', '资源统计', '1', '2', '0', '1', '1420602990', '');
INSERT INTO `sys_menu` VALUES ('58', 'Home/system/ip_limit', 'IP管理', '4', '2', '0', '1', '1492838910', '');

-- ----------------------------
-- Table structure for `sys_order`
-- ----------------------------
DROP TABLE IF EXISTS `sys_order`;
CREATE TABLE `sys_order` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `order_sn` varchar(250) NOT NULL COMMENT '订单编号',
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上一级订单ID',
  `creator_id` int(11) unsigned NOT NULL COMMENT '建单人',
  `convey_group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '流转位置角色ID',
  `convey_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '具体某个人领取',
  `convey_memo` varchar(300) DEFAULT '' COMMENT '移交操作附加说明',
  `owner_id` int(11) unsigned NOT NULL COMMENT '负责人(业务员)',
  `project_id` int(11) NOT NULL COMMENT '项目ID',
  `user_group_id` int(11) NOT NULL COMMENT '负责人所在业务组ID',
  `shop_type` varchar(128) NOT NULL COMMENT '商品类型',
  `customer_id` int(11) unsigned NOT NULL COMMENT '客户ID',
  `customer_name` varchar(250) NOT NULL COMMENT '客户名称',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '付款状态(0-未付款;1-部分付款;2-全额付款)',
  `is_valid` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效',
  `amount` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `remaining` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '未付款金额',
  `insert_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `customer_account` varchar(128) DEFAULT NULL COMMENT '客户账户',
  `domain_name` varchar(128) DEFAULT NULL COMMENT '商城域名',
  `shop_name` varchar(128) DEFAULT NULL COMMENT '商城名称',
  `customer_status_desc` tinytext COMMENT '客户状态描述',
  `distribution_information` tinytext COMMENT '配送明细',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `sys_order_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_order_log`;
CREATE TABLE `sys_order_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `group_id` int(10) unsigned DEFAULT '0' COMMENT '角色ID',
  `user_group_id` int(10) unsigned DEFAULT '0' COMMENT '业务组ID',
  `action` varchar(64) NOT NULL,
  `sql_log` text,
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `insert_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `current` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当前步骤',
  `next` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下一步',
  `memo` varchar(300) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='订单流转';

-- ----------------------------
-- Table structure for `sys_project`
-- ----------------------------
DROP TABLE IF EXISTS `sys_project`;
CREATE TABLE `sys_project` (
  `project_id` int(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '项目ID',
  `project_name` varchar(64) NOT NULL COMMENT '项目名称',
  PRIMARY KEY (`project_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='项目';

-- ----------------------------
-- Records of sys_project
-- ----------------------------
INSERT INTO `sys_project` VALUES ('1', '项目组一');

-- ----------------------------
-- Table structure for `sys_sales_cases`
-- ----------------------------
DROP TABLE IF EXISTS `sys_sales_cases`;
CREATE TABLE `sys_sales_cases` (
  `case_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `case_title` varchar(64) DEFAULT NULL,
  `case_content` text,
  `case_creator` int(11) unsigned DEFAULT NULL,
  `insert_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0',
  `project_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_sales_cases
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_tag`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tag`;
CREATE TABLE `sys_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `tag_name` varchar(50) NOT NULL COMMENT '标签名',
  `insert_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  `used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '使用次数',
  `creator_id` int(10) unsigned NOT NULL COMMENT '创建人ID',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `bgcolor` varchar(10) NOT NULL DEFAULT '' COMMENT '背景颜色',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签';

-- ----------------------------
-- Records of sys_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_tag_relation`
-- ----------------------------
DROP TABLE IF EXISTS `sys_tag_relation`;
CREATE TABLE `sys_tag_relation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tag_id` int(10) unsigned NOT NULL COMMENT '标签ID',
  `rel_type` varchar(50) NOT NULL DEFAULT 'order' COMMENT '关联类型',
  `rel_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '关联ID',
  `insert_time` int(10) unsigned NOT NULL COMMENT '关联时间',
  `creator_id` int(10) unsigned NOT NULL COMMENT '关联人ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rel_type_rel_id_tag_id` (`rel_type`,`rel_id`,`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='标签关系表';

-- ----------------------------
-- Records of sys_tag_relation
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户UID',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别(0-女;1-男)',
  `QQ` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(128) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `motto` varchar(128) DEFAULT NULL,
  `mobile` char(64) NOT NULL DEFAULT '' COMMENT '手机',
  `user_type` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户类型ID',
  `user_group_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户组ID',
  `is_valid` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否启用',
  `insert_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  KEY `user_group_id` (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=193 DEFAULT CHARSET=utf8 COMMENT='用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'yladmin', 'afdd0b4ad2ec172c586e2150770fbf9e', '0', '', '', null, '', '', '2', '0', '1', '1383198817');

-- ----------------------------
-- Table structure for `sys_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_group`;
CREATE TABLE `sys_user_group` (
  `group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(64) NOT NULL COMMENT '组名称',
  `leader` varchar(128) DEFAULT NULL COMMENT '组长(可有多个)',
  `type` varchar(30) NOT NULL DEFAULT 'biz' COMMENT '组类型(默认为业务组)',
  `project_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '项目ID',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序编号',
  PRIMARY KEY (`group_id`),
  KEY `project_id` (`project_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='用户组';

-- ----------------------------
-- Records of sys_user_group
-- ----------------------------
INSERT INTO `sys_user_group` VALUES ('21', '无效组', '183', 'biz', '1', '0');
INSERT INTO `sys_user_group` VALUES ('20', '周朝力组', '143', 'biz', '1', '0');
INSERT INTO `sys_user_group` VALUES ('22', '厚积薄发', null, 'biz', '1', '0');
INSERT INTO `sys_user_group` VALUES ('18', '谢兴龙组', '168', 'biz', '1', '0');
INSERT INTO `sys_user_group` VALUES ('17', '蒋田组', '140', 'biz', '1', '0');

-- ----------------------------
-- Table structure for `table_id_map`
-- ----------------------------
DROP TABLE IF EXISTS `table_id_map`;
CREATE TABLE `table_id_map` (
  `id` bigint(30) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `oldTable` varchar(30) NOT NULL COMMENT '旧表名称',
  `newTable` varchar(30) NOT NULL COMMENT '新表名称',
  `oldID` char(36) NOT NULL COMMENT '旧表主键ID',
  `newID` int(10) unsigned NOT NULL COMMENT '新表主键ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `oldTable_oldID` (`oldTable`,`oldID`),
  UNIQUE KEY `newTable_newID` (`newTable`,`newID`)
) ENGINE=MyISAM AUTO_INCREMENT=867421 DEFAULT CHARSET=utf8 COMMENT='新旧表ID对照表';

-- ----------------------------
-- Records of table_id_map
-- ----------------------------
