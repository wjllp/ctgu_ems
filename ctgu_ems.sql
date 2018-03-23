/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : ctgu_ems

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2018-01-12 00:28:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `classes`
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `classid` varchar(15) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `tname` varchar(15) NOT NULL,
  `college` varchar(20) NOT NULL,
  `classroom` varchar(15) NOT NULL,
  `sweek` int(11) NOT NULL,
  `eweek` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `confine` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`classid`),
  KEY `cname` (`cname`),
  KEY `tname` (`tname`),
  CONSTRAINT `cname` FOREIGN KEY (`cname`) REFERENCES `course` (`cname`),
  CONSTRAINT `tname` FOREIGN KEY (`tname`) REFERENCES `teacher` (`tname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classes
-- ----------------------------
INSERT INTO `classes` VALUES ('056', 'Matlab基础', '张小华', '所有学院', 'J-2216', '2', '15', '19', '30', '1');
INSERT INTO `classes` VALUES ('063', '品读史记', '韩芳', '所有学院', 'W-2236', '1', '14', '16', '30', '1');
INSERT INTO `classes` VALUES ('203', '高等数学I（二）', '覃太贵', '理学院', 'J-3324', '1', '16', '1631', '60', '0');
INSERT INTO `classes` VALUES ('212', '线性代数I', '张钦', '计算机科学与技术', 'J-3414', '1', '16', '1424', '60', '0');
INSERT INTO `classes` VALUES ('215', '高等数学I（二）', '范倚涵', '计算机与信息学院', 'J-3316', '1', '16', '1126', '60', '60');
INSERT INTO `classes` VALUES ('216', '高等数学I（二）', '王卫东', '计算机与信息学院', 'L-2210', '1', '16', '1126', '60', '0');
INSERT INTO `classes` VALUES ('326', '游戏引擎基础', '王安慧', '计算机科学与技术', 'B3-419', '1', '16', '1014', '40', '0');
INSERT INTO `classes` VALUES ('342', '操作系统II', '张莉莉', '计算机科学与技术', 'J-3416', '1', '17', '1528', '80', '0');
INSERT INTO `classes` VALUES ('345', '操作系统I', '李昭', '物联网', 'J-3316', '1', '17', '2129', '80', '0');
INSERT INTO `classes` VALUES ('356', '计算机图形学II', '黄志勇', '计算机科学与技术', 'B3-419', '7', '16', '1421', '60', '0');
INSERT INTO `classes` VALUES ('368', '微型计算机技术II', '覃颖', '计算机科学与技术', 'J-3528', '1', '17', '1220', '80', '1');

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(20) NOT NULL,
  `classid` varchar(15) NOT NULL,
  `status` int(20) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `tname` varchar(20) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '2015112161', '056', '1', 'Matlab基础', '张小华');
INSERT INTO `comment` VALUES ('2', '2015112161', '063', '0', '品读史记', '韩芳');
INSERT INTO `comment` VALUES ('3', '2015112161', '368', '0', '微型计算机技术II', '覃颖');

-- ----------------------------
-- Table structure for `commented`
-- ----------------------------
DROP TABLE IF EXISTS `commented`;
CREATE TABLE `commented` (
  `commented_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `tip_1` smallint(6) NOT NULL,
  `tip_2` smallint(6) NOT NULL,
  `tip_3` smallint(6) NOT NULL,
  `tip_4` smallint(6) NOT NULL,
  `tip_5` smallint(6) NOT NULL,
  `teach_good` text NOT NULL,
  `need_change` text NOT NULL,
  `suit_teach` smallint(6) NOT NULL,
  PRIMARY KEY (`commented_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commented
-- ----------------------------
INSERT INTO `commented` VALUES ('1', '1', '5', '5', '5', '5', '5', '', '', '1');

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cid` varchar(20) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `profession` varchar(20) NOT NULL,
  `learn` varchar(10) NOT NULL,
  `grade` varchar(10) NOT NULL,
  `term` varchar(10) NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `cname` (`cname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('E85JFJ', '管理经济学', '工商管理', '是', '大二学年', '秋季学期');
INSERT INTO `course` VALUES ('G74FI', 'Matlab基础', '公共类', '否', '整个学年', '整个学期');
INSERT INTO `course` VALUES ('H44YU', '高等数学I（一）', '理工类', '是', '大一学年', '秋季学期');
INSERT INTO `course` VALUES ('H45JF', '概率论与数理统计II', '物联网', '是', '大二学年', '秋季学期');
INSERT INTO `course` VALUES ('H45YU', '高等数学I（二）', '理工类', '是', '大一学年', '春季学期');
INSERT INTO `course` VALUES ('H74JF', '概率论与数理统计I', '计算机科学与技术', '是', '大一学年', '春季学期');
INSERT INTO `course` VALUES ('I94OF', '品读史记', '公共类', '否', '整个学年', '整个学期');
INSERT INTO `course` VALUES ('O87YU', '外科学', '医学类', '是', '大二学年', '秋季学期');
INSERT INTO `course` VALUES ('R98IF', '线性代数I', '计算机科学与技术', '是', '大一学年', '秋季学期');
INSERT INTO `course` VALUES ('T04IF', 'C语言程序设计（非计算机）', '理工类', '是', '大一学年', '春季学期');
INSERT INTO `course` VALUES ('T09HU', '计算机图形学II', '计算机科学与技术', '否', '大三学年', '秋季学期');
INSERT INTO `course` VALUES ('T10HG', '游戏引擎基础', '计算机科学与技术', '否', '大三学年', '春季学期');
INSERT INTO `course` VALUES ('T39GD', '高等数学III', '经管类', '是', '大一学年', '秋季学期');
INSERT INTO `course` VALUES ('T77IW', '形式与政策（三）', '理工类', '是', '大三学年', '春季学期');
INSERT INTO `course` VALUES ('T93OF', 'C语言程序设计', '计算机科学与技术', '是', '大一学年', '秋季学期');
INSERT INTO `course` VALUES ('U85ID', '形式与政策（二）', '理工类', '是', '大二学年', '春季学期');
INSERT INTO `course` VALUES ('V05IF', '大学英语四级读写', '理工类', '是', '大二学年', '春季学期');
INSERT INTO `course` VALUES ('V09ER', '大学英语四级听说', '理工类', '是', '大二学年', '春季学期');
INSERT INTO `course` VALUES ('V31PS', '大学英语二级读写', '理工类', '是', '大一学年', '春季学期');
INSERT INTO `course` VALUES ('V38IF', '大学英语一级听说', '理工类', '是', '大一学年', '秋季学期');
INSERT INTO `course` VALUES ('V76UR', '大学英语一级读写', '理工类', '是', '大一学年', '秋季学期');
INSERT INTO `course` VALUES ('V84HF', '大学英语三级听说', '理工类', '是', '大二学年', '秋季学期');
INSERT INTO `course` VALUES ('V85HG', '大学英语三级读写', '理工类', '是', '大二学年', '秋季学期');
INSERT INTO `course` VALUES ('V86DJ', '大学英语二级听说', '理工类', '是', '大一学年', '春季学期');
INSERT INTO `course` VALUES ('Y34IO', '综合系统开发', '计算机科学与技术', '是', '大三学年', '春季学期');
INSERT INTO `course` VALUES ('Y34YF', '操作系统I', '物联网', '是', '大二学年', '春季学期');
INSERT INTO `course` VALUES ('Y38UT', '微型计算机技术II', '计算机科学与技术', '是', '大三学年', '春季学期');
INSERT INTO `course` VALUES ('Y57IB ', '操作系统II', '计算机科学与技术', '是', '大三学年', '秋季学期');
INSERT INTO `course` VALUES ('Y66UF', 'Java程序设计I', '计算机科学与技术', '是', '大二学年', '秋季学期');
INSERT INTO `course` VALUES ('Y66UH', 'Java程序设计II', '物联网', '是', '大二学年', '秋季学期');
INSERT INTO `course` VALUES ('Y94HF', '形式与政策（一）', '理工类', '是', '大一学年', '春季学期');

-- ----------------------------
-- Table structure for `enroll`
-- ----------------------------
DROP TABLE IF EXISTS `enroll`;
CREATE TABLE `enroll` (
  `enroll_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `identify` varchar(18) NOT NULL,
  PRIMARY KEY (`enroll_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of enroll
-- ----------------------------
INSERT INTO `enroll` VALUES ('2', '1', '黄博文', '45646414');
INSERT INTO `enroll` VALUES ('4', '1', '深刻的飞机', '5222+2+');
INSERT INTO `enroll` VALUES ('5', '1', '大师傅撒', '546545');
INSERT INTO `enroll` VALUES ('6', '1', '黄博文', '522144');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `scoreid` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(4) NOT NULL,
  `term` varchar(19) NOT NULL,
  `sid` varchar(20) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `score` int(11) NOT NULL,
  `credit` varchar(255) NOT NULL,
  PRIMARY KEY (`scoreid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('1', '2015', '春季学期', '2015112161', '高等数学I', '59', '5.5');
INSERT INTO `score` VALUES ('2', '2015', '春季学期', '2015112161', 'Matlab基础', '88', '2');
INSERT INTO `score` VALUES ('3', '2015', '春季学期', '2015112161', '品读史记', '95', '1.5');

-- ----------------------------
-- Table structure for `selectcourse`
-- ----------------------------
DROP TABLE IF EXISTS `selectcourse`;
CREATE TABLE `selectcourse` (
  `sid` varchar(20) NOT NULL,
  `classid` varchar(20) NOT NULL,
  `time` int(11) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `cname` varchar(20) NOT NULL,
  `sweek` int(11) NOT NULL,
  `eweek` int(11) NOT NULL,
  `classroom` varchar(20) NOT NULL,
  PRIMARY KEY (`classid`,`sid`),
  KEY `sid` (`sid`),
  CONSTRAINT `classid` FOREIGN KEY (`classid`) REFERENCES `classes` (`classid`),
  CONSTRAINT `sid` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selectcourse
-- ----------------------------
INSERT INTO `selectcourse` VALUES ('2015112161', '056', '19', '张小华', 'Matlab基础', '2', '15', 'J-2216');
INSERT INTO `selectcourse` VALUES ('2015112161', '063', '16', '韩芳', '品读史记', '1', '14', 'W-2236');
INSERT INTO `selectcourse` VALUES ('2015112161', '368', '1220', '覃颖', '微型计算机技术II', '1', '17', 'J-3528');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` varchar(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `sgender` varchar(5) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `college` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('2015112161', '黄博文', '男', '2015', '理工类', '计算机科学与技术', '计算机与信息学院', '123456');
INSERT INTO `student` VALUES ('2015231427', '张三', '男', '2015', '医学类', '临床医学', '医学院', '123456');
INSERT INTO `student` VALUES ('2016101230', '张晋恺', '男', '2016', '理工类', '电气工程及其自动化', '水利与环境学院', '123456');
INSERT INTO `student` VALUES ('2016112135', '张骞', '男', '2016', '理工类', '计算机科学与技术', '计算机与信息学院', '123456');
INSERT INTO `student` VALUES ('2016142322', '李四', '男', '2016', '经管类', '工商管理', '经济与管理学院', '123456');
INSERT INTO `student` VALUES ('2017112163', '王五', '男', '2017', '理工类', '物联网', '计算机与信息学院', '123456');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tid` varchar(15) NOT NULL,
  `tname` varchar(20) NOT NULL,
  `ttender` varchar(5) NOT NULL,
  `college` varchar(20) NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `tname` (`tname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('N3587', '张小华', '男', '理学院');
INSERT INTO `teacher` VALUES ('N3843', '覃太贵', '男', '理学院');
INSERT INTO `teacher` VALUES ('N3894', '范倚涵', '女', '理学院');
INSERT INTO `teacher` VALUES ('N3934', '王卫东', '男', '理学院');
INSERT INTO `teacher` VALUES ('N9455', '张钦', '男', '理学院');
INSERT INTO `teacher` VALUES ('Y4878', '李昭', '男', '计算机与信息学院');
INSERT INTO `teacher` VALUES ('Y8394', '徐义春', '男', '计算机与信息学院');
INSERT INTO `teacher` VALUES ('Y8469', '张莉莉', '女', '计算机与信息学院');
INSERT INTO `teacher` VALUES ('Y8533', '黄志勇', '男', '计算机与信息学院');
INSERT INTO `teacher` VALUES ('Y8594', '覃颖', '男', '计算机与信息学院');
INSERT INTO `teacher` VALUES ('Y8890', '王安慧', '男', '计算机与信息学院');
INSERT INTO `teacher` VALUES ('Y9584', '韩芳', '女', '计算机与信息学院');
DROP TRIGGER IF EXISTS `select_course`;
DELIMITER ;;
CREATE TRIGGER `select_course` AFTER INSERT ON `selectcourse` FOR EACH ROW BEGIN
update classes set number=number+1 where classid=new.classid;
insert comment(sid,classid,status,cname,tname) values(new.sid,new.classid,"0",new.cname,new.tname);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `cancel_course`;
DELIMITER ;;
CREATE TRIGGER `cancel_course` AFTER DELETE ON `selectcourse` FOR EACH ROW Begin
update classes set number=number-1 where classid=old.classid;
delete from comment where classid=old.classid;
END
;;
DELIMITER ;
