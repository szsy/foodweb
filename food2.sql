/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50538
Source Host           : localhost:3306
Source Database       : food2

Target Server Type    : MYSQL
Target Server Version : 50538
File Encoding         : 65001

Date: 2017-06-07 15:49:24
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `t_customer`
-- ----------------------------
DROP TABLE IF EXISTS `t_customer`;
CREATE TABLE `t_customer` (
  `customerid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phonenumber` varchar(40) NOT NULL,
  `password` varchar(16) NOT NULL,
  `kind` int(4) DEFAULT '0',
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_customer
-- ----------------------------
INSERT INTO `t_customer` VALUES ('2', ' 仙女', '民大', '123', '123', null);
INSERT INTO `t_customer` VALUES ('3', ' 仙女', '民大', '123', '123', null);
INSERT INTO `t_customer` VALUES ('4', ' 仙女', '民大', '123', '123', null);
INSERT INTO `t_customer` VALUES ('5', 'gg', '88', '88', '66', null);
INSERT INTO `t_customer` VALUES ('6', ' 仙女', '44', '55', '33', null);
INSERT INTO `t_customer` VALUES ('7', ' 仙女', '44', '55', '33', null);
INSERT INTO `t_customer` VALUES ('8', ' 仙女', '44', '66', '11', null);
INSERT INTO `t_customer` VALUES ('9', ' 仙女', '44', '66', '11', null);
INSERT INTO `t_customer` VALUES ('10', ' 仙女', '44', '66', '11', null);
INSERT INTO `t_customer` VALUES ('11', ' 仙女', '44', '66', '11', null);
INSERT INTO `t_customer` VALUES ('12', ' 仙女', '44', '66', '11', null);
INSERT INTO `t_customer` VALUES ('13', 'hh', '民大', '12345', '123', null);
INSERT INTO `t_customer` VALUES ('14', 'shufwurg', '去工藤', '18888827530', 'sgg1017', null);
INSERT INTO `t_customer` VALUES ('15', 'sgg1017', 'sfrsg', '110', '123', null);

-- ----------------------------
-- Table structure for `t_food`
-- ----------------------------
DROP TABLE IF EXISTS `t_food`;
CREATE TABLE `t_food` (
  `foodid` int(11) NOT NULL AUTO_INCREMENT,
  `foodname` varchar(40) DEFAULT NULL,
  `unitprice` double DEFAULT NULL,
  `imagepath` varchar(40) DEFAULT NULL,
  `average_score` double DEFAULT NULL,
  `intro` varchar(40) DEFAULT NULL,
  `kind` varchar(4) DEFAULT NULL,
  `hot` int(4) DEFAULT '0',
  PRIMARY KEY (`foodid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_food
-- ----------------------------
INSERT INTO `t_food` VALUES ('1', '方便面', '10', '01.jpg', '9', '好吃，超好吃', '第二食堂', '1');
INSERT INTO `t_food` VALUES ('2', '麻辣鸡丝面', '12', '02.jpg', '9', '还行', '第二食堂', '1');
INSERT INTO `t_food` VALUES ('3', '大盘鸡', '6', '03.jpg', '10', '还不错', '第二食堂', '1');
INSERT INTO `t_food` VALUES ('4', '茶叶蛋', '1.5', '04.jpg', '8', '好吃', '第二食堂', '1');
INSERT INTO `t_food` VALUES ('5', '饺子', '4', '05.jpg', '10', '好吃', '第二食堂', '1');
INSERT INTO `t_food` VALUES ('6', '凉皮', '5', '06.jpg', '7', '美味', '第二食堂', '1');

-- ----------------------------
-- Table structure for `t_go`
-- ----------------------------
DROP TABLE IF EXISTS `t_go`;
CREATE TABLE `t_go` (
  `go_id` int(11) NOT NULL AUTO_INCREMENT,
  `foodname` varchar(50) DEFAULT NULL,
  `customername` varchar(50) DEFAULT NULL,
  `go_cus_total` varchar(30) DEFAULT NULL,
  `go_time` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`go_id`),
  KEY `FK362C938FBFE83A` (`go_id`),
  KEY `FK362C9367FE46BA` (`go_id`),
  KEY `FK362C933DFF861` (`customername`),
  KEY `FK362C9386406AC6` (`customername`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of t_go
-- ----------------------------
INSERT INTO `t_go` VALUES ('40', 'fr', 'shufwurg', '2', '2017-06-06 22:50:27');
INSERT INTO `t_go` VALUES ('41', '424', 'shufwurg', '4', '2017-06-06 23:09:12');
INSERT INTO `t_go` VALUES ('42', 'shfus', 'shufwurg', '7', '2017-06-06 23:09:12');
INSERT INTO `t_go` VALUES ('43', '凉皮', 'shufwurg', '5', '2017-06-06 23:18:43');
INSERT INTO `t_go` VALUES ('44', '大盘鸡', 'shufwurg', '4', '2017-06-06 23:21:51');
INSERT INTO `t_go` VALUES ('45', '方便面', 'shufwurg', '5', '2017-06-06 23:21:51');
INSERT INTO `t_go` VALUES ('46', '方便面', 'shufwurg', '4', '2017-06-06 23:22:57');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `orderid` int(30) NOT NULL AUTO_INCREMENT,
  `food` int(11) DEFAULT NULL,
  `foodnum` int(2) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `comment_statue` int(2) DEFAULT '0',
  `comment` varchar(3) DEFAULT '好评',
  `content` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `FKA0C0C3C38A1098C6` (`food`),
  KEY `FKA0C0C3C386406AC6` (`customer`),
  CONSTRAINT `FKA0C0C3C386406AC6` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerid`),
  CONSTRAINT `FKA0C0C3C38A1098C6` FOREIGN KEY (`food`) REFERENCES `t_food` (`foodid`),
  CONSTRAINT `t_order_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `t_customer` (`customerid`) ON UPDATE CASCADE,
  CONSTRAINT `t_order_ibfk_2` FOREIGN KEY (`food`) REFERENCES `t_food` (`foodid`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1', '1', '1', '2', '10', null, '0', '好', '好');
INSERT INTO `t_order` VALUES ('2', '1', '1', '2', '10', null, null, null, null);
INSERT INTO `t_order` VALUES ('3', '2', '1', '2', '12', null, null, null, null);
INSERT INTO `t_order` VALUES ('4', '2', '1', '13', '12', null, null, null, null);
INSERT INTO `t_order` VALUES ('5', '4', '1', '2', '1.5', null, null, null, null);
INSERT INTO `t_order` VALUES ('7', '4', '1', '13', '1.5', null, null, null, null);
INSERT INTO `t_order` VALUES ('8', '5', '1', '13', '4', null, null, null, null);
INSERT INTO `t_order` VALUES ('10', '1', '1', '13', '10', null, null, null, null);
INSERT INTO `t_order` VALUES ('12', '1', '1', '2', '10', null, null, null, null);
INSERT INTO `t_order` VALUES ('14', '1', '1', '13', '10', null, null, null, null);
INSERT INTO `t_order` VALUES ('15', '1', '1', '13', '10', null, null, null, null);
INSERT INTO `t_order` VALUES ('17', '1', '1', '13', '10', null, null, null, null);
INSERT INTO `t_order` VALUES ('20', '1', '1', '13', '10', null, null, null, null);
INSERT INTO `t_order` VALUES ('21', null, '1', null, null, null, null, '', '');
INSERT INTO `t_order` VALUES ('22', '6', '1', '14', '5', null, null, null, null);
INSERT INTO `t_order` VALUES ('23', '2', '1', '14', '12', null, null, null, null);
INSERT INTO `t_order` VALUES ('28', '2', '1', '14', '1', null, null, null, null);
INSERT INTO `t_order` VALUES ('29', '3', '1', '14', '6', null, null, null, null);
INSERT INTO `t_order` VALUES ('30', '1', '1', '14', '10', null, null, null, null);
INSERT INTO `t_order` VALUES ('31', '3', '1', '14', '6', null, null, null, null);
INSERT INTO `t_order` VALUES ('32', '1', '1', '15', '10', null, null, null, null);
INSERT INTO `t_order` VALUES ('33', '1', '1', '14', '10', null, null, null, null);
