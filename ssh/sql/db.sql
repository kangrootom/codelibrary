/*
Navicat MySQL Data Transfer

Source Server         : con_1
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : db

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2018-09-18 14:27:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '开发部');
INSERT INTO `dept` VALUES ('2', 'hr');
INSERT INTO `dept` VALUES ('3', '市场部');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `eName` varchar(20) DEFAULT NULL,
  `esalary` double DEFAULT NULL,
  `ehiredate` date DEFAULT NULL,
  `did` int(11) DEFAULT NULL,
  PRIMARY KEY (`eid`),
  KEY `FK4722E6AE533836E` (`did`),
  CONSTRAINT `FK4722E6AE533836E` FOREIGN KEY (`did`) REFERENCES `dept` (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('20', '发送到', '3', '2013-01-01', '1');
INSERT INTO `employee` VALUES ('21', '团员', '2', '2014-02-01', '3');
