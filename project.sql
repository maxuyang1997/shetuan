/*
Navicat MySQL Data Transfer

Source Server         : nibiru
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2018-12-06 17:47:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `activity`
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `activity_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `activity_code` int(20) DEFAULT NULL,
  `activity_name` varchar(20) DEFAULT NULL,
  `activity_community` varchar(50) DEFAULT NULL,
  `activity_theme` varchar(20) DEFAULT NULL,
  `activitydate` datetime DEFAULT NULL,
  `verify` varchar(10) DEFAULT NULL,
  `principal` varchar(20) DEFAULT NULL,
  `hkcss_inspection` varchar(20) DEFAULT NULL,
  `unit` varchar(11) DEFAULT NULL,
  `activity_content` varchar(500) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', '1', '活动名2', '社区', '主题', '2018-12-06 16:44:53', null, '负责人', '社联监查人', '承办单位', '活动内容', '备注');
INSERT INTO `activity` VALUES ('2', '0', '活动名称 1', '社团名称', '活动主题     ', '2018-12-06 00:00:00', null, '负责人    ', '监查人   ', '承办单位   ', '活动内容      ', '备注 ');

-- ----------------------------
-- Table structure for `community`
-- ----------------------------
DROP TABLE IF EXISTS `community`;
CREATE TABLE `community` (
  `community_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `community_name` varchar(20) DEFAULT NULL,
  `community_code` varchar(50) DEFAULT NULL,
  `principal` varchar(20) DEFAULT NULL,
  `founddate` datetime DEFAULT NULL,
  `quale` varchar(10) DEFAULT NULL,
  `intro` varchar(20) DEFAULT NULL,
  `money` varchar(20) DEFAULT NULL,
  `unit` varchar(11) DEFAULT NULL,
  `community_money` varchar(500) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `user_account` varchar(10) DEFAULT NULL,
  `founder` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of community
-- ----------------------------
INSERT INTO `community` VALUES ('1', '社团名称', '社团特征码', '负责人', '2018-12-06 16:49:48', '社团性质', '社团简介', '社团收费', '单位', '社团费', '备注', '状态', 'xin', '创始人');
INSERT INTO `community` VALUES ('2', '社团名称', '20181206173232', 'xin', '2018-12-06 00:00:00', null, '简介', null, '合作单位', '200', '撒旦法', '通过', 'xin', 'xin');
INSERT INTO `community` VALUES ('3', '社团名称3', '20181206174258', 'xin', '2018-12-06 00:00:00', null, '简介2', null, '合作单位1', '200', '带我去', '待审核', 'xin', 'xin');

-- ----------------------------
-- Table structure for `duty`
-- ----------------------------
DROP TABLE IF EXISTS `duty`;
CREATE TABLE `duty` (
  `duty_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `duty_name` varchar(20) DEFAULT NULL,
  `duty_other` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`duty_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of duty
-- ----------------------------
INSERT INTO `duty` VALUES ('1', '职责名字', '其他');

-- ----------------------------
-- Table structure for `funds`
-- ----------------------------
DROP TABLE IF EXISTS `funds`;
CREATE TABLE `funds` (
  `funds_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `funds_community` varchar(20) DEFAULT NULL,
  `surplus_money` varchar(50) DEFAULT NULL,
  `funds_money` varchar(20) DEFAULT NULL,
  `funds_date` datetime DEFAULT NULL,
  `funds_reason` varchar(10) DEFAULT NULL,
  `funds_people` varchar(20) DEFAULT NULL,
  `examine_program` varchar(20) DEFAULT NULL,
  `examine_people` varchar(11) DEFAULT NULL,
  `examine_date` varchar(500) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `examine_note` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`funds_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of funds
-- ----------------------------
INSERT INTO `funds` VALUES ('1', '申请社团', '尚有金额', '申请金额', '2018-12-06 16:52:49', '申请理由', '申请人', '审批状态', '审批人', '审批日期', '备注', '审批备注');
INSERT INTO `funds` VALUES ('2', '社团名称3', '200', '500', '2018-12-06 00:00:00', '6666申请理由', '新', '待审批', null, null, '备注             ', null);

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `member_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member_code` varchar(20) DEFAULT NULL,
  `member_community` varchar(50) DEFAULT NULL,
  `member_duty` varchar(20) DEFAULT NULL,
  `joindate` datetime DEFAULT NULL,
  `member_name` varchar(10) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `classes` varchar(20) DEFAULT NULL,
  `department` varchar(11) DEFAULT NULL,
  `dormitory` varchar(500) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `tel` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('1', '1', '所在社团名称', '所在社团担任的职务', '2018-12-06 16:55:44', '会员名称', '性别', '班级', '院系', '寝室', '备注', '电话');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_account` varchar(20) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_joindate` datetime DEFAULT NULL,
  `user_gender` varchar(10) DEFAULT NULL,
  `user_describe` varchar(20) DEFAULT NULL,
  `user_question` varchar(20) DEFAULT NULL,
  `user_result` varchar(11) DEFAULT NULL,
  `user_other` varchar(500) DEFAULT NULL,
  `duty_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'xin', '123123', 'xin', '2018-12-06 16:34:32', 'fasd', 'afsd', 'fasd', 'fasd', '3', '1');
