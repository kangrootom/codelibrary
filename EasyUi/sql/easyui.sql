/*
Navicat MySQL Data Transfer

Source Server         : con_1
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : easyui

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2018-09-18 11:58:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `complain`
-- ----------------------------
DROP TABLE IF EXISTS `complain`;
CREATE TABLE `complain` (
  `comp_id` varchar(32) NOT NULL,
  `comp_company` varchar(100) DEFAULT NULL,
  `comp_name` varchar(20) DEFAULT NULL,
  `comp_mobile` varchar(20) DEFAULT NULL,
  `is_NM` tinyint(1) DEFAULT NULL,
  `comp_time` datetime DEFAULT NULL,
  `comp_title` varchar(200) NOT NULL,
  `to_comp_name` varchar(20) DEFAULT NULL,
  `to_comp_dept` varchar(100) DEFAULT NULL,
  `comp_content` text,
  `state` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of complain
-- ----------------------------
INSERT INTO `complain` VALUES ('1', '1', '2', '3', '4', '2015-01-11 08:50:11', '6', '7', '8', '9', '0');
INSERT INTO `complain` VALUES ('10', null, null, null, null, '2018-01-02 08:57:27', '1', null, null, null, null);
INSERT INTO `complain` VALUES ('11', null, null, null, null, '2018-03-01 08:57:55', '2', null, null, null, null);
INSERT INTO `complain` VALUES ('12', null, null, null, null, '2018-03-02 08:58:12', '1', null, null, null, null);
INSERT INTO `complain` VALUES ('13', null, null, null, null, '2016-08-11 09:05:19', '2', null, null, null, null);
INSERT INTO `complain` VALUES ('14', null, null, null, null, '2016-12-02 09:05:49', '1', null, null, null, null);
INSERT INTO `complain` VALUES ('15', null, null, null, null, '2014-01-02 11:29:09', '2', null, null, null, null);
INSERT INTO `complain` VALUES ('16', null, null, null, null, '2017-01-02 11:29:47', '1', null, null, null, null);
INSERT INTO `complain` VALUES ('2', '2', '3', '4', '5', '2015-01-02 08:50:59', '6', '7', '8', '9', '1');
INSERT INTO `complain` VALUES ('3', '3', '4', '5', '6', '2016-02-02 08:51:47', '7', '8', '9', '0', '1');
INSERT INTO `complain` VALUES ('4', '1', '2', '3', '4', '2016-04-26 08:52:44', '5', '6', '7', '8', '9');
INSERT INTO `complain` VALUES ('5', '1', '2', '3', '4', '2016-06-01 08:53:52', '0', '5', '6', '7', '8');
INSERT INTO `complain` VALUES ('6', null, null, null, null, '2016-07-01 08:55:12', '1', null, null, null, null);
INSERT INTO `complain` VALUES ('7', null, null, null, null, '2016-08-01 08:55:47', '2', null, null, null, null);
INSERT INTO `complain` VALUES ('8', null, null, null, null, '2016-10-21 08:56:18', '1', null, null, null, null);
INSERT INTO `complain` VALUES ('9', null, null, null, null, '2016-12-01 08:56:56', '2', null, null, null, null);

-- ----------------------------
-- Table structure for `complain_reply`
-- ----------------------------
DROP TABLE IF EXISTS `complain_reply`;
CREATE TABLE `complain_reply` (
  `reply_id` varchar(32) NOT NULL,
  `comp_id` varchar(32) NOT NULL,
  `replyer` varchar(20) DEFAULT NULL,
  `reply_dept` varchar(100) DEFAULT NULL,
  `reply_time` datetime DEFAULT NULL,
  `reply_content` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `FK_comp_reply` (`comp_id`),
  CONSTRAINT `FK_comp_reply` FOREIGN KEY (`comp_id`) REFERENCES `complain` (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of complain_reply
-- ----------------------------

-- ----------------------------
-- Table structure for `emp_role`
-- ----------------------------
DROP TABLE IF EXISTS `emp_role`;
CREATE TABLE `emp_role` (
  `emp_id` varchar(32) NOT NULL,
  `role_id` varchar(32) NOT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`,`role_id`),
  KEY `FK_emp_role2` (`role_id`),
  CONSTRAINT `FK_emp_role` FOREIGN KEY (`emp_id`) REFERENCES `t_employee` (`emp_id`),
  CONSTRAINT `FK_emp_role2` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_role
-- ----------------------------

-- ----------------------------
-- Table structure for `info`
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `info_id` varchar(32) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext,
  `memo` varchar(200) DEFAULT NULL,
  `creator` varchar(10) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info
-- ----------------------------

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` varchar(32) NOT NULL,
  `name` varchar(20) NOT NULL,
  `state` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for `role_pri`
-- ----------------------------
DROP TABLE IF EXISTS `role_pri`;
CREATE TABLE `role_pri` (
  `role_id` varchar(32) NOT NULL,
  `pri_id` varchar(32) NOT NULL,
  PRIMARY KEY (`role_id`,`pri_id`),
  KEY `FK_own` (`pri_id`),
  CONSTRAINT `FK_belong` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`role_id`),
  CONSTRAINT `FK_own` FOREIGN KEY (`pri_id`) REFERENCES `t_privilege` (`pri_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_pri
-- ----------------------------

-- ----------------------------
-- Table structure for `role_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `role_privilege`;
CREATE TABLE `role_privilege` (
  `role_id` varchar(32) NOT NULL,
  `code` varchar(20) NOT NULL,
  PRIMARY KEY (`role_id`,`code`),
  KEY `FK45FBD62869372004` (`role_id`),
  CONSTRAINT `FK45FBD62869372004` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_privilege
-- ----------------------------

-- ----------------------------
-- Table structure for `tmonth`
-- ----------------------------
DROP TABLE IF EXISTS `tmonth`;
CREATE TABLE `tmonth` (
  `imonth` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tmonth
-- ----------------------------
INSERT INTO `tmonth` VALUES ('1');
INSERT INTO `tmonth` VALUES ('2');
INSERT INTO `tmonth` VALUES ('3');
INSERT INTO `tmonth` VALUES ('4');
INSERT INTO `tmonth` VALUES ('5');
INSERT INTO `tmonth` VALUES ('6');
INSERT INTO `tmonth` VALUES ('7');
INSERT INTO `tmonth` VALUES ('8');
INSERT INTO `tmonth` VALUES ('9');
INSERT INTO `tmonth` VALUES ('10');
INSERT INTO `tmonth` VALUES ('11');
INSERT INTO `tmonth` VALUES ('12');

-- ----------------------------
-- Table structure for `t_dept`
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept` (
  `detp_id` varchar(32) NOT NULL,
  `org_id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`detp_id`),
  KEY `FK_org_dept` (`org_id`),
  CONSTRAINT `FK_org_dept` FOREIGN KEY (`org_id`) REFERENCES `t_org` (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_dept
-- ----------------------------

-- ----------------------------
-- Table structure for `t_employee`
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee` (
  `emp_id` varchar(32) NOT NULL,
  `detp_id` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `FK_dept_emp` (`detp_id`),
  CONSTRAINT `FK_dept_emp` FOREIGN KEY (`detp_id`) REFERENCES `t_dept` (`detp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employee
-- ----------------------------

-- ----------------------------
-- Table structure for `t_leader`
-- ----------------------------
DROP TABLE IF EXISTS `t_leader`;
CREATE TABLE `t_leader` (
  `emp_id` varchar(32) NOT NULL,
  `detp_id` varchar(32) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  CONSTRAINT `FK_Inheritance_1` FOREIGN KEY (`emp_id`) REFERENCES `t_employee` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_leader
-- ----------------------------

-- ----------------------------
-- Table structure for `t_org`
-- ----------------------------
DROP TABLE IF EXISTS `t_org`;
CREATE TABLE `t_org` (
  `org_id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_org
-- ----------------------------

-- ----------------------------
-- Table structure for `t_privilege`
-- ----------------------------
DROP TABLE IF EXISTS `t_privilege`;
CREATE TABLE `t_privilege` (
  `pri_id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pri_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_privilege
-- ----------------------------

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `role_id` varchar(32) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(4) DEFAULT NULL,
  `sal` double DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `dept` varchar(20) NOT NULL,
  `account` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `headImg` varchar(100) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL,
  `memo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '哈哈', '6000', '男', '', 'haha', '123456', null, '', null, null, null, null, null);
INSERT INTO `user` VALUES ('2', '呵呵', '7000', '男', '', '', '', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('3', '嘻嘻', '8000', '女', '', '', '', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('4', '笨笨', '9000', '男', '', '', '', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('5', '聪聪', '5000', '男', '', '', '', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('6', '花花', '4000', '女', '', '', '', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('7', 'sb', '1000', '男', '', 'sb', '123', null, '', null, null, null, null, null);

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `role_id` varchar(32) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `FK143BF46A69372004` (`role_id`),
  CONSTRAINT `FK143BF46A69372004` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
