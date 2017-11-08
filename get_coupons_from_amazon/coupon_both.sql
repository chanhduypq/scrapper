/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-11-08 16:21:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for coupon_both
-- ----------------------------
DROP TABLE IF EXISTS `coupon_both`;
CREATE TABLE `coupon_both` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title_groupon` varchar(1000) DEFAULT NULL,
  `title_retailmenot` varchar(1000) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `expire` timestamp NULL DEFAULT NULL,
  `used_today` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;
