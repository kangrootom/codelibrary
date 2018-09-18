/*
Navicat MySQL Data Transfer

Source Server         : con_1
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : mybatis

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2018-09-18 11:36:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `emps`
-- ----------------------------
DROP TABLE IF EXISTS `emps`;
CREATE TABLE `emps` (
  `emps_id` int(11) NOT NULL,
  `emps_name` varchar(10) DEFAULT NULL,
  `emps_sex` varchar(4) DEFAULT NULL,
  `emps_hiredate` date DEFAULT NULL,
  PRIMARY KEY (`emps_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emps
-- ----------------------------
INSERT INTO `emps` VALUES ('1', 'haha', '男', '2016-01-21');
INSERT INTO `emps` VALUES ('2', 'hehe', '女', '2018-05-01');
INSERT INTO `emps` VALUES ('3', 'sb', '男', '2011-11-27');
INSERT INTO `emps` VALUES ('4', '回复的', '男', '2013-01-28');
INSERT INTO `emps` VALUES ('5', 'tew ew的', 'male', '2016-06-19');
INSERT INTO `emps` VALUES ('6', 'jac', 'male', '2016-06-19');
INSERT INTO `emps` VALUES ('7', 'jac', 'male', '2014-07-28');
INSERT INTO `emps` VALUES ('8', 'jac', 'male', '2013-05-28');
INSERT INTO `emps` VALUES ('10', '特务额外热翁无热发的', 'male', '2011-12-28');
INSERT INTO `emps` VALUES ('11', 'jjac', 'male', '2013-02-28');
INSERT INTO `emps` VALUES ('12', 'jack', '女', '2014-05-01');
INSERT INTO `emps` VALUES ('13', 'haha', '女', '2018-01-28');
INSERT INTO `emps` VALUES ('14', 'jack', 'man', '2013-09-28');
INSERT INTO `emps` VALUES ('16', 'rew', '女', '2016-02-28');
INSERT INTO `emps` VALUES ('100', '埃里克森范德', '男', '2015-05-28');

-- ----------------------------
-- Table structure for `items`
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '商品名称',
  `price` float(10,1) NOT NULL COMMENT '商品定价',
  `detail` text COMMENT '商品描述',
  `pic` varchar(64) DEFAULT NULL COMMENT '商品图片',
  `createtime` datetime NOT NULL COMMENT '生产日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('1', '台式机', '3000.0', '<h1 style=\"margin-left:24px\">1. <span style=\"font-family:宋体\">实现</span>cxf<span style=\"font-family:宋体\">第一个示例</span></h1><p class=\"MsoListParagraph\" style=\"margin-left:48px\">1.<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-family:宋体\">创建</span>java<span style=\"font-family:宋体\">项目</span></p><p class=\"MsoListParagraph\" style=\"margin-left:48px\">2.<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-family:宋体\">引入所有依赖包</span></p><p class=\"MsoListParagraph\" style=\"margin-left:48px\">3.<span style=\"font:9px &#39;Times New Roman&#39;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-family:宋体\">创建服务类</span></p><p class=\"MsoListParagraph\" style=\"margin-left:48px;text-indent:0\"><span style=\"font-family:宋体\">用两个不同的类发布应用：</span> </p><p class=\"MsoListParagraph\" style=\"margin-left:48px;text-indent:0\">ServerFactoryBean(<span style=\"font-family:宋体\">不需要使用</span>@webservice)&nbsp;&nbsp; <span style=\"font-family:宋体\">生成的文档不规范，不建议使用</span></p><p class=\"MsoListParagraph\" style=\"margin-left:48px;text-indent:0\"><span style=\"color:red\">JaxWsServerFactoryBean(</span><span style=\"font-family:宋体;color:red\">建议使用此类，需要使用</span><span style=\"color:red\">@webservice) </span><span style=\"font-family:宋体;color:red\">生成的文档不规范，可以发布</span><span style=\"color:red\">SOAP1.1</span><span style=\"font-family:宋体;color:red\">，</span><span style=\"color:red\">SOAP1.2</span><span style=\"font-family:宋体;color:red\">的协议，当</span><span style=\"color:red\">cxf</span><span style=\"font-family:宋体;color:red\">的服务类中没有方法时也可以发布成功，不报错。如果使用</span><span style=\"color:red\">SOAP1.2</span><span style=\"font-family:宋体;color:red\">需要用</span><span style=\"color:red\">@bindType</span><span style=\"font-family:宋体;color:red\">注解指定</span></p><p class=\"MsoListParagraph\" style=\"margin-left:48px;text-indent:0\"><span style=\"font-family:宋体;color:red\">当使用</span><span style=\"color:red\">SOAP1.2</span><span style=\"font-family:宋体;color:red\">时</span><span style=\"color:red\">wsimport</span><span style=\"font-family:宋体;color:red\">命令失效，需要使用</span><span style=\"color:red\">cxf</span><span style=\"font-family:宋体;color:red\">的</span><span style=\"color:red\">wsdl2java</span></p><p class=\"MsoListParagraph\" style=\"margin-left:48px;text-indent:0\"><span style=\"font-family:宋体\">建议：发布服务的时候使用</span>SOAP1.2<span style=\"font-family:宋体\">，客户端调用的时候使用</span>SOAP1.1<img src=\"http://img.baidu.com/hi/jx2/j_0015.gif\"/><img src=\"http://localhost:8080/ssm-demo02/upload/user/ueditor/image/20180831/1535711772295059282.jpg\" title=\"1535711772295059282.jpg\" alt=\"查看汇报.jpg\"/></p><p><br/></p><p><br/></p><p><br/></p>', 'b8aef6976a7b4ee79e6d346d93e6e4db.jpg', '2015-02-03 13:22:53');
INSERT INTO `items` VALUES ('2', '笔记本', '6000.0', '<p>笔记本性能好，质量好！！！！！</p>', 'f3454b7de0034888b915550c5d10ce9e.jpg', '2015-02-09 13:22:57');
INSERT INTO `items` VALUES ('3', '背包', '200.0', '<p>名牌背包，容量大质量好！！！！</p>', '59867ac38f674bb58e7e7a5c242c3d62.jpg', '2015-02-06 13:23:02');

-- ----------------------------
-- Table structure for `orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL COMMENT '订单id',
  `items_id` int(11) NOT NULL COMMENT '商品id',
  `items_num` int(11) DEFAULT NULL COMMENT '商品购买数量',
  PRIMARY KEY (`id`),
  KEY `FK_orderdetail_1` (`orders_id`),
  KEY `FK_orderdetail_2` (`items_id`),
  CONSTRAINT `FK_orderdetail_1` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orderdetail_2` FOREIGN KEY (`items_id`) REFERENCES `items` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------
INSERT INTO `orderdetail` VALUES ('1', '3', '1', '1');
INSERT INTO `orderdetail` VALUES ('2', '3', '2', '3');
INSERT INTO `orderdetail` VALUES ('3', '4', '3', '4');
INSERT INTO `orderdetail` VALUES ('4', '4', '2', '3');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '下单用户id',
  `number` varchar(32) NOT NULL COMMENT '订单号',
  `createtime` datetime NOT NULL COMMENT '创建订单时间',
  `note` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `FK_orders_1` (`user_id`),
  CONSTRAINT `FK_orders_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('3', '1', '1000010', '2015-02-04 13:22:35', null);
INSERT INTO `orders` VALUES ('4', '1', '1000011', '2015-02-03 13:22:41', null);
INSERT INTO `orders` VALUES ('5', '10', '1000012', '2015-02-12 16:13:23', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '用户名称',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '王五', null, '2', null);
INSERT INTO `user` VALUES ('10', '张三', '2014-07-10', '1', '北京市');
INSERT INTO `user` VALUES ('16', '张小明', null, '1', '河南郑州');
INSERT INTO `user` VALUES ('22', '陈小明', null, '1', '河南郑州');
INSERT INTO `user` VALUES ('24', '张三丰', null, '1', '河南郑州');
INSERT INTO `user` VALUES ('25', '陈小明', null, '1', '河南郑州');
INSERT INTO `user` VALUES ('26', '王五', null, null, null);
