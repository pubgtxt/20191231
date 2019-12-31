/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : jsptest2

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-05-20 00:01:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` int(2) NOT NULL,
  `hometown` varchar(30) NOT NULL,
  `pic` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('20180002', '小红', '女', '19', '四川成都', '0');
INSERT INTO `student` VALUES ('20180003', '佩奇', '女', '20', '四川成都', '0');
INSERT INTO `student` VALUES ('20180004', '大黄', '男', '20', '云南大理', '0');
INSERT INTO `student` VALUES ('20180005', '小青', '女', '19', '青城山', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '小明', '123456');
