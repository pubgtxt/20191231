/*
 Navicat Premium Data Transfer

 Source Server         : My_Mysql
 Source Server Type    : MySQL
 Source Server Version : 50525
 Source Host           : localhost:3306
 Source Schema         : jsptest2

 Target Server Type    : MySQL
 Target Server Version : 50525
 File Encoding         : 65001

 Date: 31/12/2019 11:42:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for books
-- ----------------------------
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `anthor` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `publish` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `publishdate` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `price` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `states` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ISBN` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of books
-- ----------------------------
INSERT INTO `books` VALUES (1, '《白话文》', '鲁迅', '人民日报', '2019-01-02', 26, '99', '1', '7-0194-1');
INSERT INTO `books` VALUES (2, '《散文》', '周树人', '人民日报', '2019年1月2日', 51, '123', '1', '7-0194-2');
INSERT INTO `books` VALUES (3, '《散文》', '周树人', '人民日报', '2019年1月2日', 31, '23', '0', '7-0194-3');
INSERT INTO `books` VALUES (4, '《散文》', '周树人', '人民日报', '2019年1月2日', 31, '24', '1', '7-0194-4');
INSERT INTO `books` VALUES (5, '《散文》', '周树人', '人民日报', '2019年1月2日', 31, '45', '1', '7-0194-5');
INSERT INTO `books` VALUES (6, '《散文》', '周树人', '人民日报', '2019年1月2日', 31, '56', '1', '7-0194-6');
INSERT INTO `books` VALUES (7, '《散文》', '周树人', '人民日报', '2019年1月2日', 31, '65', '1', '7-0194-7');
INSERT INTO `books` VALUES (8, '《散文》', '周树人', '人民日报', '2019年1月2日', 31, '24', '1', '7-0194-8');
INSERT INTO `books` VALUES (9, '《散文》', '周树人', '人民日报', '2019年1月2日', 31, '34', '1', '7-0194-9');
INSERT INTO `books` VALUES (10, '《散文》', '周树人', '人民日报', '2019年1月2日', 31, '56', '1', '7-0194-10');
INSERT INTO `books` VALUES (11, '《散文》', '周树人', '人民日报', '2019年1月2日', 30, '65', '1', '7-0194-11');
INSERT INTO `books` VALUES (12, ' 《水浒传》', '施耐庵', '四川日报', '2019-01-01', 60, '199', '1', '9527-001');
INSERT INTO `books` VALUES (13, ' 平凡的世界', '路遥', '清华出版社', '2019-01-08', 30, '155', '1', '9527-003');
INSERT INTO `books` VALUES (15, '《红楼梦》 ', '曹雪芹 ', '上海', '2019-12-21', 100, '199', '1', 'isbn9001');
INSERT INTO `books` VALUES (16, 'Xin Zhou', ' 231', '321', '2019-12-21', 23, '231', '1', 'isbn9001');

-- ----------------------------
-- Table structure for borrowbook
-- ----------------------------
DROP TABLE IF EXISTS `borrowbook`;
CREATE TABLE `borrowbook`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookid` int(11) NULL DEFAULT NULL,
  `bookname` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `userid` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `borrowtime` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `returntime` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `part` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ISBN` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `time` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of borrowbook
-- ----------------------------
INSERT INTO `borrowbook` VALUES (6, 1, '《白话文》', '4', '小明', '2019-12-09', '2019-12-09', '2', '7-0194-1', NULL);
INSERT INTO `borrowbook` VALUES (7, 11, '《散文》', '4', '小明', '2019-12-09', '2019-12-10', '2', '7-0194-11', NULL);
INSERT INTO `borrowbook` VALUES (8, 1, '《白话文》', '2', '胖鑫鑫', '2019-12-10', '2019-12-10', '2', '7-0194-1', NULL);
INSERT INTO `borrowbook` VALUES (12, 1, '《白话文》', '3', '鑫鑫胖', '2019-12-14', NULL, '0', '7-0194-1', NULL);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`  (
  `Id` int(11) NOT NULL,
  `Bookname` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `anthor` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `uname` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ordertime` varchar(125) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for outtalk
-- ----------------------------
DROP TABLE IF EXISTS `outtalk`;
CREATE TABLE `outtalk`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `title` varchar(125) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `words` varchar(225) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `time` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of outtalk
-- ----------------------------
INSERT INTO `outtalk` VALUES (1, '1', '1', '吃饭', '飞夺', '2019-01-12');
INSERT INTO `outtalk` VALUES (4, '1 ', '大胖鑫 ', '面向对象', '吃饭饭', '2019-12-14');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(2) NOT NULL,
  `hometown` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('20180002', '小红', '女', 24, '四川达州', 'D:\\图片\\1.png');
INSERT INTO `student` VALUES ('20180003', '佩奇', '女', 20, '四川成都', 'D:\\图片\\2.png');
INSERT INTO `student` VALUES ('20180004', '大黄', '男', 20, '云南大理', 'D:\\图片\\1.png');
INSERT INTO `student` VALUES ('20180005', '小青', '女', 19, '青城山', 'D:\\图片\\2.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `pwd` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `idcard` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `part` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0', '鑫鑫的老公', '0', '32', '0');
INSERT INTO `user` VALUES ('1', '大胖鑫', '1', '123', '0');
INSERT INTO `user` VALUES ('3', '鑫鑫胖', '3', '123', '1');
INSERT INTO `user` VALUES ('4', '胖师兄', '4', '1111', '0');
INSERT INTO `user` VALUES ('5', '鑫大鑫', '5', '1231321', '1');
INSERT INTO `user` VALUES ('6', '鑫鑫鑫', '6', '3121', '1');
INSERT INTO `user` VALUES ('7', '小鑫鑫', '7', '342', '1');

-- ----------------------------
-- Table structure for usermessage
-- ----------------------------
DROP TABLE IF EXISTS `usermessage`;
CREATE TABLE `usermessage`  (
  `id` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `age` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `sex` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `department` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `major` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of usermessage
-- ----------------------------
INSERT INTO `usermessage` VALUES ('', NULL, NULL, NULL, NULL);
INSERT INTO `usermessage` VALUES ('0', NULL, NULL, NULL, NULL);
INSERT INTO `usermessage` VALUES ('1', '16  ', '男    ', '计科 3242 5  ', '软件  1  ');
INSERT INTO `usermessage` VALUES ('19', NULL, NULL, NULL, NULL);
INSERT INTO `usermessage` VALUES ('23', NULL, NULL, NULL, NULL);
INSERT INTO `usermessage` VALUES ('3', '18  ', ' 女 ', ' 计算机 ', ' 软件 ');
INSERT INTO `usermessage` VALUES ('4', '23', '23', '32', '物理');
INSERT INTO `usermessage` VALUES ('5', '32', '男', '数学', '数学');
INSERT INTO `usermessage` VALUES ('6', '12', '女', '体育', '篮球');
INSERT INTO `usermessage` VALUES ('7', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for wantbook
-- ----------------------------
DROP TABLE IF EXISTS `wantbook`;
CREATE TABLE `wantbook`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `anthor` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `userid` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `time` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `part` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wantbook
-- ----------------------------
INSERT INTO `wantbook` VALUES (3, '《红楼梦》', '曹雪芹', '2', '胖鑫鑫', '2019-12-09', '0');
INSERT INTO `wantbook` VALUES (4, '一千零一夜', '安迪生', '2', '胖鑫鑫', '2019-12-10', '0');
INSERT INTO `wantbook` VALUES (5, ' 平凡的世界', '路遥', '2', '胖鑫鑫', '2019-12-11', '0');
INSERT INTO `wantbook` VALUES (6, '《水浒传》', '施耐庵', '2', '胖鑫鑫', '2019-12-12', '0');
INSERT INTO `wantbook` VALUES (7, 'lilili', 'English', '2', '胖鑫鑫', '2019-12-13', '0');
INSERT INTO `wantbook` VALUES (8, '李李李李', '你你你你你', '2', '胖鑫鑫', '2019-12-13', '0');
INSERT INTO `wantbook` VALUES (9, '《白蛇传》', '周鑫', '3', '鑫鑫胖', '2019-12-14', '0');
INSERT INTO `wantbook` VALUES (10, '《水浒传》', '施耐庵', '3', '鑫鑫胖', '2019-12-14', '0');

-- ----------------------------
-- Table structure for words
-- ----------------------------
DROP TABLE IF EXISTS `words`;
CREATE TABLE `words`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `username` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `words` varchar(225) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `time` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of words
-- ----------------------------
INSERT INTO `words` VALUES (1, '2', '胖鑫鑫 ', '我要吃肉', '2019-12-09');
INSERT INTO `words` VALUES (2, '2', '胖鑫鑫 ', '我是猪', '2019-12-09');
INSERT INTO `words` VALUES (3, '2', '胖鑫鑫 ', '我想吃肉', '2019-12-09');
INSERT INTO `words` VALUES (4, '2', '胖鑫鑫 ', 'wqeqwewq ', '2019-12-09');
INSERT INTO `words` VALUES (6, '3', '鑫鑫胖', '你好', '2019-12-10');
INSERT INTO `words` VALUES (7, '2', '胖鑫鑫 ', '放假啦', '2019-12-11');
INSERT INTO `words` VALUES (8, '2', '胖鑫鑫 ', '副科级撒谎复健科', '2019-12-12');
INSERT INTO `words` VALUES (9, '3', '鑫鑫胖 ', '臭弟弟', '2019-12-14');

SET FOREIGN_KEY_CHECKS = 1;
