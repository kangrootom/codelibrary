/*
Navicat MySQL Data Transfer

Source Server         : con_1
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : jquery

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2018-09-18 12:22:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'tom');
INSERT INTO `users` VALUES ('2', 'jack');
INSERT INTO `users` VALUES ('3', 'mack');
INSERT INTO `users` VALUES ('4', '特务');
INSERT INTO `users` VALUES ('5', '发多少');
INSERT INTO `users` VALUES ('6', '范德');

-- ----------------------------
-- Procedure structure for `simpleproc`
-- ----------------------------
DROP PROCEDURE IF EXISTS `simpleproc`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `simpleproc`(out count int)
begin
	select count(id) into count from users;
end
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `hello`
-- ----------------------------
DROP FUNCTION IF EXISTS `hello`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `hello`(s char(20)) RETURNS char(50) CHARSET utf8
return concat('hello,',s,'!')
;;
DELIMITER ;
